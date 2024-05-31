<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Action_notif extends CI_Controller {

	public function deletenotif_user($id){
		$this->load->model('Notif_model');
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$this->db->where('id', $id);
		$this->db->delete('notifikasi_user');

		redirect('riwayat');
	}

	public function deletenotif_admin($id){
		$this->load->model('Notif_model');
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$this->db->where('id', $id);
		$this->db->delete('notifikasi');

		redirect('pesanan_buku');
	}
}