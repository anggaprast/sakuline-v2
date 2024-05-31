<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Wilayah_model extends CI_Model {
	public function getDataKab(){
		return $this->db->get('kabupaten')->result_array();
	}

	public function getDataKec($idkab){
		return $this->db->get_where('kecamatan',['id_kab'=>$idkab])->result();
	}
}