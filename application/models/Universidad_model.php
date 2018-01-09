<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Universidad_model extends CI_Model {

	// Class construct
	function __construct(){
		parent::__construct();
		//Load users database
		$this->load->database('sac_fc');
	}


	public function return_lic_name( $id ){
		$query =
    ' SELECT t1.LicenciaturaNombre
		  FROM Licenciatura AS t1
		  WHERE t1.LicenciaturaId = ?
		';

		//Execute query with security scape variables
		$result = $this->db->query( $query,array($id) );
		//Check if user exists and return data
		if( $result->num_rows() > 0 ){
			$data = $result->row()->LicenciaturaNombre;
		}
		else {
			$data = false;
		}

		return $data;
	}

	public function return_facultades( ){
		$query =
    ' SELECT t1.FacultadId,
						 t1.FacultadNombre
		  FROM Facultad AS t1
			ORDER BY t1.FacultadNombre
		';

		//Execute query with security scape variables
		$result = $this->db->query( $query );

		//Check if user exists and return data
		if( $result->num_rows() > 0 ){
			$data = $result;
		}
		else {
			$data = false;
		}

		return $data;
	}

	public function return_licenciaturas( $id ){
		$query =
		' SELECT t1.LicenciaturaId,
						 t1.LicenciaturaNombre
			FROM Licenciatura AS t1
			WHERE FacultadId = ?
			ORDER BY t1.LicenciaturaNombre
		';

		//Execute query with security scape variables
		$result = $this->db->query( $query,array($id) );

		//Check if user exists and return data
		if( $result->num_rows() > 0 ){
			$data = $result;
		}
		else {
			$data = false;
		}

		return $data;
	}

	public function return_niveles_acceso( ){
		$query =
		' SELECT t1.NivelUsuId,
						 t1.NivelUsuNombre
			FROM NivelUsuario AS t1
			ORDER BY t1.NivelUsuId
		';

		//Execute query with security scape variables
		$result = $this->db->query( $query );

		//Check if user exists and return data
		if( $result->num_rows() > 0 ){
			$data = $result;
		}
		else {
			$data = false;
		}

		return $data;
	}

	// Regresa los tipos de usuarios
	public function return_tipos_usuario( ){
		$query =
		' SELECT t1.TipoUsuId,
						 t1.TipoUsuNombre
			FROM TipoUsuario AS t1
			ORDER BY t1.TipoUsuNombre
		';

		//Execute query with security scape variables
		$result = $this->db->query( $query );

		//Check if user exists and return data
		if( $result->num_rows() > 0 ){
			$data = $result;
		}
		else {
			$data = false;
		}

		return $data;
	}



}
