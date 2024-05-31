<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Form_buku extends CI_Controller {

	public function index($ID){
		$this->load->model('Buku_model');

		$data['title'] = 'Buat Pesanan Buku';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['buku'] = $this->Buku_model->getBukuById($ID);

		$this->load->view('sidebar/sidebar', $data);
		$this->load->view('buku/tabel_buku', $data);
	}
 
	public function pesan_buku()
	{
		$this->load->helper('date');
		$this->form_validation->set_rules('nama', 'Nama', 'trim|required');
		$datestring = '%Y-%m-%d %H-%i-%s';
        $time = time();
        $date_created = mdate($datestring, $time);

		if ($this->form_validation->run() == false){
			$this->load->view('buku/tabel_buku', $data);
		}else{
			$data = [
				'nama' => htmlspecialchars($this->input->post('nama', true)),
				'email' => htmlspecialchars($this->input->post('email', true)),
				'id_anggota' => htmlspecialchars($this->input->post('id_anggota', true)),
				'judul' => htmlspecialchars($this->input->post('judul', true)),
				'penulis' => htmlspecialchars($this->input->post('penulis', true)),
				'penerbit' => htmlspecialchars($this->input->post('penerbit', true)),
				'kelas' => htmlspecialchars($this->input->post('kelas', true)),
				'keterangan' => htmlspecialchars($this->input->post('keterangan', true)),
				'tanggal_pesan' => $date_created, 
				'tanggal_action' => '',
				'status' => 'waiting'
			];
			
			$this->db->insert('pesan_buku', $data);

			$datanotif = [
				'nama' => htmlspecialchars($this->input->post('nama', true)),
				'email' => htmlspecialchars($this->input->post('email', true)),
				'judul' => htmlspecialchars($this->input->post('judul', true)),
				'tanggal_pesan' => $date_created,
				'tanggal_action' => '',
				'status' => 'waiting'
			];
			
			//Notifikasi ke Admin (Insert data ke tabel notifikasi)
			require APPPATH . 'views/vendor/autoload.php';

			  $options = array(
			    'cluster' => 'ap1',
			    'useTLS' => true
			  );
			  $pusher = new Pusher\Pusher(
			    'ecce112096782c16e13b',
			    '56a63112921540e25ec0',
			    '1365252',
			    $options
			  );

			  $pusher->trigger('my-channel', 'my-event', $datanotif);

			$this->db->insert('notifikasi', $datanotif);
			//end of notifikasi ke admin

			$this->session->set_flashdata('message_buku', '<div class="alert alert-success alert-dismissible fade show" role="alert">
				<span class="alert-text">Pesanan terkirim! Silahkan tunggu konfirmasi dari petugas</span>
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>');
			redirect('infopesan');
		}
	}
}