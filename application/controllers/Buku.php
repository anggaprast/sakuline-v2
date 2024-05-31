<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Buku extends CI_Controller {
	public function index()
	{
		$data['title'] = 'Katalog Buku';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

		//load library pagination
		$this->load->library('pagination');
		$this->load->model('Buku_model');
		$this->load->model('Notif_model');
		$this->load->helper('text');

		// SEARCHING
		// Ambil data masukan keyword
		if($this->input->post('submit')){
			$data['keyword'] = $this->input->post('keyword');
			$this->session->set_userdata('keyword', $data['keyword']);
		}else{
			$data['keyword'] = $this->session->userdata('keyword');
		}

		//config
		$config['base_url'] = 'http://localhost/perpus/Buku/index';
		$this->db->like('Title', $data['keyword']);
		$this->db->or_like('Author', $data['keyword']);
		$this->db->or_like('Publisher', $data['keyword']);
		$this->db->from('collections');
		$config['total_rows'] = $this->db->count_all_results();
		$data['total_rows'] = $config['total_rows'];
		$config['per_page'] = 10;
		$config['num_links'] = 2;

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
		$data['buku'] = $this->Buku_model->getBuku($config['per_page'], $data['start'], $data['keyword']);
		//notifikasi
		$data['countnotif_user'] = $this->Notif_model->countNotifUser();
		$data['notifikasi_user'] = $this->Notif_model->getNotifUser();
		

		//$data['primary_view'] = ('home/guest_view');
		$this->load->view('sidebar/sidebar', $data);
		$this->load->view('buku/tabel_buku', $data);
		$this->load->view('sidebar/footer');
	}
}
