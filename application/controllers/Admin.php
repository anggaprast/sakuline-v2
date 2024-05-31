<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {
 
	public function __construct(){
		parent::__construct();
		cek_login();
	}
	
	public function index() 
	{
		$data['title'] = 'Dashboard';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		//load library pagination
		$this->load->library('pagination');
		$this->load->model('Pesanan_model');
		$this->load->model('Statistik_model');
		$this->load->model('AdminBuku_model');
		$this->load->model('AdminBuku_model');
		$this->load->model('Notif_model');

		//config
		$config['base_url'] = 'http://localhost/perpus/Admin/index';
		$config['total_rows'] = $this->Buku_model->countAllBuku();
		$config['per_page'] = 10;
		$config['num_links'] = 4;

		//inisialisasi
		$this->pagination->initialize($config);
		$data['start'] = $this->uri->segment(3);
		$data['pesanan_kartu'] = $this->Pesanan_model->getKartuTerbaru();
		$data['pesanan_buku'] = $this->Pesanan_model->getPesanBukuTerbaru(); //notifikasi pesanan buku
		$data['cancel_pesan'] = $this->Pesanan_model->getCancelPesanTerbaru(); //notif pesanan buku dibatalkan
		//data this month
		$data['bukunow'] = $this->Pesanan_model->bukuThisMonth();
		$data['kartunow'] = $this->Pesanan_model->kartuThisMonth();
		$data['usernow'] = $this->Statistik_model->userThisMonth();
		$data['newbook'] = $this->AdminBuku_model->newbookThisMonth();

		//Statistik
		$data['asaluser'] = $this->Statistik_model->getChartUser();
		$data['statusstat'] = $this->Statistik_model->getStatusStat();
		$data['jmlpesanan'] = $this->Statistik_model->getGrafikPesanan();

		//notifikasi
		$data['countnotif'] = $this->Notif_model->countNotifAdmin();
		$data['notifikasi'] = $this->Notif_model->getNotifAdmin();

		$this->load->view('sidebar/sidebar', $data);
		$this->load->view('home/home_admin', $data);
		$this->load->view('sidebar/footer');
	}

	public function new_notifikasi(){ //JIKA ADA NOTIF BARU
		$data['title'] = 'Dashboard';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		//notifikasi
		$this->load->model('Notif_model');
		$this->load->model('Pesanan_model');
		$data['countnotif'] = $this->Notif_model->countNotifAdmin();
		$data['notifikasi'] = $this->Notif_model->getNotifAdmin();

		$this->load->view('sidebar/new_notifikasi', $data);
	}

	public function charUser(){ //JIKA ADA NOTIF BARU
		$data['title'] = 'Dashboard';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		//notifikasi
		$this->load->model('Statistik_model');
		//DATA DALAM CHART
		$asaluser = $this->Statistik_model->getChartUser();
		json_encode($asaluser);

		$this->load->view('sidebar/sidebar', $data);
		$this->load->view('home/home_admin', $data);
		$this->load->view('sidebar/footer');
	}
}
