<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Notif_model extends CI_Model {

	//menghitung notifikasi
	public function countNotifAdmin(){
		return $this->db->get('notifikasi')->num_rows();
	}

	//menampilkan notifikasi
	public function getNotifAdmin(){
		$this->db->order_by('tanggal_pesan', 'DESC');
		$this->db->limit(3);
		return $this->db->get('notifikasi')->result_array();
	}

	public function countNotifUser(){
		$this->db->where('email', $this->session->userdata('email'));
		return $this->db->get('notifikasi_user')->num_rows();
	}

	public function getNotifUser(){
		$this->db->where('email', $this->session->userdata('email'));
		$this->db->order_by('tanggal_action', 'DESC');
		return $this->db->get('notifikasi_user')->result_array();
	}

	//DELETE NOTIF

	public function deleteNotifUsById($id){
		$this->db->where('email', $this->session->userdata('email'));
		$this->db->where('id', $id);
		$this->db->delete('notifikasi_user');
	}

	public function deleteNotifAdById($id){
		$this->db->where('email', $this->session->userdata('email'));
		$this->db->where('id', $id);
		$this->db->delete('notifikasi');
	}
}