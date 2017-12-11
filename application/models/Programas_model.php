<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Programas_model extends CI_Model {

	// Class construct
	function __construct(){
		parent::__construct();
		//Load users database
		$this->load->database('sac_fc');
	}

	//return all user data contained in tables user and userData
	public function return_list( $licenciatura ){
		// Clean input
		$licenciatura = $this->main->prepare_sql_input( $licenciatura );
    //Prepare sql query
    $query =
    ' SELECT t1.ProgAcademicoId,t1.ProgAcademicoVersion,
			t2.MateriaNombre
			FROM ProgramaAcademico AS t1
			LEFT JOIN Materia AS t2
			ON t1.MateriaId = t2.MateriaId
			WHERE t2.LicenciaturaId = ?
			ORDER BY t1.ProgAcademicoVersion
    ';
    //Execute query with security scape variables
		$result = $this->db->query( $query,array($licenciatura) );

		//Check if user exists and return data
		if( $result->num_rows() > 0 ){
			$data = $result;
		}
		else {
			$data = false;
		}

		return $data;
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

	public function return_datos_basicos( $id ){
		// Clean input
		$id = $this->main->prepare_sql_input( $id );
		// Obtenemos los datos básicos del curso
		$query =
    ' SELECT t1.*,
						 t2.MateriaNombre,
			       t3.LicenciaturaNombre,
			       t4.FacultadNombre
			FROM ProgramaAcademico AS t1
			LEFT JOIN Materia AS t2
				ON t1.MateriaId = t2.MateriaId
			LEFT JOIN Licenciatura AS t3
				ON t2.LicenciaturaId = t3.LicenciaturaId
			LEFT JOIN Facultad AS t4
				ON t3.FacultadId = t4.FacultadId
			WHERE t1.ProgAcademicoId = ?
    ';
		//Execute query with security scape variables
		$result = $this->db->query( $query,array($id) );
		//Check if user exists and return data
		if( $result->num_rows() > 0 ){
			$data = $result->row();
		}
		else {
			$data = false;
		}

		return $data;
	}

	public function return_unidades( $id ){
		// Clean input
		$id = $this->main->prepare_sql_input( $id );
		// Obtenemos datos de unidades
		$query =
    ' SELECT t1.UnidadObjetivo,
						 t1.UnidadNombre,
						 t1.UnidadHrs,
						 t1.UnidadId
			FROM Unidad AS t1
			WHERE t1.ProgAcademicoId = ?
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

	// Regresa los temas para una lista de unidades dada
	public function return_temas( $units ){
		$data = false;
		if( $units ){
			$len = $units->num_rows();
			$i = 1;
			$where = '';
			foreach ( $units->result() as $row ){
				if ( $i < $len ){
					$where = $where.' UnidadId=? OR';
				}else{
					$where = $where.' UnidadId=?';
				}
				$id[$i] = $row->UnidadId;
				$i++;
			}

			$query =
	    ' SELECT *
				FROM Tema
				WHERE '.$where;

			//Execute query with security scape variables
			$result = $this->db->query( $query,$id );
			//Check if user exists and return data
			if( $result->num_rows() > 0 ){
				$data = $result;
			}
			else {
				$data = false;
			}
		}
		return $data;
	}

	//Regresa los subtemas para una lista de temas dada
	public function return_subtemas( $temas ){
		$data = false;
		if( $temas ){
			$len = $temas->num_rows();
			$i = 1;
			$where = '';
			foreach ( $temas->result() as $row ){
				if ( $i < $len ){
					$where = $where.' TemaId=? OR';
				}else{
					$where = $where.' TemaId=?';
				}
				$id[$i] = $row->TemaId;
				$i++;
			}

			$query =
	    ' SELECT *
				FROM Subtema
				WHERE '.$where;

			//Execute query with security scape variables
			$result = $this->db->query( $query,$id );
			//Check if user exists and return data
			if( $result->num_rows() > 0 ){
				$data = $result;
			}
			else {
				$data = false;
			}
		}

		return $data;
	}

	public function return_estrategias( $id ){
		// Clean input
		$id = $this->main->prepare_sql_input( $id );
		// Obtenemos estrategias de enseñanaza y aprendizaje
		$query =
    ' SELECT *
			FROM EstrategiaEnsenanza
			WHERE ProgAcademicoId = ?
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

	public function return_evaluacion( $id ){
		// Clean input
		$id = $this->main->prepare_sql_input( $id );
		// Obtenemos estrategias de enseñanaza y aprendizaje
		$query =
    ' SELECT *
			FROM Evaluacion
			WHERE ProgAcademicoId = ?
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

	public function return_bibliografia( $id ){
		// Clean input
		$id = $this->main->prepare_sql_input( $id );
		// Obtenemos estrategias de enseñanaza y aprendizaje
		$query =
    ' SELECT t1.BiblioTipoId,
						 t1.BibliografiaNombre,
			       t2.BiblioTipoNombres
			FROM Bibliografia AS t1
			LEFT JOIN BibliografiaTipo AS t2
				ON t1.BiblioTipoId = t2.BiblioTipoId
			WHERE t1.ProgAcademicoId = ?
			ORDER BY t1.BiblioTipoId
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

	public function return_comentarios( $id ){
		// Clean input
		$id = $this->main->prepare_sql_input( $id );
		// Prepare query
		$query =
		'SELECT t1.*,
			   		t2.ApartadoNombre,
						t3.CriterioNombre,
						t4.UsuarioNombre,
						t4.UsuarioApellidos,
						t4.UsuarioFoto
		FROM Modificacion AS t1
		LEFT JOIN Apartado AS t2
			ON t1.ApartadoId = t2.ApartadoId
		LEFT JOIN Criterio AS t3
			ON t1.CriterioId = t3.CriterioId
		LEFT JOIN Usuario AS t4
			ON t1.UsuarioId = t4.UsuarioId
		WHERE t1.ProgAcademicoId = ?
		ORDER BY t1.ModifFecha DESC,
						 t1.ModifHora DESC
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

	public function return_comentario( $id ){
		$query =
		'SELECT t1.*,
						t2.ApartadoNombre,
						t3.CriterioNombre,
						t4.UsuarioNombre,
						t4.UsuarioApellidos,
						t4.UsuarioFoto
		FROM Modificacion AS t1
		LEFT JOIN Apartado AS t2
			ON t1.ApartadoId = t2.ApartadoId
		LEFT JOIN Criterio AS t3
			ON t1.CriterioId = t3.CriterioId
		LEFT JOIN Usuario AS t4
			ON t1.UsuarioId = t4.UsuarioId
		WHERE t1.ModifId = ?
		';

		//Execute query with security scape variables
		$result = $this->db->query( $query,array($id) );
		//Check if user exists and return data
		if( $result->num_rows() > 0 ){
			$data = $result->row();
		}
		else {
			$data = false;
		}

		return $data;
	}

	public function nuevo_comentario( $data ){
		// QUERY
		$query =
		'INSERT INTO Modificacion
		(	ModifSugerencia,
			ModifJustificacion,
			ModifFecha,
			ModifHora,
			UsuarioId,
			EstdModifId,
			ProgAcademicoId,
			ApartadoId,
			CriterioId
		)
		VALUES ( ?,?,?,?,?,?,?,?,? )
		';
		// VALORES
		$values = array(
			$data['sugerencia'],
			$data['justificacion'],
			date('y-m-d'),
			date('H:i:s'),
			$data['usuario'],
			1,
			$data['programa'],
			$data['apartado'],
			$data['criterio']
		);

		$id = false;
		//Execute query with security scape variables
		if( $this->db->query( $query,$values ) ){
			// Select last ID inserted
			$query = 'SELECT LAST_INSERT_ID() AS id';
			$result = $this->db->query( $query );
			$id = $result->row()->id;
		}
		// Return comment inserted id
		return $id;
	}

}
