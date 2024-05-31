<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Maps_anggota extends CI_Controller {
	public function __construct(){
		parent::__construct();
		cek_login();
	}
	
	public function index()
	{
		$this->load->model('Notif_model');
		$data['title'] = 'Maps';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['countnotif_user'] = $this->Notif_model->countNotifUser();
		$data['notifikasi_user'] = $this->Notif_model->getNotifUser();
		
		$this->load->view('sidebar/sidebar', $data);
		$this->load->view('maps/maps_anggota');
		$this->load->view('sidebar/footer');
	}
}