<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuario extends CI_Controller {

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

	// Display Login Page
	public function index()	{
		header( "Location: ".base_url('index.php/cpanel') );
	}

	public function perfil(){
		if( $this->session->userdata('login') ){
			$this->load->view('usuario/usuario_header');
			$this->load->view('usuario/usuario_perfil');
			$this->load->view('usuario/usuario_footer');
		}else{
			header( "Location: ".base_url() );
		}
	}

	public function nuevo(){
		if( $this->session->userdata('login') ){
			$this->load->view('usuario/usuario_header');
			$this->load->view('usuario/usuario_nuevo');
			$this->load->view('usuario/usuario_footer');
		}else{
			header( "Location: ".base_url() );
		}
	}

	public function comentarios(){
		if( $this->session->userdata('login') ){
			$this->load->library( 'user',array('id' => $this->session->userdata['id']) );

			// Render User Menu
			$data['menu'] = $this->menu->render_user_menu( $this->session->userdata['menu'] );
			// tipo <- tipo de comentarios recibido por metodo GET
			$data['tipo'] = $this->input->get('tipo');
			// n <- número de comentarios que se recibe por método GET
			$data['comentarios'] = $this->user->render_comentarios( $this->input->get('n') );
			$data['error'] = $this->main->render_error_dialog();

			$this->load->view('usuario/usuario_header');
			$this->load->view('usuario/usuario_comentarios',$data);
			$this->load->view('usuario/usuario_footer');
		}else{
			header( "Location: ".base_url() );
		}
	}

	public function error(){
		if( $this->session->userdata('login') ){
			$this->load->model('user_model');

			$data['user'] = $this->session->userdata('id');
			$data['error'] = $this->input->post('error');

			if( $this->user_model->save_error( $data ) ){
				$msg = '¡El error fue reportado exitosamente!';
			}else{
				$msg = '¡Hubo un problema al reportar el error!';
			}

			$json = array(
				'mensaje'		=> $msg
			);

	 		$out = json_encode( $json );
			header('Content-Type: application/json');
			echo $out;

		}else{
			header( "Location: ".base_url() );
		}
	}


}
