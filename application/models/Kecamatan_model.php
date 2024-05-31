<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kecamatan_model extends CI_Model {

	function getKecamatan(){
		$query = $this->db->query("SELECT * FROM kecamatan
								   WHERE `id_kab` = 1
									ORDER BY id ASC
									");
		return $query->result();
	}

	public function Kecamatan(){
		return $this->db->get('kecamatan')->result_array();
	}
}