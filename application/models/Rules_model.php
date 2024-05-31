<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rules_model extends CI_Model {

	public function getRules(){
		$query = "SELECT `collections`.*, `collectionrules`.`name`
				  FROM `collections` JOIN `collectionrules`
				  ON `collections`.`rule_id` = `collectionrules`.`id`
				  ";

		return $this->db->query($query)->result_array();
	}
}