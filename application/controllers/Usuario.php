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

	// Check start session
	private function validate_session(){
		if( !$this->session->userdata('login') ){
			header( "Location: ".base_url() );
		}
	}

	public function perfil(){
		$this->validate_session();

		$this->load->view('usuario/usuario_header');
		$this->load->view('usuario/usuario_perfil');
		$this->load->view('usuario/usuario_footer');
	}

	// Nuevo usuario
	public function nuevo(){
		$this->validate_session();

		$this->load->model('universidad_model');
		$facultades = $this->universidad_model->return_facultades();

		$data['facultades'] = $this->main->render_select(
			$facultades,'facultad'
		);

		$data['niveles'] = $this->main->render_select(
	 		$this->universidad_model->return_niveles_acceso()
	 		,'nivel'
		);

		$data['tipos'] = $this->main->render_select(
	 		$this->universidad_model->return_tipos_usuario()
	 		,'tipo'
		);

		if( $facultades ){
			$data['licenciaturas'] = $this->main->render_select(
				$this->universidad_model->return_licenciaturas(
					$facultades->row()->FacultadId
				),'licenciatura'
			);
		}else{
			$data['licenciaturas'] = '<select id="licenciatura" id="name" class="form-control"></select>';
		}

		$this->load->view('usuario/usuario_header');
		$this->load->view('usuario/usuario_nuevo',$data);
		$this->load->view('usuario/usuario_footer');
	}

	//Revisa si existe el nombre de acceso para un usuario solicitado
	public function revisa_username(){
		$this->validate_session();

		$this->load->model('usuario_model');

		$exist = $this->usuario_model->check_username(
			$this->input->post('username')
		);

		$json = array('exist' => $exist );

		$out = json_encode( $json );
		header('Content-Type: application/json');
		echo $out;
	}

	public function licenciaturas(){
		$this->validate_session();

		$this->load->model('universidad_model');
		$id = intval( $this->input->post('facultad') );
		$lics = $this->universidad_model->return_licenciaturas( $id );

		$html = '';
		foreach( $lics->result() as $row ){
			$html = $html.'<option value="'.$row->LicenciaturaId.'" >';
			$html = $html.$row->LicenciaturaNombre.'</option>';
		}

		$json = array('html' => $html);

		$out = json_encode( $json );
		header('Content-Type: application/json');
		echo $out;
	}

	//Da de alta a un nuevo usuario
	public function crear(){
		$this->validate_session();
		$this->load->model('usuario_model');

		$data = $this->input->post();
		$data['pass'] = hash('sha256',$data['password_1']);

		$id = $this->usuario_model-> new_user( $data );
		$html = '<b>El usuario "'.$data['username'].'" quedó registrado con el ID => '.$id.'</b>';

		$json = array(
			'msg' => $html
		);

		$out = json_encode( $json );
		header('Content-Type: application/json');
		echo $out;
	}

	// Comentarios para los usuarios
	public function comentarios(){
		$this->validate_session();
		$this->load->library( 'Usuario_lib',array('id' => $this->session->userdata['id']) );

		// Render User Menu
		$data['menu'] = $this->menu->render_user_menu( $this->session->userdata['menu'] );
		// tipo <- tipo de comentarios recibido por metodo GET
		$data['tipo'] = $this->input->get('tipo');
		// n <- número de comentarios que se recibe por método GET
		$data['comentarios'] = $this->usuario_lib->render_comentarios( $this->input->get('n') );
		$data['error'] = $this->main->render_error_dialog();

		$this->load->view('usuario/usuario_header');
		$this->load->view('usuario/usuario_comentarios',$data);
		$this->load->view('usuario/usuario_footer');
	}

	// Modifica los datos del usuario que se encuentra en el sistema
	public function contrasena(){
		$this->validate_session();

		$this->load->model('usuario_model');

		$data['error'] = $this->main->render_error_dialog();
		$data['firstName'] = $this->session->userdata['firstName'];
		$data['lastName'] = $this->session->userdata['lastName'];
		$data['level'] = $this->session->userdata['level'];
		$data['facultad'] = $this->session->userdata['fac_name'];
		$data['licenciatura'] = $this->session->userdata['lic_name'];
		$data['uid'] = $this->session->userdata['id'];


		$this->load->view('usuario/usuario_header');
		$this->load->view('usuario/usuario_contrasena',$data);
		$this->load->view('usuario/usuario_footer');

	}

	public function modificar_contrasena(){
		$this->validate_session();

		$this->load->model('usuario_model');
		$user = intval( $this->input->post('uid') );

		$pass = $this->usuario_model->return_password_id( $user );

		if( $pass && $pass === hash('sha256',$this->input->post('current-pass')) ){
			$new_pass = hash('sha256',$this->input->post('new-pass'));

			$data['UsuarioPassword'] = $new_pass;
			$data['UsusarioId'] = $user;

			$result = $this->usuario_model->update_password( $data );

			$msg = 'Se actualizó correctamente la contraseña.';
			$success = true;
		}else{
			$msg = 'ERROR: La contraseña actual es incorrecta.';
			$success = false;
		}

		$json = array(
			'success'		=> $success,
			'mensaje'		=> $msg
		);

 		$out = json_encode( $json );
		header('Content-Type: application/json');
		echo $out;
	}

	// Reporta un error del sistema
	public function error(){
		$this->validate_session();

		$this->load->model('usuario_model');

		$data['user'] = $this->session->userdata('id');
		$data['error'] = $this->input->post('error');

		$folio = $this->usuario_model->save_error( $data );

		if( $folio ){
			$msg = '¡El error fue reportado exitosamente! Número de folio: '.$folio;
		}else{
			$msg = '¡Hubo un problema al reportar el error!';
		}
		$json = array(
			'mensaje'		=> $msg
		);

 		$out = json_encode( $json );
		header('Content-Type: application/json');
		echo $out;

	}


}
