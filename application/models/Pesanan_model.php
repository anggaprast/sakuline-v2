<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pesanan_model extends CI_Model {
	public function getKartu($limit, $start, $keyword_kartu = null){
		if ($keyword_kartu){
			$this->db->like('nama', $keyword_kartu);
		}
		$this->db->order_by('date_created', 'DESC');
		return $this->db->get('pesan_kartu', $limit, $start, $keyword_kartu)->result_array();
	}

/*		$queryKartu = "SELECT `pesan_kartu`.*, `kecamatan`.`nama_kec`
				  	   FROM `pesan_kartu` JOIN `kecamatan`
				  	   ON `pesan_kartu`.`kecamatan` = `kecamatan`.`id`
				  	   ORDER BY `pesan_kartu`.`date_created` DESC
				 	  ";
		return $this->db->query($queryKartu)->result_array();
	}
 */
	public function getKartuTerbaru(){
		$query = "SELECT `pesan_kartu`.*, `kecamatan`.`nama_kec`
				  FROM `pesan_kartu` JOIN `kecamatan`
				  ON `pesan_kartu`.`kecamatan` = `kecamatan`.`id`
				  WHERE `pesan_kartu`.`status` = 'waiting'
				  ORDER BY `pesan_kartu`.`date_created` DESC
				  LIMIT 2
				  ";
		return $this->db->query($query)->result_array();
	}

	public function kartuThisMonth(){
		$this->load->helper('date');
		
		$query = "SELECT CONCAT(YEAR(`date_created`),'/',MONTH(`date_created`)) AS bulanke, COUNT(*) AS jumlah
				  FROM `pesan_kartu`
				  WHERE CONCAT(YEAR(`date_created`),'/',MONTH(`date_created`))=CONCAT(YEAR(NOW()),'/',MONTH(NOW()))
				  GROUP BY YEAR(`date_created`),MONTH(`date_created`)
				 ";
		return $this->db->query($query)->result_array();	
	}

	public function getPesanBukuTerbaru(){
		$query = "SELECT *
				  FROM `pesan_buku`
				  WHERE `pesan_buku`.`status` = 'waiting'
				  ORDER BY `tanggal_pesan` DESC
				  LIMIT 1
				  ";
		return $this->db->query($query)->result_array();
	}

	public function getCancelPesanTerbaru(){
		$query = "SELECT *
				  FROM `history_pesanbuku`
				  WHERE `history_pesanbuku`.`status` = 'canceled'
				  ORDER BY `id` DESC
				  LIMIT 1
				  ";
		return $this->db->query($query)->result_array();
	}

	public function bukuThisMonth(){
		$this->load->helper('date');
		
		$query = "SELECT CONCAT(YEAR(`tanggal_pesan`),'/',MONTH(`tanggal_pesan`)) AS bulanke, COUNT(*) AS jumlah
				  FROM `pesan_buku`
				  WHERE CONCAT(YEAR(`tanggal_pesan`),'/',MONTH(`tanggal_pesan`))=CONCAT(YEAR(NOW()),'/',MONTH(NOW()))
				  GROUP BY YEAR(`tanggal_pesan`),MONTH(`tanggal_pesan`)
				 ";
		return $this->db->query($query)->result_array();	
	}

	public function getBuku($limit, $start, $psbuku_keyword = null){
		$status = "waiting";
		if ($psbuku_keyword){
			$this->db->like('nama', $psbuku_keyword);
			$this->db->or_like('judul', $psbuku_keyword);
			$this->db->or_like('id_anggota', $psbuku_keyword);
			$this->db->where('status',$status);
		}
		$this->db->where('status',$status);
		// $this->db->or_where('status',!$rejected);
		return $this->db->get('pesan_buku', $limit, $start, $psbuku_keyword)->result_array();
	}

	public function getHistoryBuku($limit, $start, $psbuku_keyword = null){
		if ($psbuku_keyword){
			$this->db->like('nama', $psbuku_keyword);
			$this->db->or_like('judul', $psbuku_keyword);
			$this->db->or_like('id_anggota', $psbuku_keyword);
		}
		/*$accepted = "accepted";
		$rejected = "rejected";
		$this->db->where('status', $accepted);
		$this->db->or_where('status', $rejected);*/
		return $this->db->get('history_pesanbuku',$limit, $start, $psbuku_keyword)->result_array();
	}

	public function printHistoryBuku(){
		return $this->db->get('history_pesanbuku')->result_array();
	}

	public function deletePesanById($id){
		$this->db->where('id', $id);
		$this->db->delete('pesan_buku');
	}

	public function deletePesanKartuById($id){
		$this->db->where('id', $id);
		$this->db->delete('pesan_kartu');
	}

	public function getPesanById($id){
		return $this->db->get_where('pesan_buku', ['id' => $id])->row_array();
	}

	public function getPesanKartuById($id){
		return $this->db->get_where('pesan_kartu', ['id' => $id])->result_array();
	}

}