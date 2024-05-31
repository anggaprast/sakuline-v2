<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Action_riwayat extends CI_Controller {
	public function cancel($id){
		$this->load->model('Riwayat_model');
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

		$data['pesanan'] = $this->Riwayat_model->cancelRiwayatById($id);

		redirect('infopesan');
	}
}