<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Action_user extends CI_Controller {

	public function index($id){
		$this->load->model('Daftaruser_model');

		$data['title'] = 'Action User';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['pengguna'] = $this->Daftaruser_model->getUserById($id);

		$this->load->view('sidebar/sidebar', $data);
		$this->load->view('user/daftar_user', $data);
	}

	public function delete($id){
		$this->load->model('Daftaruser_model');
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$this->Daftaruser_model->deleteUserById($id);

		$this->session->set_flashdata('message', '
			<div class="alert alert-success alert-dismissible fade show" role="alert">
				<span class="alert-text">User berhasil di hapus!</span>
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>');
		redirect('daftar_user');
	}
}