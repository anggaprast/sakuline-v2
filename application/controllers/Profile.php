<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller {
	public function __construct(){
		parent::__construct();
		cek_login();
		$this->load->model('Notif_model');
	} 
	
	public function index()
	{
		$this->load->library('form_validation');
		$this->load->library('image_lib');
		$this->load->library('upload');
		$this->load->model('Profile_model');
		$data['title'] = 'Profile';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['countnotif_user'] = $this->Notif_model->countNotifUser();
		$data['notifikasi_user'] = $this->Notif_model->getNotifUser();

		$this->load->view('sidebar/sidebar', $data);
		$this->load->view('profile/profile', $data);
		$this->load->view('sidebar/footer');
	}

	public function edit(){

		$this->load->library('form_validation');
		$this->load->model('Profile_model');
		$data['title'] = 'Profile';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['countnotif_user'] = $this->Notif_model->countNotifUser();
		$data['notifikasi_user'] = $this->Notif_model->getNotifUser();
		
		$this->form_validation->set_rules('username', 'Nama Lengkap', 'required|trim');
		$this->form_validation->set_rules('id_anggota', 'ID Anggota', 'trim|max_length[11]|min_length[11]');

		if($this->form_validation->run() == false) {
			$this->load->view('sidebar/sidebar', $data);
			$this->load->view('profile/profile', $data);
			$this->load->view('sidebar/footer');

		}else{
			$username = $this->input->post('username');
			$nohp = $this->input->post('nohp');
			$id_anggota = $this->input->post('id_anggota');
			$alamat = $this->input->post('alamat');
			$email = $this->input->post('email');

			$this->db->set('username', $username);
			$this->db->set('nohp', $nohp);
			$this->db->set('id_anggota', $id_anggota);
			$this->db->set('alamat', $alamat);
			$this->db->where('email', $email);
			$this->db->update('user');

			$this->session->set_flashdata('profile', '<div class="alert alert-success alert-dismissible fade show" role="alert">
				<span class="alert-text">Profile berhasil diupdate!</span>
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>');
			redirect('profile');
		}
	}

	public function editfoto(){
		$data['title'] = 'Profile';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

		$upload_image = $_FILES['image']['name'];

		if($upload_image){
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size'] = '3072';
				$config['upload_path'] = './assets/img/profile/';

				$this->load->library('upload', $config);

				if ($this->upload->do_upload('image')){
					$email = $this->input->post('email');

					$old_image = $data['user']['image'];
					if($old_image != 'user.png'){
						unlink(FCPATH . 'assets/img/profile/' . $old_image);
					}
					$image = $this->upload->data();
					//resize image
					$config2['image_library'] = 'gd2';
					$config2['source_image'] ='./assets/img/profile/'.$image['file_name'];
	                $config2['create_thumb'] = false;
	                $config2['maintain_ratio'] = false;
	                $config2['quality'] = '100%';
	                $config2['width'] = 800;
	                $config2['height'] = 800;
	                $config2['new_image'] = './assets/img/profile/'.$image['file_name'];
	                $this->load->library('image_lib', $config2);
	                $this->image_lib->resize();

	                $new_image = $image['file_name'];
					$this->db->set('image', $new_image);
					$this->db->where('email', $email);
					$this->db->update('user');

					redirect('profile');

				}else{
					$this->session->set_flashdata('profile', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
							<span class="alert-text">'. $this->upload->display_errors() .'</span>
							<button type="button" class="close" data-dismiss="alert" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>');
					redirect('profile');
				}
			}
	}

}