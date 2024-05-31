<?php
function cek_login(){
	
	$ci = get_instance();
	if (!$ci->session->userdata('email')){
		redirect('Auth');
	} else {
		$role_id = $ci->session->userdata('role_id');
		$menu = $ci->uri->segment(1);

		$queryMenu = $ci->db->get_where('user_sub_menu', ['url' => $menu])->row_array();
		$menu_id = $queryMenu['menu_id'];

		$userAccess = $ci->db->get_where('user_access_menu', [
			'role_id' => $role_id, 
			'menu_id' => $menu_id
		]);

		if ($userAccess->num_rows() < 1) {
			redirect('auth/blocked');
		}
	}
}