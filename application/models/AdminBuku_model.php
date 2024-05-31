<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AdminBuku_model extends CI_Model {
	public function getAdBuku($limit, $start, $keyword_edit = null){

		if ($keyword_edit){
			$this->db->like('Title', $keyword_edit);
			$this->db->or_like('Author', $keyword_edit);
			$this->db->or_like('Publisher', $keyword_edit);
		}
		$this->db->order_by('CreateDate', 'DESC');
		return $this->db->get('collections', $limit, $start, $keyword_edit)->result_array();
	}
	public function countAllBuku(){
		return $this->db->get('collections')->num_rows();
	}

	public function getBukuById($ID){
		return $this->db->get_where('collections', ['ID' => $ID])->row_array();
	}

	public function deleteBukuById($ID){
		$this->db->where('ID', $ID);
		$this->db->delete('collections');
	}

	public function newbookThisMonth(){
		$this->load->helper('date');
		
		$query = "SELECT CONCAT(YEAR(`CreateDate`),'/',MONTH(`CreateDate`)) AS bulanke, COUNT(*) AS jumlah
				  FROM `collections`
				  WHERE CONCAT(YEAR(`CreateDate`),'/',MONTH(`CreateDate`))=CONCAT(YEAR(NOW()),'/',MONTH(NOW()))
				  GROUP BY YEAR(`CreateDate`),MONTH(`CreateDate`)
				 ";
		return $this->db->query($query)->result_array();	
	}
}