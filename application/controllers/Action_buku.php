<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Action_buku extends CI_Controller {

	public function tambahbuku(){
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$this->load->library('form_validation');
		$this->load->model('AdminBuku_model');
		$this->load->model('Rules_model');
		$this->load->helper('date');

		$this->form_validation->set_rules('Title', 'Judul', 'trim|required');
		$this->form_validation->set_rules('Author', 'Penulis', 'trim|required');
		$this->form_validation->set_rules('Publisher', 'Penerbit', 'trim|required');
		$this->form_validation->set_rules('ISBN', 'ISBN', 'trim|required');
		$this->form_validation->set_rules('Rule_id', 'Status', 'trim|required');
		$this->form_validation->set_rules('Class', 'Class', 'required');
		$this->form_validation->set_rules('CreateBy', 'CreateBy', 'trim|required');

		$datestring = '%Y-%m-%d %h-%i-%s';
        $time = time();
        $date_created = mdate($datestring, $time);
        $update_date = mdate($datestring, $time);

        if($this->form_validation->run() == false){
        	$this->session->set_flashdata('message', '
					<div class="alert alert-danger alert-dismissible fade show" role="alert">
					<span class="alert-text">Buku gagal ditambahkan, mohon isi data dengan benar!</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>');
        	redirect('admin_buku');
        }else{	
	        $data = [
					'Title' => $this->input->post('Title', true),
					'Author' => $this->input->post('Author', true),
					'Publisher' => $this->input->post('Publisher', true),
					'ISBN' => $this->input->post('ISBN', true),
					'Rule_id' => $this->input->post('Rule_id', true),
					'Class' => $this->input->post('Class', true),
					'CreateBy' => $this->input->post('CreateBy', true),
					'CreateDate' => $date_created,
					'UpdateDate' => $update_date
				];
				$this->db->insert('collections', $data);
				$this->session->set_flashdata('message', '
					<div class="alert alert-success alert-dismissible fade show" role="alert">
					<span class="alert-text">Buku berhasil ditambahkan!</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>');
				redirect('admin_buku');
        }
	}

	public function edit($ID)
	{

		$this->load->library('form_validation');
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$this->load->library('form_validation');
		$this->load->model('AdminBuku_model');
		$this->load->model('Rules_model');
		$this->load->helper('date');

		$data['buku'] = $this->AdminBuku_model->getBukuById($ID);

		$this->form_validation->set_rules('Title', 'Judul', 'trim|required');
		$this->form_validation->set_rules('Author', 'Penulis', 'trim|required');
		$this->form_validation->set_rules('Publisher', 'Penerbit', 'trim|required');
		$this->form_validation->set_rules('ISBN', 'ISBN', 'trim|required');
		$this->form_validation->set_rules('Rule_id', 'Status', 'trim|required');
		$this->form_validation->set_rules('Class', 'Class', 'required');
		$this->form_validation->set_rules('CreateBy', 'CreateBy', 'trim|required');

		$datestring = '%Y-%m-%d';
        $time = time();
        $update_date = mdate($datestring, $time);

			$data = [
				'Title' => $this->input->post('Title', true),
				'Author' => $this->input->post('Author', true),
				'Publisher' => $this->input->post('Publisher', true),
				'ISBN' => $this->input->post('ISBN', true),
				'Rule_id' => $this->input->post('Rule_id', true),
				'UpdateDate' => $update_date
			];

			$this->db->where('ID', $this->input->post('ID'));
			$this->db->update('collections', $data);
			$this->session->set_flashdata('message', '
			<div class="alert alert-success alert-dismissible fade show" role="alert">
				<span class="alert-text">Buku berhasil di edit!</span>
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>');
			redirect('admin_buku');
		}

	function delete($ID){
		$this->load->model('AdminBuku_model');
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$this->AdminBuku_model->deleteBukuById($ID);

		$this->session->set_flashdata('message', '
			<div class="alert alert-success alert-dismissible fade show" role="alert">
				<span class="alert-text">Buku berhasil di hapus!</span>
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>');
		redirect('admin_buku');
	}
}