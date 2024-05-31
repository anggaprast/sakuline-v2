<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pesanan_kartu extends CI_Controller {
	public function __construct(){
		parent::__construct();
		cek_login();
		$this->load->library('pdf');
	}
	
	public function index(){
		$this->load->library('pagination');
		$this->load->model('Pesanan_model');
		$this->load->model('Notif_model');

		$data['title'] = 'Pesanan Kartu';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

		// SEARCHING
		// Ambil data masukan keyword
		if($this->input->post('submit')){
			$data['keyword_kartu'] = $this->input->post('keyword_kartu');
			$this->session->set_userdata('keyword_kartu', $data['keyword_kartu']);
		}else{
			$data['keyword_kartu'] = $this->session->userdata('keyword_kartu');
		}

		//config
		$config['base_url'] = 'http://localhost/perpus/Pesanan_kartu/index';
		$this->db->like('nama', $data['keyword_kartu']);
		$this->db->from('pesan_kartu');
		$config['total_rows'] = $this->db->count_all_results();
		$data['total_rows'] = $config['total_rows'];
		$config['per_page'] = 10;
		$config['num_links'] = 2;

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
		$data['pesanan_kartu'] = $this->Pesanan_model->getKartu($config['per_page'], $data['start'], $data['keyword_kartu']);
		//notifikasi
		$data['countnotif'] = $this->Notif_model->countNotifAdmin();
		$data['notifikasi'] = $this->Notif_model->getNotifAdmin();

		$this->load->view('sidebar/sidebar', $data);
		$this->load->view('user/pesanan_kartu', $data);
		$this->load->view('sidebar/footer');
	}

	public function delete($id){
		$this->load->model('Pesanan_model');
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$this->Pesanan_model->deletePesanKartuById($id);

		redirect('Pesanan_kartu');
	}

	public function accept($id){
		$this->load->model('Pesanan_model');
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['pesanan_kartu'] = $this->Pesanan_model->getPesanKartuById($id);

		$data = ['status' => $this->input->post('status', true)
				];

		$this->db->where('id', $this->input->post('id'));
		$this->db->update('pesan_kartu', $data);
		$this->session->set_flashdata('message', '
					<div class="alert alert-success alert-dismissible fade show" role="alert">
					<span class="alert-text">Pesanan kartu telah diterima!</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>');
		redirect('Pesanan_kartu');
	}

	public function print($id){
		$this->load->model('Pesanan_model');
		$data['pesanan_kartu'] = $this->Pesanan_model->getPesanKartuById($id);
		$this->load->view('user/print_pesankartu', $data);
	}
}