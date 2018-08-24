<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

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
		$data['form_action'] = site_url('login/validate_user');
		$data['uaslp_logo'] = $this->main->image('uaslp-logo-fav.png');
		$data['system_version'] = $this->main->system_version;
		$data['institution'] = $this->main->institution;
		$data['group'] = $this->main->group;
		$data['img_loading'] = $this->main->image('loading.gif');

		$this->load->view('login/login_header');
		$this->load->view('login/login',$data);
		$this->load->view('login/login_footer');
	}

	// Check user and password
	public function validate_user() {
		header("access-control-allow-origin: *");
		//Load modeL
		$this->load->model('usuario_model');


		//Execute Model to obtain the user's password
		$pass = $this->usuario_model->return_password( $this->input->post('user') );

		//check if user exists and verify password
		if( $pass && $pass === hash('sha256',$this->input->post('password')) ){
			$success  = true;
		}else{
			$success = false;
		}

		// Output to return JSON variable with boolean data of success
		$json = array(
			"success" => $pass,
			"url" 	  => site_url('login/start')
		);

 		$out = json_encode( $json );
		header('Content-Type: application/json');
		echo $out;
	}

	// Session start after login user validation
	public function start(){
			//Load model
			$this->load->model('usuario_model');
			//Obtain user data
			$data = $this->usuario_model->return_user_fulldata( $this->input->post('user') );

			// Check data and start or exit session
			if( $data && hash('sha256',$this->input->post('password')) === $data->UsuarioPassword ){
				$dataSession = array(
					'id' 				=> $data->UsuarioId,
					'name' 			=> $data->UsuarioAcceso,
					'firstName' => $data->UsuarioNombre,
					'lastName'	=> $data->UsuarioApellidos,
					'level' 		=> $data->NivelUsuNombre,
					'level_id'	=> $data->NivelUsuId,
					'email' 		=> $data->UsuarioEmail,
					'type'			=> $data->TipoUsuNombre,
					'type_id'		=> $data->TipoUsuId,
					'fac_id'		=> $data->FacultadId,
					'fac_name'	=> $data->FacultadNombre,
					'lic_id'		=> $data->LicenciaturaId,
					'lic_name'	=> $data->LicenciaturaNombre,
					'photo'			=> $data->UsuarioId.$data->UsuarioFoto,
					'menu'			=> $this->menu->user_side_menu( $data->NivelUsuId ),
					'login'			=> true
				);
				$this->session->set_userdata( $dataSession );
				header( "Location: ".site_url('inicio') );
			}else{
				header( "Location: ".base_url() );
			}
	}

	// Session stop and destroy data
	public function stop(){
		if( $this->session->userdata('login') ){
			$this->session->sess_destroy();
			header( "Location: ".base_url() );
		}
		else{
			header( "Location: ".base_url() );
		}
	}

}
