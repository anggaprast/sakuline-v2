<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Daftar_user extends CI_Controller {
	
	public function __construct(){
		parent::__construct();
		cek_login();
	}

	public function index(){

		$data['title'] = 'Daftar User';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

		$this->load->model('Daftaruser_model');
		$this->load->model('Kecamatan_model');
		$this->load->model('Kabupaten_model');
		$this->load->model('Notif_model');
		$this->load->library('pagination');

		if($this->input->post('submit')){
			$data['user_keyword'] = $this->input->post('user_keyword');
			$this->session->set_userdata('user_keyword', $data['user_keyword']);
		}else{
			$data['user_keyword'] = $this->session->userdata('user_keyword');
		}

		//config
		$config['base_url'] = 'http://localhost/perpus/daftar_user/index';
		$this->db->like('username', $data['user_keyword']);
		$this->db->or_like('email', $data['user_keyword']);
		$this->db->or_like('id_anggota', $data['user_keyword']);
		$this->db->from('user');
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


		$this->pagination->initialize($config);
		$data['start'] = $this->uri->segment(3);
		$data['kecamatan'] = $this->Kecamatan_model->Kecamatan();
		$data['kabupaten'] = $this->Kabupaten_model->Kabupaten();
		$data['pengguna'] = $this->Daftaruser_model->getUser($config['per_page'], $data['start'], $data['user_keyword']);
		//notifikasi
		$data['countnotif'] = $this->Notif_model->countNotifAdmin();
		$data['notifikasi'] = $this->Notif_model->getNotifAdmin();

		$this->load->view('sidebar/sidebar', $data);
		$this->load->view('user/daftar_user', $data);
		$this->load->view('sidebar/footer');
	}
}
