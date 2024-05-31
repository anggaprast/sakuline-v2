<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Infopesan extends CI_Controller {
	public function __construct(){
		parent::__construct();
		cek_login();
	}

	public function index(){
		$data['title'] = 'Daftar Pesanan';

		$this->load->model('Riwayat_model');
		$this->load->model('Notif_model');
		$this->load->library('pagination');
		$this->load->helper('text');
 		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		
		$config['base_url'] = 'http://localhost/perpus/riwayat/index';
		$config['per_page'] = 5;
		$this->pagination->initialize($config);

		$this->db->order_by('tanggal_pesan', 'DESC');
		$data['pesanan'] = $this->Riwayat_model->getRiwayat($config['per_page']);

		//notifikasi
		$data['countnotif_user'] = $this->Notif_model->countNotifUser();
		$data['notifikasi_user'] = $this->Notif_model->getNotifUser();

		$this->load->view('sidebar/sidebar', $data);
		$this->load->view('form/info_pesan', $data);
		$this->load->view('sidebar/footer');
	}

}