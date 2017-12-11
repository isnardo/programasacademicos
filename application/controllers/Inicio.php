<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inicio extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	// Constructor de la Clase
	function __construct(){
		parent::__construct();
	}

	// Check start session
	private function validate_session(){
		if( !$this->session->userdata('login') ){
			header( "Location: ".base_url() );
		}
	}

	// Display Cpanel initial page
	public function index()	{
		$this->validate_session();

		$this->load->library('programas_lib');
		$this->load->model('usuario_model');

		// Cargar lista de programas academicos disponibles para la licenciatura que pertenece
		$data['lista'] = $this->programas_lib->render_lista( $this->session->userdata('lic_id')  );
		//Modificaciones sugeridas por el usuario
		$comments = $this->usuario_model->cuenta_comentarios( $this->session->userdata('id') );
		$data['pendientes'] = $comments->Pendientes;
		$data['url_pendientes'] = site_url('usuario/comentarios?tipo=Pendientes&n=1');
		$data['aprobadas'] = $comments->Aprobadas;
		$data['url_aprobadas'] = site_url('usuario/comentarios?tipo=Aprobadas&n=2');
		$data['rechazadas'] = $comments->Rechazadas;
		$data['url_rechazadas'] = site_url('usuario/comentarios?tipo=Rechazadas&n=3');

		$data['menu']  = $this->menu->render_user_menu( $this->session->userdata['menu'] );
		$data['error'] = $this->main->render_error_dialog();

		$this->load->view('inicio/inicio_header');
		$this->load->view('inicio/inicio',$data);
		$this->load->view('inicio/inicio_footer');
	}

}
