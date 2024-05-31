<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Buku_model extends CI_Model {

	public function getAllBuku(){
		return $this->db->get_where('collections')->result_array();
	}
 
	public function getBuku($limit, $start, $keyword = null){

		if ($keyword){
			$this->db->like('Title', $keyword);
			$this->db->or_like('Author', $keyword);
			$this->db->or_like('Publisher', $keyword);
		}
		$this->db->order_by('Title', 'RANDOM');
		return $this->db->get('collections', $limit, $start, $keyword)->result_array();
	}

	public function countAllBuku(){
		return $this->db->get('collections')->num_rows();
	}

	public function getBukuById($ID){
		return $this->db->get_where('collections', ['ID' => $ID])->row_array();
	}

	public function rekomendasiBuku($limit){
		$this->db->order_by('Title', 'RANDOM');
		return $this->db->get('collections', $limit)->result_array();
	}
}
 