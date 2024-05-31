<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use PHPMailer\PHPMailer\PhpMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php';

class Auth extends CI_Controller {
	
	public function __construct(){
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->model('Kabupaten_model');
		$this->load->model('Kecamatan_model');
		$this->load->model('Wilayah_model');
		$this->load->helper('date');
	}
 
	public function index(){

		$this->form_validation->set_rules('email', 'email', 'trim|required|valid_email');
		$this->form_validation->set_rules('password', 'password', 'trim|required');
		if ($this->form_validation->run() == false){
			$this->load->view('auth/login');
		}else{
			$this->_login();
		}
	}

	private function _login(){

		if($this->session->userdata('email')){
			if($this->session->userdata('role_id') == 2){
				redirect('anggota');
			}else{
				redirect('admin');
			}
		}

		$email = $this->input->post('email');
		$password = $this->input->post('password');	

		$user = $this->db->get_where('user', ['email' => $email])->row_array();
		
		if($user){
			if($user['is_active'] == 1){
				if(password_verify($password, $user['password'])){
					$data = [
						'email' => $user['email'],
						'username' => $user['username'],
						'role_id' => $user['role_id'],
						'kecamatan' => $user['kecamatan']
					];
					$this->session->set_userdata($data);
					if($user['role_id'] == 1){
						redirect('admin');
					}else{
					redirect('anggota');
					}
				}else{
					$this->session->set_flashdata('message', '
					<div class="alert alert-danger alert-dismissible fade show" role="alert">
					<span class="alert-text">Password salah!</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>');
	  			redirect('auth');
				}
			}else{
				$this->session->set_flashdata('message', '
					<div class="alert alert-danger alert-dismissible fade show" role="alert">
					<span class="alert-text">Email belum diaktivasi! Silahkan cek Email anda</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>');
				redirect('auth');
			}
		}else{
			$this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
  			<span class="alert-text">Email belum terdaftar, silahkan daftar dahulu</span>
  			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
  			<span aria-hidden="true">&times;</span>
					</button>
  			</div>');
  			redirect('auth');
		}
	}

	public function getKecamatan(){
		$idkab = $this->input->post('id');
		$data = $this->Wilayah_model->getDataKec($idkab);
		$output = '<option disabled selected>Kecamatan</option>';
		foreach ($data as $row) {
			$output .= '<option value="' . $row->id . '"> ' . $row->nama_kec . '</option>';
		}
		$this->output->set_content_type('application/json')->set_output(json_encode($output));
	}

	public function register(){

		if($this->session->userdata('email')){
			if($this->session->userdata('role_id') == 2){
				redirect('anggota');
			}else{
				redirect('admin');
			}
		}

		$this->form_validation->set_rules('username', 'Username', 'trim|required');
		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|is_unique[user.email]', [
			'is_unique' => 'This email has already registered'
		]);
		$this->form_validation->set_rules('kabupaten', 'Kabupaten', 'required');
		$this->form_validation->set_rules('kecamatan', 'Kecamatan', 'required');

		$this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[5]');
		$datestring = '%Y-%m-%d %H-%i-%s';
        $time = time();
        $date_created = mdate($datestring, $time);

		if ($this->form_validation->run() == false){
			$data['kabupaten'] = $this->Wilayah_model->getDataKab();

			$this->load->view('auth/register', $data);
		}else{
			$data = [
				'username' => htmlspecialchars($this->input->post('username', true)),
				'id_anggota' => htmlspecialchars($this->input->post('id_anggota'), true),
				'email' => htmlspecialchars($this->input->post('email', true)),
				'kabupaten' => htmlspecialchars($this->input->post('kabupaten', true)),
				'kecamatan' => htmlspecialchars($this->input->post('kecamatan', true)),
				'password' => password_hash($this->input->post('password'),PASSWORD_DEFAULT),
				'role_id' => 2,
				'is_active' => 0,
				'date_created' => $date_created,
				'image' => 'user.png',
				'nohp' => '',
				'alamat' => ''
			];

			//TOKEN AKTIVASI
			$token = base64_encode(random_bytes(32));
			$user_token = [
				'email' => $this->input->post('email', true),
				'token' => $token,
				'date_created' => time()
			];

			$this->db->insert('user', $data);
			$this->db->insert('user_token', $user_token);

			$this->_sendEmail($token, 'verify');
			$this->session->set_flashdata('message', '
				<div class="alert alert-success alert-dismissible fade show" role="alert">
				<span class="alert-text">Silahkan cek pesan masuk atau folder spam email Anda untuk aktivasi!</span>
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>');
			redirect('auth');
		}
	}

	private function _sendEmail($token, $type){
		$mail = new PHPMailer(true);

		    //Server settings
		    $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
		    $mail->isSMTP();                                            //Send using SMTP
		    $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
		    $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
		    $mail->Username   = 'sakuline.banjarnegara@gmail.com';                     //SMTP username
		    $mail->Password   = 'ppualrqhhwdjtccs';                               //SMTP password
		    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
		    $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

		    //Recipients
		    $mail->setFrom('sakuline.banjarnegara@gmail.com', 'Sakuline Disarpus Kabupaten Banjarnegara');
		    $mail->addAddress($this->input->post('email'));     //Add a recipient

		    //Mekanisme untuk verifikasi atau forgot password
			if($type == 'verify'){
				$mail->isHTML(true);                                  //Set email format to HTML
		    	$mail->Subject = 'Aktivasi Akun Sakuline';
		    	$mail->Body    = 'Tekan link berikut ini untuk aktivasi akun Anda : </br><a href="'. base_url() . 'auth/verify?email=' . $this->input->post('email') . '&token=' . urlencode($token) . '">Link Aktivasi</a>';

			} else if($type == 'forgot'){
				$mail->isHTML(true);                                  //Set email format to HTML
		    	$mail->Subject = 'Reset Password';
		    	$mail->Body    = 'Tekan link berikut ini untuk reset password akun Anda : </br><a href="'. base_url() . 'auth/resetPassword?email=' . $this->input->post('email') . '&token=' . urlencode($token) . '">Reset Password</a>';
			}

			$mail->send();
		}

	public function verify(){
		$email = $this->input->get('email');
		$token = $this->input->get('token');

		$user = $this->db->get_where('user', ['email' => $email])->row_array();

		if($user){
			$user_token = $this->db->get_where('user_token', ['token' => $token])->row_array();
			if($user_token){
				if(time() - $user_token['date_created'] < (60*60*72)){
					$this->db->set('is_active', 1);
					$this->db->where('email', $email);
					$this->db->update('user');

					$this->db->delete('user_token', ['email' => $email]);
					$this->session->set_flashdata('message', '
						<div class="alert alert-success alert-dismissible fade show" role="alert">
						<span class="alert-text">'.$email.' telah teraktivasi, Silahkan login!</span>
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						</div>');
					redirect('auth');

				}else{
					$this->db->delete('user', ['email' => $email]);
					$this->db->delete('user_token', ['email' => $email]);

					$this->session->set_flashdata('message', '
						<div class="alert alert-danger alert-dismissible fade show" role="alert">
						<span class="alert-text">Aktivasi expired! Silahkan daftar ulang</span>
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						</div>');
					redirect('auth');
				}
				
			}else{
				$this->session->set_flashdata('message', '
				<div class="alert alert-danger alert-dismissible fade show" role="alert">
				<span class="alert-text">Aktivasi gagal! Token tidak valid</span>
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>');
			redirect('auth');
			}

		}else{
			$this->session->set_flashdata('message', '
				<div class="alert alert-danger alert-dismissible fade show" role="alert">
				<span class="alert-text">Aktivasi gagal! Email salah</span>
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>');
			redirect('auth');
		}
	}

	/*private function _sendEmail($token, $type){
		$config = [
			'protocol'  => 'smtp',
			'smtp_host' => 'ssl://smtp.googlemail.com',
			'smtp_user' => 'sakuline.banjarnegara@gmail.com',
			'smtp_pass' => 'bnasakuline',
			'smtp_port' => 465,
			'mailtype'  => 'html',
			'charset'   => 'utf-8',
			'newline'   => "\r\n"
		];
		$this->load->library('email', $config);
		$this->email->initialize($config);

		$this->email->from('sakuline.banjarnegara@gmail.com', 'Sakuline Disarpus Kabupaten Banjarnegara');
		$this->email->to($this->input->post('email'));

		//Mekanisme untuk verifikasi atau forgot password
		if($type == 'verify'){
			$this->email->subject('Aktivasi Akun Sakuline');
			$this->email->message('Tekan link berikut ini untuk aktivasi akun Anda : </br><a href="'. base_url() . 'auth/verify?email=' . $this->input->post('email') . '&token=' . urlencode($token) . '">Link Aktivasi</a>');

		} else if($type == 'forgot'){
			$this->email->subject('Reset Password');
			$this->email->message('Tekan link berikut ini untuk reset password akun Anda : </br><a href="'. base_url() . 'auth/resetPassword?email=' . $this->input->post('email') . '&token=' . urlencode($token) . '">Reset Password</a>');
		}

		if($this->email->send()){
			return true;
		}else{
			echo $this->email->print_debugger();
			die;
		}
	}


	public function verify(){
		$email = $this->input->get('email');
		$token = $this->input->get('token');

		$user = $this->db->get_where('user', ['email' => $email])->row_array();

		if($user){
			$user_token = $this->db->get_where('user_token', ['token' => $token])->row_array();
			if($user_token){
				if(time() - $user_token['date_created'] < (60*60*72)){
					$this->db->set('is_active', 1);
					$this->db->where('email', $email);
					$this->db->update('user');

					$this->db->delete('user_token', ['email' => $email]);
					$this->session->set_flashdata('message', '
						<div class="alert alert-success alert-dismissible fade show" role="alert">
						<span class="alert-text">'.$email.' telah teraktivasi, Silahkan login!</span>
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						</div>');
					redirect('auth');

				}else{
					$this->db->delete('user', ['email' => $email]);
					$this->db->delete('user_token', ['email' => $email]);

					$this->session->set_flashdata('message', '
						<div class="alert alert-danger alert-dismissible fade show" role="alert">
						<span class="alert-text">Aktivasi expired! Silahkan daftar ulang</span>
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						</div>');
					redirect('auth');
				}
				
			}else{
				$this->session->set_flashdata('message', '
				<div class="alert alert-danger alert-dismissible fade show" role="alert">
				<span class="alert-text">Aktivasi gagal! Token tidak valid</span>
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>');
			redirect('auth');
			}

		}else{
			$this->session->set_flashdata('message', '
				<div class="alert alert-danger alert-dismissible fade show" role="alert">
				<span class="alert-text">Aktivasi gagal! Email salah</span>
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>');
			redirect('auth');
		}
	}*/

	public function logout(){

		$session = ['username','role_id','email','keyword','profile', 'message_buku', 'message', 'tambah_buku','edit_sukses'];
		$this->session->unset_userdata($session);
		/*$this->session->unset_userdata('role_id');
		$this->session->unset_userdata('email');
		$this->session->unset_userdata('keyword');
		unset(
			$_SESSION['profile'],
			$_SESSION['message_buku']*/
		
		$this->session->set_flashdata('message', '
				<div class="alert alert-success alert-dismissible fade show" role="alert">
				<span class="alert-text">Anda berhasil Logout!</span>
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>');
		redirect('auth');
	}

	public function blocked(){
		$this->load->view('auth/blocked');
	}

	public function forgotPassword(){
		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');

		if($this->form_validation->run() == false){
			$this->load->view('auth/forgot_password');
		}else{
			$email = $this->input->post('email');
			$user = $this->db->get_where('user', ['email' => $email, 'is_active' => 1])->row_array();

			if($user){
				$token = base64_encode(random_bytes(32));
				$user_token = [
					'email' => $email,
					'token' => $token,
					'date_created' =>time()
				];

				$this->db->insert('user_token', $user_token);
				$this->_sendEmail($token, 'forgot');

				$this->session->set_flashdata('message', '
					<div class="alert alert-success alert-dismissible fade show" role="alert">
					<span class="alert-text">Cek Email Anda untuk reset password!</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					</div>');
				redirect('auth/forgotPassword');
			}else{
				$this->session->set_flashdata('message', '
					<div class="alert alert-danger alert-dismissible fade show" role="alert">
					<span class="alert-text">Email belum terdaftar atau belum aktif!</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					</div>');
				redirect('auth/forgotPassword');
			}
		}

	}

	public function resetPassword(){
		$email = $this->input->get('email');
		$token = $this->input->get('token');

		$user = $this->db->get_where('user', ['email' => $email])->row_array();

		if($user){
			$user_token = $this->db->get_where('user_token', ['token' => $token])->row_array();
			if($user_token){
				$this->session->set_userdata('reset_email', $email);
				$this->changePassword();
			}else{
				$this->session->set_flashdata('message', '
					<div class="alert alert-danger alert-dismissible fade show" role="alert">
					<span class="alert-text">Reset password gagal! Token salah.</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					</div>');
				redirect('auth');
			}

		}else{
			$this->session->set_flashdata('message', '
					<div class="alert alert-danger alert-dismissible fade show" role="alert">
					<span class="alert-text">Reset password gagal! Email salah.</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					</div>');
				redirect('auth');
		}
	}

	public function changePassword(){
		if(!$this->session->userdata('reset_email')){
			redirect('auth');
		}

		$this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[5]');

		if($this->form_validation->run() ==  false){
			$this->load->view('auth/change_password');
		
		}else{
			$password = password_hash($this->input->post('password'), PASSWORD_DEFAULT);
			$email = $this->session->userdata('reset_email');

			$this->db->set('password', $password);
			$this->db->where('email', $email);
			$this->db->update('user');

			$this->session->unset_userdata('reset_email');
			$this->session->set_flashdata('message', '
					<div class="alert alert-success alert-dismissible fade show" role="alert">
					<span class="alert-text">Password berhasil diubah! Silahkan Login.</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					</div>');
				redirect('auth');
		}
	}
} 