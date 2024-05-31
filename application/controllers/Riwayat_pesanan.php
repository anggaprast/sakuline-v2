<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Riwayat_pesanan extends CI_Controller {
	public function __construct(){
		parent::__construct();
		cek_login();
	}
	
	public function index(){
		$data['title'] = 'History Pesanan';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

		$this->load->model('Pesanan_model');
		$this->load->model('Notif_model');
		$this->load->library('pagination');
		$this->load->helper('text');

		// SEARCHING
		// Ambil data masukan keyword
		if($this->input->post('submit')){
			$data['psbuku_keyword'] = $this->input->post('psbuku_keyword');
			$this->session->set_userdata('psbuku_keyword', $data['psbuku_keyword']);
		}else{
			$data['psbuku_keyword'] = $this->session->userdata('psbuku_keyword');
		}
		
		//config
		$config['base_url'] = 'http://localhost/perpus/riwayat_pesanan/index';
		$this->db->like('nama', $data['psbuku_keyword']);
		$this->db->or_like('judul', $data['psbuku_keyword']);
		$this->db->or_like('id_anggota', $data['psbuku_keyword']);
		$this->db->from('pesan_buku');
		$config['total_rows'] = $this->db->count_all_results();
		$data['total_rows'] = $config['total_rows'];
		$config['per_page'] = 10;
		$config['num_links'] = 1;

		//styling pagination
		$config['full_tag_open'] = '<div class="card-footer py-4"><nav aria-label="Page navigation"><ul class="pagination justify-content-center">';
		$config['full_tag_close'] = '</ul></nav></div>';
		
		$config['first_link'] = '<i class="fas fa-angle-double-left"></i>';
		$config['first_tag_open'] = '<li class="page-item">';
		$config['first_tag_close'] = '</li>';

		$config['last_link'] = '<i class="fas fa-angle-double-right"></i>';
		$config['last_tag_open'] = '<li class="page-item">';
		$config['last_tag_close'] = '</li>';

		$config['next_link'] = '<i class="fas fa-angle-right"></i>';
		$config['next_tag_open'] = '<li class="page-item">';
		$config['next_tag_close'] = '</li>';

		$config['prev_link'] = '<i class="fas fa-angle-left"></i>';
		$config['prev_tag_open'] = '<li class="page-item">';
		$config['prev_tag_close'] = '</li>';

		$config['cur_tag_open'] = '<li class="page-item active"><a class="page-link" href="#">';
		$config['cur_tag_close'] = '</a></li>';

		$config['num_tag_open'] = '<li class="page-item">';
		$config['num_tag_close'] = '</li>';

		$config['attributes'] = array('class' => 'page-link');


		//inisialisasi
		$this->pagination->initialize($config);
		$data['start'] = $this->uri->segment(3);
		$this->db->order_by('tanggal_action', 'DESC'); 
		$data['pesanan_buku'] = $this->Pesanan_model->getHistoryBuku($config['per_page'], $data['start'], $data['psbuku_keyword']);
		//notifikasi
		$data['countnotif'] = $this->Notif_model->countNotifAdmin();
		$data['notifikasi'] = $this->Notif_model->getNotifAdmin();

		$this->load->view('sidebar/sidebar', $data);
		$this->load->view('user/riwayat', $data);
		$this->load->view('sidebar/footer');
	}
/*
	public function delete($id){
		$this->load->model('Pesanan_model');
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['pesanan_buku'] = $this->Pesanan_model->getPesanById($id);

		$data = [
				'status' => $this->input->post('status', true),
				'pesan' => $this->input->post('pesan', true),
				'tanggal_action' => time()
				];

		$this->db->where('id', $this->input->post('id'));
		$this->db->update('pesan_buku', $data);
		redirect('riwayat_pesanan');
	}

	public function accept($id){
		$this->load->model('Pesanan_model');
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['pesanan_buku'] = $this->Pesanan_model->getPesanById($id);

		$data = [
				'status' => $this->input->post('status', true),
				'pesan' => $this->input->post('pesan', true),
				'tanggal_action' => time()
				];

		$this->db->where('id', $this->input->post('id'));
		$this->db->update('pesan_buku', $data);

		redirect('riwayat_pesanan');
	}
	*/
}