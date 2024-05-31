<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Form_kartu extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('Kecamatan_model');
		$this->load->model('Kabupaten_model');
		$this->load->model('Wilayah_model');
		$this->load->model('Notif_model');
		$this->load->library('form_validation');
	}

	public function index()
	{
		$data['title'] = 'Buat Kartu Anggota';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['kabupaten'] = $this->Kabupaten_model->getKabupaten();
		$data['kecamatan'] = $this->Kecamatan_model->getKecamatan();

		//notifikasi
		$data['countnotif_user'] = $this->Notif_model->countNotifUser();
		$data['notifikasi_user'] = $this->Notif_model->getNotifUser();

		$this->load->view('sidebar/sidebar', $data);
		$this->load->view('form/pesan_kartu', $data);
		$this->load->view('sidebar/footer');
	}

	public function pesan_kartu()
	{
		$data['title'] = 'Buat Kartu Anggota';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['kabupaten'] = $this->Kabupaten_model->getKabupaten();
		$data['kecamatan'] = $this->Kecamatan_model->getKecamatan();
		//notifikasi
		$data['countnotif_user'] = $this->Notif_model->countNotifUser();
		$data['notifikasi_user'] = $this->Notif_model->getNotifUser();
		
		$this->load->helper('date');
		$this->form_validation->set_rules('nama', 'Nama', 'trim|required');
		$this->form_validation->set_rules('jeniskelamin', 'Jenis Kelamin', 'required');
		$this->form_validation->set_rules('tempatlahir', 'Tempat Lahir', 'required');
		$this->form_validation->set_rules('tanggallahir', 'Tanggal Lahir', 'required');
		$this->form_validation->set_rules('nik', 'NIK', 'trim|required|is_unique[pesan_kartu.nik]', [
			'is_unique' => 'NIK sudah pernah dipakai']);
		$this->form_validation->set_rules('namaibu', 'Namaibu', 'trim|required');
		$this->form_validation->set_rules('alamat', 'Alamat', 'trim|required');
		$this->form_validation->set_rules('kabupaten', 'Kabupaten', 'required');
		$this->form_validation->set_rules('kecamatan', 'Kecamatan', 'required');
		$this->form_validation->set_rules('kelurahan', 'Kelurahan', 'trim|required');
		$this->form_validation->set_rules('nohp', 'Nomor HP', 'trim|required');
		$this->form_validation->set_rules('pekerjaan', 'Pekerjaan', 'trim|required');
		$this->form_validation->set_rules('pendidikan', 'Pendidikan', 'required');
		$datestring = '%Y-%m-%d %H-%i-%s';
        $time = time();
        $date_created = mdate($datestring, $time);

		if ($this->form_validation->run() == false){
			$this->load->view('sidebar/sidebar', $data);
			$this->load->view('form/pesan_kartu', $data);
			$this->load->view('sidebar/footer');
		}else{
			$data = [
				'nama' => htmlspecialchars($this->input->post('nama', true)),
				'jeniskelamin' => htmlspecialchars($this->input->post('jeniskelamin', true)),
				'tempatlahir' => htmlspecialchars($this->input->post('tempatlahir', true)),
				'tanggallahir' => htmlspecialchars($this->input->post('tanggallahir', true)),
				'alamat' => htmlspecialchars($this->input->post('alamat', true)),
				'kabupaten' => htmlspecialchars($this->input->post('kabupaten', true)),
				'kecamatan' => htmlspecialchars($this->input->post('kecamatan', true)),
				'kelurahan' => htmlspecialchars($this->input->post('kelurahan', true)),
				'nohp' => htmlspecialchars($this->input->post('nohp', true)),
				'nik' => htmlspecialchars($this->input->post('nik', true)),
				'pekerjaan' => htmlspecialchars($this->input->post('pekerjaan', true)),
				'instansi' => htmlspecialchars($this->input->post('instansi', true)),
				'pendidikan' => htmlspecialchars($this->input->post('pendidikan', true)),
				'namaibu' => htmlspecialchars($this->input->post('namaibu', true)),
				'date_created' => $date_created,
				'status' => 'waiting'
			];

			$this->db->insert('pesan_kartu', $data);
			$this->session->set_flashdata('kartu_sukses', '
					<div class="alert alert-success alert-dismissible fade show" role="alert">
					<span class="alert-text">Formulir Terkirim! Silahkan datang ke Perpusda untuk diambil.</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					</div>');

			redirect('form_kartu');
		}
	}
}