<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile_model extends CI_Model {
	public function getKec(){
		//INI GAGUNA
		$this->db->get_where('kecamatan', ['id' => $this->session->userdata('kecamatan')])->row_array();
	}
}