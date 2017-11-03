<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Programas extends CI_Controller {

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
		header( "Location: ".base_url('index.php/inicio') );
	}

	public function nuevo(){
		if( $this->session->userdata('login') ){
			$this->load->view('programas/programas_nuevo_header');
			$this->load->view('programas/programas_nuevo');
			$this->load->view('programas/programas_nuevo_footer');
		}else{
			header( "Location: ".base_url() );
		}
	}

	//Muestra la lista de los programas académicos para una licenciatura indicada
	public function lista( ){
		if( $this->session->userdata('login') ){

			$this->load->model('programas_model');

			$lista = $this->programas_model->return_list( 1 );

			$data['menu']  = $this->menu->render_user_menu( $this->session->userdata['menu'] );
			$data['lista'] = $this->main->render_lista_programas($lista);
			$data['error'] = $this->main->render_error_dialog();

			$this->load->view('programas/programas_lista_header');
			$this->load->view('programas/programas_lista',$data);
			$this->load->view('programas/programas_lista_footer');
		}else{
			header( "Location: ".base_url() );
		}
	}

	public function ver( ){
		if( $this->session->userdata('login') ){
			// ID del programa a mostrar
			if( $this->input->server('REQUEST_METHOD') == 'GET'){
				$id = $this->input->get('programa');
			}else{
				$id = $this->input->post('programa');
			}
			// Load library programa
			$this->load->library( 'programa',array('id' => $id) );

			$data['menu'] = $this->menu->render_user_menu( $this->session->userdata['menu'] );
			$data['error'] = $this->main->render_error_dialog();

			// Generamos el HTML de los elementos del programa
			$data['licenciatura'] = $this->programa->licenciatura();
			// Nombre en Mayusculas
			$data['programa_id'] = $id;
			$data['usuario'] = $this->session->userdata['id'];
			$data['programa'] = $this->programa->render();
			$data['comentarios'] = $this->programa->render_comentarios();
			$data['numero_comentarios'] = $this->programa->get_num_commentarios();

			$data['url_nuevo_comentario'] = site_url('programas/nuevocomentario');
			$data['img_loading'] = $this->main->image('loading.gif');

			// Cargamos la vista
			$this->load->view('programas/programas_ver_header');
			$this->load->view('programas/programas_ver',$data);
			$this->load->view('programas/programas_ver_footer');
		}else{
			header( "Location: ".base_url() );
		}
	}

	public function nuevocomentario(){
		if( $this->session->userdata('login') ){
			$this->load->model('programas_model');
			$this->load->library('programa');

			$id_comment = $this->programas_model->nuevo_comentario( $this->input->post() );
			$comment = $this->programas_model->return_comentario( $id_comment );
			$dialog_id = intval( $this->input->post( 'comments' ) );
			$html = $this->programa->render_comentario( $comment,$dialog_id );

			$json = array(
				'html'		=> $html,
				'dialog'	=> '#dialog-modif-'.$dialog_id,
				'n'				=> $dialog_id + 1
			);

	 		$out = json_encode( $json );
			header('Content-Type: application/json');
			echo $out;
		}
		else{
			header( "Location: ".base_url() );
		}
	}

}