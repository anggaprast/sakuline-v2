<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Statistik_model extends CI_Model {
	public function jumlahUser(){
		$query = "SELECT `user`.`kecamatan`, `kecamatan`.`nama_kec`,
				  COUNT(`kecamatan`) AS `jml_user`
				  FROM `user` JOIN `kecamatan`
				  ON `user`.`kecamatan` = `kecamatan`.`id`
				  GROUP BY `kecamatan`
				";
		return $this->db->query($query)->result_array();
	}

	public function userThisMonth(){
		$this->load->helper('date');
		
		$query = "SELECT CONCAT(YEAR(`date_created`),'/',MONTH(`date_created`)) AS bulanke, COUNT(*) AS jumlah
				  FROM `user`
				  WHERE CONCAT(YEAR(`date_created`),'/',MONTH(`date_created`))=CONCAT(YEAR(NOW()),'/',MONTH(NOW()))
				  GROUP BY YEAR(`date_created`),MONTH(`date_created`)
				 ";
		return $this->db->query($query)->result_array();	
	}

	public function getChartUser(){
		$query = "SELECT b.nama_kec as nama_kecamatan, count(a.kecamatan) as jumlah from user as a
				  left join kecamatan as b on b.id=a.kecamatan GROUP BY a.kecamatan ORDER BY nama_kecamatan ASC";

		return $this->db->query($query)->result_array();
	}

	public function getStatusStat(){
		$query = "SELECT status, COUNT(status) AS jumlah FROM history_pesanbuku GROUP BY status";

		return $this->db->query($query)->result_array();
	}

	public function getGrafikPesanan(){
		$query = "SELECT CONCAT(MONTHNAME(`tanggal_pesan`),'/',YEAR(`tanggal_pesan`)) AS bulanke, COUNT(*) AS jumlah
				  FROM `pesan_buku`
				  GROUP BY YEAR(`tanggal_pesan`),MONTH(`tanggal_pesan`)
				  ";

		return $this->db->query($query)->result_array();
	}
}