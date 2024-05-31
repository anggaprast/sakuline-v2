<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Anggota extends CI_Controller {
	public function __construct(){
		parent::__construct();
		cek_login();
	}
	
	public function index()
	{
		$this->load->model('Riwayat_model');
		$this->load->model('Buku_model');
		$this->load->model('Statistik_model');
		$this->load->model('Notif_model');
		$this->load->helper('text');
		$this->load->library('pagination');
		$data['title'] = 'Home';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

		$config['base_url'] = 'http://localhost/Anggota/index';
		$config['total_rows'] = $this->db->count_all_results();
		$data['total_rows'] = $config['total_rows'];
		$config['per_page'] = 3;
		$config['num_links'] = 1;
		
		$this->pagination->initialize($config);
		$data['start'] = $this->uri->segment(3);
		$data['buku'] = $this->Buku_model->rekomendasiBuku($config['per_page']);
		$data['pesanan'] = $this->Riwayat_model->getRiwayatTerbaru();
		$data['status_diterima'] = $this->Riwayat_model->getStatusDiterima();
		$data['status_ditolak'] = $this->Riwayat_model->getStatusDitolak();

		//notifikasi
		$data['countnotif_user'] = $this->Notif_model->countNotifUser();
		$data['notifikasi_user'] = $this->Notif_model->getNotifUser();
		
		//view
		$this->load->view('sidebar/sidebar', $data);
		$this->load->view('home/home_anggota', $data);
		$this->load->view('sidebar/footer');
	}

	public function new_notifikasi(){
		$data['title'] = 'Home';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		//notifikasi
		$this->load->model('Notif_model');
		$data['countnotif_user'] = $this->Notif_model->countNotifUser();
		$data['notifikasi_user'] = $this->Notif_model->getNotifUser();
		$this->load->view('sidebar/new_notifikasi', $data);
	}
}
