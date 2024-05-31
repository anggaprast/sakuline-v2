<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Chart_model extends CI_Model {
	public function getUser(){
		
		$query = "SELECT b.nama_kec as nama_kecamatan, count(a.kecamatan) as jumlah from user as a
				  left join as b on b.id=a.kecamatan GROUP BY a.kecamatan ORDER BY nama_kecamatan ASC"

		return $this->db->query($query)->result_array();
	}
}