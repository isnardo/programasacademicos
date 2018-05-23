<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Programas_lib{

  public function __construct( ){
  }

  //Genera la lista de programas académicos para una licenciatura dada
  public function render_lista( $lic_id ){
    // Load Model to execute SQL queryes
    $CI =& get_instance();

    $CI->load->model('programas_model');
    $list = $CI->programas_model->return_list( $lic_id );

    $CI->load->model('universidad_model');
    $name = '<b>'.$CI->universidad_model->return_lic_name( $lic_id ).'</b> </br>
          <i>De click en le botón Ver para revisar el programa y sugerir modificaciones</i>';


    $html = '<div class="panel panel-default">
             <div class="panel-heading">';
    $html = $html.$name;
    $html = $html.'</div>
            <div class="panel-body">
            <table width="100%" class="table table-striped table-bordered">
             <thead>
              <tr>
               <th width="10%">Clave</th>
               <th>Nombre</th>
               <th width="10%">Versión</th>
               <th width="10%"></th>
              </tr>
              </thead>
             <tbody>';

    if( $list && $list->num_rows() > 0 ){
      foreach ( $list->result() as $row ){
        //render item
        $item =       '<td>'.$row->ProgAcademicoId.'</td>';
        $item = $item.'<td>'.$row->MateriaNombre.'</td>';
        $item = $item.'<td>'.$row->ProgAcademicoVersion.'</td>';
        $item = $item.'<td><button type="button" id="btn-del-compTransv"';
        $item = $item.'class="btn btn-primary btn-block" ';
        $item = $item.'onClick="goto_program(';
        $item = $item."'";
        $item = $item.site_url('programas/ver');
        $item = $item."','";
        $item = $item.$row->ProgAcademicoId."'";
        $item = $item.')">';
        $item = $item.'Ver</button></td>';

        //concatenate items
        $html = $html."<tr>".$item."</tr>";
      }
    }
    $html = $html.'</tbody></table>
            </div></div>';
    return $html;
  }

}
