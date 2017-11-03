<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Crud extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$this->load->database('sac_fc');
		$this->load->helper('url');

		$this->load->library('grocery_CRUD');
	}

	private function crud_output($output = null)
	{
		$this->load->view('crud.php',(array)$output);
	}

	private function validate_session(){
		if( !$this->session->userdata('login') ){
			header( "Location: ".base_url() );
		}
	}

	public function index()
	{
		$this->validate_session();

		$this->crud_output((object)
		array('output' => '' ,
					'js_files' => array() ,
					'css_files' => array()
				 )
		);
	}


	public function new_crud($table=null,$name=null){
		$this->validate_session();

		$crud = new grocery_CRUD();
		$crud->set_theme('flexigrid');
		$crud->set_table($table);
		$crud->set_subject($name);

		return $crud;
	}

	// Muestra los errores reportados
	public function error(){

		$crud = $this->new_crud('Error','Error');
		$crud->set_relation('UsuarioId','Usuario','{UsuarioNombre} {UsuarioApellidos}');

		$crud->display_as('ErrorId','No. Error')
			->display_as('UsuarioId','Usuario')
			->display_as('ErrorDescripcion','Error')
			->display_as('ErrorFecha','Fecha')
			->display_as('ErrorHora','Hora')
			->display_as('ErrorEstado','Estado');

		$this->crud_output( $crud->render() );
	}

	// Muestra las materias
	public function materia(){
		$crud = $this->new_crud('Materia','Materia');
		$crud->set_relation('LicenciaturaId','Licenciatura','LicenciaturaNombre');
		$crud->set_relation('LineaId','LineaConocimiento','LineaNombre');

		$crud->display_as('MateriaNombre','Nombre')
			->display_as('MateriaCodigo','Código')
			->display_as('LicenciaturaId','Licenciatura')
			->display_as('LineaId','Línea');

		$this->crud_output( $crud->render() );
	}

	// Muestra las facultades
	public function facultad(){
		$crud = $this->new_crud('Facultad','Entidad');

		$crud->display_as('FacultadNombre','Nombre')
			->display_as('FacultadCiudad','Campus')
			->display_as('FacultadDireccion','Dirección')
			->display_as('FacultadTel','Teléfono');

		$this->crud_output( $crud->render() );
	}

	// Muestra las licenciaturas
	public function licenciatura(){
		$crud = $this->new_crud('Licenciatura','Licenciatura');
		$crud->set_relation('FacultadId','Facultad','FacultadNombre');

		$crud->display_as('LicenciaturaNombre','Nombre')
			->display_as('LicenciaturaDescripcion','Descripcion')
			->display_as('FacultadId','Facultad')
			->display_as('LicenciaturaSemestres','Semestres');

		$this->crud_output( $crud->render() );
	}

	// Muestra los programas academicos
	public function programa(){
		$crud = $this->new_crud('ProgramaAcademico','Programa');
		$crud->set_relation('MateriaId','Materia','MateriaNombre',array('LicenciaturaId' => 1));
		$crud->set_relation('TipoMateriaId','TipoMateria','TipoMateriaNombre');
		$crud->set_relation('TipoPropCurrId','TipoPropuestaCurricular','TipoPropCurrNombre');
		$crud->set_relation_n_n(
			'Profesional',
			'ProgAcademicoCompProf',
			'CompProfesional',
			'ProgAcademicoId',
			'CompProfId',
			'CompProfNombre',
			'priority',
			array('LicenciaturaId' => 1)
		);
		$crud->set_relation_n_n(
			'Transversal',
			'ProgAcademicoCompTransv',
			'CompTransversal',
			'ProgAcademicoId',
			'CompTransvId',
			'CompTransvNombre',
			'priority'
		);

		$crud->display_as('ProgAcademicoSemestre','Semestre')
			->display_as('ProgAcademicoHrsTeoria','Hrs Teoría')
			->display_as('ProgAcademicoHrsPractica','Hrs Práctica')
			->display_as('ProgAcademicoHrsAdicional','Hrs Adicional')
			->display_as('ProgAcademicoCreditos','Créditos')
			->display_as('ProgAcademicoObjGeneral','Objetivo General')
			->display_as('TipoMateriaId','Tipo')
			->display_as('MateriaId','Materia')
			->display_as('TipoPropCurrId','Propuesta')
			->display_as('ProgAcademicoCompartido','Compartido')
			->display_as('ProgAcademicoSeriado','Seriado')
			->display_as('ProgAcademicoVersion','Versión')
			->display_as('Profesional','Competencias Profesionales')
			->display_as('Transversal','Competencias Transversales')
			->display_as('ProgAcademicoId','ID');

		$crud->columns(array(
			'ProgAcademicoId',
			'MateriaId',
			'ProgAcademicoSemestre',
			'ProgAcademicoHrsTeoria',
			'ProgAcademicoHrsPractica',
			'ProgAcademicoCreditos',
			'TipoMateriaId',
			'ProgAcademicoVersion'
		));

		$this->crud_output( $crud->render() );
	}

	// Muestra los usuarios
	public function usuario()
	{
			$crud = $this->new_crud('Usuario','Usuario');

			$crud->columns(
				'UsuarioAcceso',
				'UsuarioEmail',
				'UsuarioNombre',
				'UsuarioApellidos',
				'NivelUsuId',
				'UsuarioPassword'
			);
			$crud->set_relation('NivelUsuId','NivelUsuario','NivelUsuNombre');
			$crud->display_as('UsuarioAcceso','Alias')
					 ->display_as('UsuarioEmail','Email')
					 ->display_as('UsuarioNombre','Nombre')
					 ->display_as('UsuarioApellidos','Apellidos')
					 ->display_as('NivelUsuId','Nivel')
					 ->display_as('UsuarioPassword','Contraseña');

			$crud->field_type('UsuarioPassword', 'password');
			$crud->unset_delete();

			$this->crud_output( $crud->render() );
	}

	// Muestra las competencias profesionales
	public function competencia_profesional(){
		$crud = $this->new_crud('CompProfesional','Competencia Profesional');
		$crud->set_relation('LicenciaturaId','Licenciatura','LicenciaturaNombre');

		$crud->display_as('CompProfNombre','Competencia')
			->display_as('CompProfDescripcion','Descripción')
			->display_as('CompProfTipo','Tipo')
			->display_as('LicenciaturaId','Licenciatura');

		$this->crud_output( $crud->render() );
	}

	// Muestra las competencias transversales
	public function competencia_transversal(){
		$crud = $this->new_crud('CompTransversal','Competencia Transversal');

		$crud->display_as('CompTransvNombre','Competencia')
			->display_as('CompTransvDescripcion','Descripción');

		$this->crud_output( $crud->render() );
	}

	// Muestra las unidades de todos los programas academicos
	public function unidad(){
		$crud = $this->new_crud('Unidad','Unidad');
		$crud->set_relation('ProgAcademicoId','ProgramaAcademico','Programa Id: {ProgAcademicoId}');
		$crud->display_as('UnidadOrden','Orden')
			->display_as('UnidadNombre','Nombre')
			->display_as('UnidadHrs','Hrs')
			->display_as('UnidadObjetivo','Objetivo')
			->display_as('ProgAcademicoId','Programa')
			->display_as('UnidadId','ID');

		$crud->columns(array(
				'UnidadId',
				'ProgAcademicoId',
				'UnidadOrden',
				'UnidadNombre',
				'UnidadObjetivo',
				'UnidadHrs'
			));

		$this->crud_output( $crud->render() );
	}

	// Muestra todos los temas
	public function tema(){
		$crud = $this->new_crud('Tema','Tema');
		$crud->set_relation('UnidadId','Unidad','Unidad Id: {UnidadId}');
		$crud->display_as('TemaOrden','Orden')
			->display_as('TemaNombre','Nombre')
			->display_as('UnidadId','Unidad')
			->display_as('TemaHrs','Hrs')
			->display_as('TemaId','ID');

		$crud->columns(array(
				'TemaId',
				'UnidadId',
				'TemaOrden',
				'TemaNombre',
				'TemaHrs'
			));

		$this->crud_output( $crud->render() );
	}

	// Muestra subtemas
	public function subtema(){
		$crud = $this->new_crud('Subtema','SubTema');
		$crud->set_relation('TemaId','Tema','Tema Id: {TemaId}');
		$crud->display_as('SubtemaOrden','Orden')
			->display_as('SubtemaNombre','Nombre')
			->display_as('SubtemaId','ID')
			->display_as('TemaId','Tema');
		$crud->columns(array(
				'SubtemaId',
				'TemaId',
				'SubtemaOrden',
				'SubtemaNombre'
			));

		$this->crud_output( $crud->render() );
	}

	// Estrategias de Enseñanza Aprendizaje
	public function estrategia(){
		$crud = $this->new_crud('EstrategiaEnsenanza','Estrategia');
		$crud->set_relation('ProgAcademicoId','ProgramaAcademico','Programa Id: {ProgAcademicoId}');

		$crud->display_as('ProgAcademicoId','Programa')
			->display_as('EstEnsenanzaOrden','Orden')
			->display_as('EstEnsenanzaNombre','Estrategia');

		$this->crud_output( $crud->render() );
	}

	// Estrategias de Enseñanza Aprendizaje
	public function evaluacion(){
		$crud = $this->new_crud('Evaluacion','Evaluación');
		$crud->set_relation('ProgAcademicoId','ProgramaAcademico','Programa Id: {ProgAcademicoId}');

		$crud->display_as('ProgAcademicoId','Programa')
			->display_as('EvaluacionOrden','Orden')
			->display_as('EvaluacionNombre','Evaluación')
			->display_as('EvaluacionPeriodicidad','Periodicidad')
			->display_as('EvaluacionPonderacion','Ponderación')
			->display_as('EvaluacionAbarca','Abarca');

		$this->crud_output( $crud->render() );
	}

	public function bibliografia(){
		$crud = $this->new_crud('Bibliografia','Bibliografía');
		$crud->set_relation('ProgAcademicoId','ProgramaAcademico','Programa Id: {ProgAcademicoId}');
		$crud->set_relation('BiblioTipoId','BibliografiaTipo','BiblioTipoNombre');

		$crud->display_as('ProgAcademicoId','Programa')
			->display_as('BiblioTipoId','Tipo')
			->display_as('BibliografiaNombre','Recurso');

		$this->crud_output( $crud->render() );
	}

}
