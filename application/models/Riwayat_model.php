<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Riwayat_model extends CI_Model {
	public function getRiwayat(){
		$this->db->where('status', "waiting");
		$this->db->where('email', $this->session->userdata('email'));
		$this->db->order_by('pesan_buku.tanggal_pesan', 'DESC');
		return $this->db->get('pesan_buku')->result_array();
	}

	public function getRiwayatTerbaru(){
		$user = $this->session->userdata('email');
		$query = "SELECT `history_pesanbuku`.*
				  FROM `history_pesanbuku`
				  WHERE `history_pesanbuku`.`email` = '$user'
				  ORDER BY `history_pesanbuku`.`tanggal_action` DESC
				  LIMIT 1
				  ";
		return $this->db->query($query)->result_array();
	}

	public function getInfoRiwayat($limit, $start){
		$email = $this->session->userdata('email');
		$this->db->order_by('history_pesanbuku.tanggal_action', 'DESC');
		$this->db->where('email', $email);
		return $this->db->get('history_pesanbuku', $limit, $start)->result_array();
	}


	public function cancelRiwayatById($id){
		$this->db->where('id', $id);
		$this->db->delete('pesan_buku');
	}

	public function getNewPinjaman(){
		$user = $this->session->userdata('username');
		$query = "SELECT *
				  FROM `pesan_buku`
				  WHERE `pesan_buku`.`nama` = '$user'
				  ORDER BY `pesan_buku`.`tanggal_pesan` DESC
				  LIMIT 1
				  ";
		return $this->db->query($query)->result_array();
	}

	public function getStatusDiterima(){
		$email = $this->session->userdata('email');
		$status = 'accepted';
		$this->db->where('status', $status);
		$this->db->where('email', $email);
		return $this->db->get('history_pesanbuku')->num_rows();
	}

	public function getStatusDitolak(){
		$email = $this->session->userdata('email');
		$status = 'rejected';
		$this->db->where('status', $status);
		$this->db->where('email', $email);
		return $this->db->get('history_pesanbuku')->num_rows();
	}
}