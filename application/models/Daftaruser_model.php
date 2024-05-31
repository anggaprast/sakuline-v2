<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Daftaruser_model extends CI_Model {
	public function getUser($limit, $start, $user_keyword = NULL){
		if ($user_keyword){
			$this->db->like('username', $user_keyword);
			$this->db->or_like('email', $user_keyword);
			$this->db->or_like('id_anggota', $user_keyword);
		}
		$this->db->order_by('date_created', 'DESC');
		return $this->db->get('user', $limit, $start, $user_keyword)->result_array();
	}

	public function getUserById($id){
		return $this->db->get_where('user', ['id' => $id])->row_array();
	}

	public function deleteUserById($id){
		$this->db->where('id', $id);
		$this->db->delete('user');
	}
}