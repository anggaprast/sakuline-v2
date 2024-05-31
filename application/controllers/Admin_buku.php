<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_buku extends CI_Controller {
	public function __construct(){
		parent::__construct();
		cek_login();
	}
	
	public function index()
	{
		
		$this->load->helper('text');
		$data['title'] = 'Edit Buku';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

		//load library pagination
		$this->load->library('pagination');
		$this->load->model('AdminBuku_model');
		$this->load->model('Notif_model');
 
		// SEARCHING
		// Ambil data masukan keyword
		if($this->input->post('submit')){
			$data['keyword_edit'] = $this->input->post('keyword_edit');
			$this->session->set_userdata('keyword_edit', $data['keyword_edit']);
		}else{
			$data['keyword_edit'] = $this->session->userdata('keyword_edit');
		}

		//config
		$config['base_url'] = 'http://localhost/perpus/Admin_buku/index';
		$config['total_rows'] = $this->AdminBuku_model->countAllBuku();
		$config['per_page'] = 10;
		$config['num_links'] = 4;

		//styling pagination
		$config['full_tag_open'] = '<div class="card-footer bg-default py-4"><nav aria-label="Page navigation"><ul class="pagination justify-content-center">';
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

		$config['attributes'] = array('class' => 'page-link bg-secondary');

		//inisialisasi
		$this->pagination->initialize($config);
		$data['start'] = $this->uri->segment(3);
		$data['buku'] = $this->AdminBuku_model->getAdBuku($config['per_page'], $data['start'], $data['keyword_edit']);
		//notifikasi
		$data['countnotif'] = $this->Notif_model->countNotifAdmin();
		$data['notifikasi'] = $this->Notif_model->getNotifAdmin();

		$this->load->view('sidebar/sidebar', $data);
		$this->load->view('buku/edit_buku', $data);
		$this->load->view('sidebar/footer');
	}
}
