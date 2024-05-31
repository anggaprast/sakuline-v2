<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile_coba extends CI_Controller {
	public function __construct(){
		parent::__construct();
		cek_login();
	}
	
	public function index()
	{
		$this->load->library('form_validation');
		$this->load->library('image_lib');
		$this->load->library('upload');
		$this->load->model('Profile_model');
		$data['title'] = 'Profile';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

		$this->load->view('sidebar/sidebar', $data);
		$this->load->view('profile/profile_coba', $data);
		$this->load->view('sidebar/footer');
	}

	public function edit(){

		$this->load->library('form_validation');
		$this->load->library('image_lib');
		$this->load->library('upload');
		$this->load->model('Profile_model');
		$data['title'] = 'Profile';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

		$this->form_validation->set_rules('username', 'Nama Lengkap', 'required|trim');

		if($this->form_validation->run() == false) {
			$this->load->view('sidebar/sidebar', $data);
			$this->load->view('profile/profile_coba', $data);
			$this->load->view('sidebar/footer');

		}else{
			$username = $this->input->post('username');
			$nohp = $this->input->post('nohp');
			$alamat = $this->input->post('alamat');
			$email = $this->input->post('email');

			$upload_image = $_FILES['image']['name'];

			if($upload_image){
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size'] = '4096';
				//$config['max_width'] = '800';
                //$config['max_height'] = '800';
				$config['upload_path'] = './assets/img/profile/';

				$this->upload->initialize($config);

				if ($this->upload->do_upload('image')){
					$old_image = $data['user']['image'];
					if($old_image != 'user.png'){
						unlink(FCPATH . 'assets/img/profile/' . $old_image);
					}
					$image = $this->upload->data();
					//resize image
					$config['image_library'] = 'gd2';
					$config['source_image'] ='./assets/img/profile/'.$image['file_name'];
	                $config['create_thumb'] = FALSE;
	                $config['maintain_ratio'] = FALSE;
	                $config['quality']= '100%';
	                $config['width']= 800;
	                $config['height']= 800;
	                $config['new_image']= './assets/img/profile/'.$image['file_name'];
	                $this->load->library('image_lib', $config);
	                $this->image_lib->resize();

	                $new_image = $image['file_name'];
					$this->db->set('image', $new_image);
				}else{
					$this->session->set_flashdata('profile', '<div class="alert alert-success alert-dismissible fade show" role="alert">
							<span class="alert-text">'. $this->upload->display_errors() .'</span>
							<button type="button" class="close" data-dismiss="alert" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>');
					redirect('profile_coba');
				}
			}

			$this->db->set('username', $username);
			$this->db->set('nohp', $nohp);
			$this->db->set('alamat', $alamat);
			$this->db->where('email', $email);
			$this->db->update('user');

			$this->session->set_flashdata('profile', '<div class="alert alert-success alert-dismissible fade show" role="alert">
				<span class="alert-text">Profile berhasil diupdate!</span>
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>');
			redirect('Profile_coba');
		}
	}
}