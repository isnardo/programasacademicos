<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main{

  public $system_version = 'Sistema de Actualización Curricular v0.1';
  public $institution = 'Universidad Autónoma de San Luis Potosí';
  public $group = 'Cuerpo Académico de Currículum, Enseñanza de las Ciencias y Tecnologías Aplicadas a la Educación';
  public $author = 'Isnardo Reducindo Ruiz';
  public $email = '<a href="mailto:isnardo.reducindo@uaslp.mx">isnardo.reducindo@uaslp.mx</a>';

  public function __construct(){
  }

  //Return complete url of global image
  public function image( $image ){
      return base_url('main/images/'.$image);
  }

  //render select with a given array and id
  public function render_select( $data,$name ){
    $html = '<select id="'.$name.'" name="'.$name.'" class="form-control">';

    foreach ( $data->result_array() as $row ){
      $keys = array_keys($row);
      $html = $html.'<option value="'.$row[$keys[0]].'" >';
      $html = $html.$row[$keys[1]].'</option>';
    }
    $html = $html.'</select>';

    return $html;
  }

  public function user_photo( $photo = NULL ){
      $CI = &get_instance();
      //check session start
      if( $CI ){
        //check photo input
        if( $photo === NULL ){ //if input photo does not exists
          $photo = $CI->session->userdata['photo'];
          $url = $this->photo_file_exist( $photo );
        }
        else{ //if input photo exists
          $url = $this->photo_file_exist( $photo );
        }
        return $url;
      }
      else{
        header( "Location: ".base_url() );
      }
  }
  public function photo_file_exist( $photo ){
    $photo = 'main/users_photos/'.$photo;
    if( !file_exists( $photo ) ){ //check if file exist
      $url = base_url( 'main/users_photos/default.png' );
    }else{
      $url = base_url( $photo );
    }
    return $url;
  }

  // clean variable to be input in sql query
  public function clean_sql_input( $input ) {
    $search = array(
      '@<script[^>]*?>.*?</script>@si',   // Delete javascript
      '@<[\/\!]*?[^<>]*?>@si',            // Delete html labels
      '@<style[^>]*?>.*?</style>@siU',    // Delete style labels
      '@<![\s\S]*?--[ \t\n\r]*>@'         // Delete multiline comments
    );

    $output = preg_replace($search,'', $input);
    return $output;
  }
  // Prepare sql input to be added in a sql query
  public function prepare_sql_input( $input ) {
    if (is_array($input)) {
        foreach($input as $var=>$val) {
            $output[$var] = $this->prepare_sql_input($val);
        }
    }
    else {
        if ( get_magic_quotes_gpc() ) {
            $input = stripslashes($input);
        }
        $output  = $this->clean_sql_input($input);
        //$output = mysqli_real_escape_string($input);
    }
    return $output;
  }

  public function render_error_dialog(){
    $ci =& get_instance();
    $ci->load->library('main');

    $html = '<div id="error-dialog" title="Reportar Error">';
    $html = $html.'<form role="form" id="error-form" action="';
    $html = $html.site_url('usuario/error');
    $html = $html.'" method="POST">';
    $html = $html.
    '<div class="form-group">
      <label>Error</label>
      <textarea class="form-control" id="error" name="error"
      placeholder="Describa el error." rows="3" required></textarea>
    </div>';
    $html = $html.
    '<button type="button" id="btn-save-error" class="btn btn-primary"
     width="40" disabled>Reportar</button>
    <button type="button" id="btn-close-error" class="btn btn-default"
     width="40" onclick="dialog_close(';
    $html = $html."'";
    $html = $html.'#error-dialog';
    $html = $html."'";
    $html = $html.');">Cerrar</button>';
    $html = $html.'</form></div>';

    return $html;
  }

}
