<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kabupaten_model extends CI_Model {

	function getKabupaten(){
		$query = $this->db->query("SELECT * FROM kabupaten
									ORDER BY id ASC
									");
		return $query->result();
	}

	public function Kabupaten(){
		return $this->db->get('kabupaten')->result_array();
	}
}