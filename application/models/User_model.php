<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {

	// Class construct
	function __construct(){
		parent::__construct();
		//Load users database
		$this->load->database('sac_fc');
	}

	//return user's password given AccessName if user exists
	public function return_password( $user )
	{
    //Clean variable for input
    $user = $this->main->prepare_sql_input( $user );
    //Prepare sql query
    $query =
    ' SELECT  UsuarioPassword FROM Usuario
      WHERE 	UsuarioAcceso = ?
      LIMIT 	1
    ';
    //Execute query with security scape variables
		$result = $this->db->query( $query,array($user) );
		//Check if user exists and return pass or false
		if( $result->num_rows() > 0 ){
			$pass = $result->row()->UsuarioPassword;
		}
		else {
			$pass = false;
		}
		return $pass;
	}

	//return user's password given ID if user exists
	public function return_password_id( $id )
	{
    //Clean variable for input
    $user = $this->main->prepare_sql_input( $id );
    //Prepare sql query
    $query =
    ' SELECT  UsuarioPassword FROM Usuario
      WHERE 	UsuarioId= ?
      LIMIT 	1
    ';
    //Execute query with security scape variables
		$result = $this->db->query( $query,array($user) );
		//Check if user exists and return pass or false
		if( $result->num_rows() > 0 ){
			$pass = $result->row()->UsuarioPassword;
		}
		else {
			$pass = false;
		}
		return $pass;
	}

	public function update_password( $data ){
		$query =
		'UPDATE Usuario
		SET UsuarioPassword = ?
		WHERE UsuarioId = ?
		';

		$result = $this->db->query( $query,$data );

		return $result;
	}

	//return all user data contained in tables user and userData
	public function return_user_fulldata( $user ){
    //Clean variable for input
    $user = $this->main->prepare_sql_input( $user );
    //Prepare sql query
    $query =
    ' SELECT t1.*,
						 t2.NivelUsuNombre,
						 t3.TipoUsuNombre,
						 t4.FacultadNombre,
						 t5.LicenciaturaNombre
			FROM Usuario AS t1
			LEFT JOIN NivelUsuario as t2
			ON t1.NivelUsuId = t2.NivelUsuId
			LEFT JOIN TipoUsuario as t3
			ON t1.TipoUsuId = t3.TipoUsuId
			LEFT JOIN Facultad as t4
			ON t1.FacultadId = t4.FacultadId
			LEFT JOIN Licenciatura as t5
			ON t1.LicenciaturaId = t5.LicenciaturaId
      WHERE 	t1.UsuarioAcceso = ?
      LIMIT 1
    ';
    //Execute query with security scape variables
		$result = $this->db->query( $query,array($user) );

		//Check if user exists and return data
		if( $result->num_rows() > 0 ){
			$data = $result->row();
		}
		else {
			$data = false;
		}

		return $data;
	}

	// Cuenta los comentarios de un usuario a los programas
	//  ->Pendientes
	//  ->Aprobados
	//  ->Rechazados
	public function cuenta_comentarios( $user ){
		// Clean input
		$user = $this->main->prepare_sql_input( $user );
		// Prepare query
		$query =
		'SELECT t1.UsuarioId,
	   				t1.Pendientes,
						t2.Aprobadas,
						t3.Rechazadas
	  FROM (
			SELECT 1 AS common_key,
			   		 t.UsuarioId,
			   		 COUNT(*) AS Pendientes
        FROM Modificacion AS t
        WHERE t.EstdModifId = 1
        AND t.UsuarioId = ?
	 	) AS t1
		JOIN (
		SELECT 1 AS common_key,
			   	 COUNT(*) AS Aprobadas
        FROM Modificacion AS t
        WHERE t.EstdModifId = 2
        AND t.UsuarioId = ?
	 	) AS t2
	 	JOIN (
				SELECT 1 AS common_key,
			   			 COUNT(*) AS Rechazadas
        FROM Modificacion AS t
        WHERE t.EstdModifId = 3
        AND t.UsuarioId = ?
	 	) AS t3
	 	ON t1.common_key = t2.common_key;
		';
		//Execute query with security scape variables
		$result = $this->db->query( $query,array($user,$user,$user) );
		//Check if user exists and return data
		if( $result->num_rows() > 0 ){
			$data = $result->row();
		}
		else {
			$data = false;
		}

		return $data;
	}

	// Regresa los comentarios
	public function return_comentarios( $user,$tipo ){
		// Prepare query
		$query =
		'SELECT t1.*,
			   		t2.ApartadoNombre,
						t3.CriterioNombre,
						t4.UsuarioNombre,
						t4.UsuarioApellidos,
						t4.UsuarioFoto,
            t5.ProgAcademicoVersion,
            t5.MateriaNombre
		FROM Modificacion AS t1
		LEFT JOIN Apartado AS t2
			ON t1.ApartadoId = t2.ApartadoId
		LEFT JOIN Criterio AS t3
			ON t1.CriterioId = t3.CriterioId
		LEFT JOIN Usuario AS t4
			ON t1.UsuarioId = t4.UsuarioId
		LEFT JOIN (
				SELECT ta.ProgAcademicoVersion,
							 ta.ProgAcademicoId,
							 tb.MateriaNombre
				FROM ProgramaAcademico AS ta
        LEFT JOIN Materia AS tb
					ON ta.MateriaId = tb.MateriaId
    ) AS t5
			ON t1.ProgAcademicoId = t5.ProgAcademicoId
		WHERE t1.UsuarioId = ?
			AND t1.EstdModifId = ?
		ORDER BY t1.ModifFecha DESC,
				 t1.ModifHora DESC;
		';

		//Execute query with security scape variables
		$result = $this->db->query( $query,array($user,$tipo) );
		//Check if user exists and return data
		if( $result->num_rows() > 0 ){
			$data = $result;
		}
		else {
			$data = false;
		}

		return $data;
	}

	// guarda un error reportado por un usuario
	public function save_error( $data ){
		// QUERY
		$query =
		'INSERT INTO Error
		(	UsuarioId,
			ErrorDescripcion,
			ErrorFecha,
			ErrorHora,
			ErrorEstado
		)
		VALUES ( ?,?,?,?,? )
		';
		// Valores
		$values = array(
			$data['user'],
			$data['error'],
			date('y-m-d'),
			date('H:i:s'),
			1
		);

		$result = $this->db->query( $query,$values );

		return $this->db->insert_id();
	}
}
