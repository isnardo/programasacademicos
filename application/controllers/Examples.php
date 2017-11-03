<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Examples extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$this->load->database('sac_fc');
		$this->load->helper('url');

		$this->load->library('grocery_CRUD');
	}

	public function _example_output($output = null)
	{
		$this->load->view('example.php',(array)$output);
	}

	public function offices()
	{
		$output = $this->grocery_crud->render();

		$this->_example_output($output);
	}

	public function index()
	{
		$this->_example_output((object)array('output' => '' , 'js_files' => array() , 'css_files' => array()));
	}

	public function offices_management()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('offices');
			$crud->set_subject('Office');
			$crud->required_fields('city');
			$crud->columns('city','country','phone','addressLine1','postalCode');

			$output = $crud->render();

			$this->_example_output($output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}

	public function new_crud($table=null,$name=null){
		$crud = new grocery_CRUD();
		$crud->set_theme('flexigrid');
		$crud->set_table($table);
		$crud->set_subject($name);

		return $crud;
	}

	public function materia(){
		$crud = $this->new_crud('Materia','Materia');
		$crud->set_relation('LicenciaturaId','Licenciatura','LicenciaturaNombre');
		$crud->set_relation('LineaId','LineaConocimiento','LineaNombre');

		$crud->display_as('MateriaNombre','Nombre')
			->display_as('MateriaCodigo','Código')
			->display_as('LicenciaturaId','Licenciatura')
			->display_as('LineaId','Línea');

		$this->_example_output( $crud->render() );
	}

	public function facultad(){
		$crud = $this->new_crud('Facultad','Entidad');

		$crud->display_as('FacultadNombre','Nombre')
			->display_as('FacultadCiudad','Campus')
			->display_as('FacultadDireccion','Dirección')
			->display_as('FacultadTel','Teléfono');

		$this->_example_output( $crud->render() );
	}

	public function licenciatura(){
		$crud = $this->new_crud('Licenciatura','Licenciatura');
		$crud->set_relation('FacultadId','Facultad','FacultadNombre');

		$crud->display_as('LicenciaturaNombre','Nombre')
			->display_as('LicenciaturaDescripcion','Descripcion')
			->display_as('FacultadId','Facultad')
			->display_as('LicenciaturaSemestres','Semestres');

		$this->_example_output( $crud->render() );
	}

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
			NULL,
			array('LicenciaturaId' => 1)
		);
		$crud->set_relation_n_n(
			'Transversal',
			'ProgAcademicoCompTransv',
			'CompTransversal',
			'ProgAcademicoId',
			'CompTransvId',
			'CompTransvNombre'
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

		$this->_example_output( $crud->render() );
	}

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

			$this->_example_output( $crud->render() );
	}

	public function competencia_profesional(){
		$crud = $this->new_crud('CompProfesional','Competencia Profesional');
		$crud->set_relation('LicenciaturaId','Licenciatura','LicenciaturaNombre');

		$crud->display_as('CompProfNombre','Competencia')
			->display_as('CompProfDescripcion','Descripción')
			->display_as('CompProfTipo','Tipo')
			->display_as('LicenciaturaId','Licenciatura');

		$this->_example_output( $crud->render() );
	}

	public function competencia_transversal(){
		$crud = $this->new_crud('CompTransversal','Competencia Transversal');

		$crud->display_as('CompTransvNombre','Competencia')
			->display_as('CompTransvDescripcion','Descripción');

		$this->_example_output( $crud->render() );
	}

	public function unidad(){
		$crud = $this->new_crud('Unidad','Unidad');
		$crud->set_relation('ProgAcademicoId','ProgramaAcademico','ProgAcademicoId');
		$crud->display_as('UnidadNombre','Nombre')
			->display_as('UnidadHrs','Hrs')
			->display_as('UnidadObjetivo','Objetivo')
			->display_as('ProgAcademicoId','Programa')
			->display_as('UnidadId','ID');

		$crud->columns(array(
				'UnidadId',
				'UnidadNombre',
				'UnidadObjetivo',
				'UnidadHrs',
				'ProgAcademicoId'
			));

		$this->_example_output( $crud->render() );
	}

	public function tema(){
		$crud = $this->new_crud('Tema','Tema');
		$crud->set_relation('UnidadId','Unidad','{UnidadId} - {UnidadNombre}');
		$crud->display_as('TemaNombre','Nombre')
			->display_as('UnidadId','Unidad')
			->display_as('TemaHrs','Hrs')
			->display_as('TemaId','ID');

		$crud->columns(array(
				'TemaId',
				'TemaNombre',
				'TemaHrs',
				'UnidadId'
			));

		$this->_example_output( $crud->render() );
	}

	public function subtema(){
		$crud = $this->new_crud('Subtema','SubTema');
		$crud->set_relation('TemaId','Tema','{TemaId} - {TemaNombre}');
		$crud->display_as('SubtemaNombre','Nombre')
			->display_as('SubtemaId','ID')
			->display_as('TemaId','Tema');

		$crud->columns(array(
				'SubtemaId',
				'SubtemaNombre',
				'TemaId'
			));

		$this->_example_output( $crud->render() );
	}



	public function customers_management()
	{
			$crud = new grocery_CRUD();

			$crud->set_table('customers');
			$crud->columns('customerName','contactLastName','phone','city','country','salesRepEmployeeNumber','creditLimit');
			$crud->display_as('salesRepEmployeeNumber','from Employeer')
				 ->display_as('customerName','Name')
				 ->display_as('contactLastName','Last Name');
			$crud->set_subject('Customer');
			$crud->set_relation('salesRepEmployeeNumber','employees','lastName');

			$output = $crud->render();

			$this->_example_output($output);
	}

	public function orders_management()
	{
			$crud = new grocery_CRUD();

			$crud->set_relation('customerNumber','customers','{contactLastName} {contactFirstName}');
			$crud->display_as('customerNumber','Customer');
			$crud->set_table('orders');
			$crud->set_subject('Order');
			$crud->unset_add();
			$crud->unset_delete();

			$output = $crud->render();

			$this->_example_output($output);
	}

	public function products_management()
	{
			$crud = new grocery_CRUD();

			$crud->set_table('products');
			$crud->set_subject('Product');
			$crud->unset_columns('productDescription');
			$crud->callback_column('buyPrice',array($this,'valueToEuro'));

			$output = $crud->render();

			$this->_example_output($output);
	}

	public function valueToEuro($value, $row)
	{
		return $value.' &euro;';
	}

	public function film_management()
	{
		$crud = new grocery_CRUD();

		$crud->set_table('film');
		$crud->set_relation_n_n('actors', 'film_actor', 'actor', 'film_id', 'actor_id', 'fullname','priority');
		$crud->set_relation_n_n('category', 'film_category', 'category', 'film_id', 'category_id', 'name');
		$crud->unset_columns('special_features','description','actors');

		$crud->fields('title', 'description', 'actors' ,  'category' ,'release_year', 'rental_duration', 'rental_rate', 'length', 'replacement_cost', 'rating', 'special_features');

		$output = $crud->render();

		$this->_example_output($output);
	}

	public function film_management_twitter_bootstrap()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('twitter-bootstrap');
			$crud->set_table('film');
			$crud->set_relation_n_n('actors', 'film_actor', 'actor', 'film_id', 'actor_id', 'fullname','priority');
			$crud->set_relation_n_n('category', 'film_category', 'category', 'film_id', 'category_id', 'name');
			$crud->unset_columns('special_features','description','actors');

			$crud->fields('title', 'description', 'actors' ,  'category' ,'release_year', 'rental_duration', 'rental_rate', 'length', 'replacement_cost', 'rating', 'special_features');

			$output = $crud->render();
			$this->_example_output($output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}

	function multigrids()
	{
		$this->config->load('grocery_crud');
		$this->config->set_item('grocery_crud_dialog_forms',true);
		$this->config->set_item('grocery_crud_default_per_page',10);

		$output1 = $this->offices_management2();

		$output2 = $this->employees_management2();

		$output3 = $this->customers_management2();

		$js_files = $output1->js_files + $output2->js_files + $output3->js_files;
		$css_files = $output1->css_files + $output2->css_files + $output3->css_files;
		$output = "<h1>List 1</h1>".$output1->output."<h1>List 2</h1>".$output2->output."<h1>List 3</h1>".$output3->output;

		$this->_example_output((object)array(
				'js_files' => $js_files,
				'css_files' => $css_files,
				'output'	=> $output
		));
	}

	public function offices_management2()
	{
		$crud = new grocery_CRUD();
		$crud->set_table('offices');
		$crud->set_subject('Office');

		$crud->set_crud_url_path(site_url(strtolower(__CLASS__."/".__FUNCTION__)),site_url(strtolower(__CLASS__."/multigrids")));

		$output = $crud->render();

		if($crud->getState() != 'list') {
			$this->_example_output($output);
		} else {
			return $output;
		}
	}

	public function employees_management2()
	{
		$crud = new grocery_CRUD();

		$crud->set_theme('datatables');
		$crud->set_table('employees');
		$crud->set_relation('officeCode','offices','city');
		$crud->display_as('officeCode','Office City');
		$crud->set_subject('Employee');

		$crud->required_fields('lastName');

		$crud->set_field_upload('file_url','assets/uploads/files');

		$crud->set_crud_url_path(site_url(strtolower(__CLASS__."/".__FUNCTION__)),site_url(strtolower(__CLASS__."/multigrids")));

		$output = $crud->render();

		if($crud->getState() != 'list') {
			$this->_example_output($output);
		} else {
			return $output;
		}
	}

	public function customers_management2()
	{
		$crud = new grocery_CRUD();

		$crud->set_table('customers');
		$crud->columns('customerName','contactLastName','phone','city','country','salesRepEmployeeNumber','creditLimit');
		$crud->display_as('salesRepEmployeeNumber','from Employeer')
			 ->display_as('customerName','Name')
			 ->display_as('contactLastName','Last Name');
		$crud->set_subject('Customer');
		$crud->set_relation('salesRepEmployeeNumber','employees','lastName');

		$crud->set_crud_url_path(site_url(strtolower(__CLASS__."/".__FUNCTION__)),site_url(strtolower(__CLASS__."/multigrids")));

		$output = $crud->render();

		if($crud->getState() != 'list') {
			$this->_example_output($output);
		} else {
			return $output;
		}
	}

}
