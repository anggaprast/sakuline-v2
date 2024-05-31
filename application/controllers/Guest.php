<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Guest extends CI_Controller {

	public function index()
	{
		//load library pagination
		$this->load->library('pagination');
		$this->load->model('Buku_model');
		$this->load->helper('text');
		$this->load->helper('date');

		// SEARCHING
		// Ambil data masukan keyword
		if($this->input->post('submit')){
			$data['keyword'] = $this->input->post('keyword');
			$this->session->set_userdata('keyword', $data['keyword']);
		}else{
			$data['keyword'] = $this->session->userdata('keyword');
		}

		//config
		$config['base_url'] = 'http://localhost/perpus/Guest/index';
		$this->db->like('Title', $data['keyword']);
		$this->db->or_like('Author', $data['keyword']);
		$this->db->or_like('Publisher', $data['keyword']);
		$this->db->from('collections');
		$config['total_rows'] = $this->db->count_all_results();
		$data['total_rows'] = $config['total_rows'];
		$config['per_page'] = 7;
		$config['num_links'] = 4;

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
		/*$config['rule'] = $this->Rules_model->getRules();
		$data['rules'] = $config['rule'];  */
		$data['buku'] = $this->Buku_model->getBuku($config['per_page'], $data['start'], $data['keyword']);
		

		//VIEW
		$this->load->view('sidebar/sidebar_guest');
		$this->load->view('home/home_guest', $data);
	}
}
 