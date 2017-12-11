<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuario_lib{

  private $id;
  private $nombre;

  public function __construct( $id ){
    $this->id = $id;
  }

  //
  public function render_comentario( $comment,$id ){
    //Load library
    $ci =& get_instance();
    $ci->load->library('main');
    // Define variables
    $photo = $ci->main->user_photo( $comment->UsuarioId.$comment->UsuarioFoto );
    $dialog_id = 'dialog-modif-'.$id;
    $apartado = ucfirst( mb_strtolower($comment->ApartadoNombre,'UTF-8') );

    // generate HTML
    $html = '<li class="left clearfix">
            <span class="chat-img pull-left">';
    $html = $html.'<img src="'.$photo.'"';
    $html = $html. ' alt="User Avatar" class="img-circle" width="40" height="40"/>
            </span>';
    $html = $html.'<div class="chat-body clearfix">
            <div class="header">
            <strong class="primary-font">';
    $html = $html.$comment->UsuarioNombre.'</strong>';
    $html = $html.'<div class="text-muted">';
    $html = $html.'<p><i class="fa fa-clipboard fa-fw"></i> ';
    $html = $html.'<a href="';
    $html = $html.site_url('programas/ver?programa=');
    $html = $html.$comment->ProgAcademicoId.'">';
    $html = $html.$comment->MateriaNombre;
    $html = $html.' (Versión: '.$comment->ProgAcademicoVersion.')</a></p>';
    $html = $html.'<p> <i class="fa fa-tag fa-fw"></i> '.$apartado.'</p>';
    $html = $html.'<p><i class="fa fa-calendar fa-fw"></i> '.$comment->ModifFecha;
    $html = $html.' <i class="fa fa-clock-o fa-fw"></i> '.$comment->ModifHora.'</p>';
    $html = $html.'</div></div>';
    $html = $html.'<b>Cambio sugerido</b><p style="text-align:justify;">';
    $html = $html.$comment->ModifSugerencia.'</p>';
    $html = $html.'<b>Justificación</b><p style="text-align:justify;">';
    $html = $html.$comment->ModifJustificacion.'</p>';
    /*'<a onclick="dialog_open(';
    $html = $html."'";
    $html = $html.'#'.$dialog_id;
    $html = $html."'";
    $html = $html.');" href="javascript:void(0);">Ver más.</a></div>';

    //Ventana Emergente
    $html = $html.'<div id="';
    $html = $html.$dialog_id.'" title="Modificación sugerida">';
    $html = $html.'<b>Apartado</b><p>';
    $html = $html.$apartado.'</p>';
    $html = $html.'<b>Criterio</b><p>';
    $html = $html.$comment->CriterioNombre.'</p>';
    $html = $html.'<b>Cambio sugerido</b><p>';
    $html = $html.$comment->ModifSugerencia.'</p>';
    $html = $html.'<b>Justificación</b><p>';
    $html = $html.$comment->ModifJustificacion.'</p>';
    $html = $html.'<button type="button" id="btn-close-';
    $html = $html.$dialog_id.'" class="btn btn-default pull-right" width="40"';
    $html = $html.'onclick="dialog_close(';
    $html = $html."'";
    $html = $html.'#'.$dialog_id;
    $html = $html."'";
    $html = $html.');">Cerrar</button>';
    $html = $html.'</div>';*/

    $html = $html.'</li>';

    return $html;

  }

  public function render_comentarios( $tipo ){
    //Load library
    $ci =& get_instance();
    $ci->load->model('usuario_model');

    $comentarios = $ci->usuario_model->return_comentarios( $this->id,$tipo );

    $html = '';
    if( $comentarios ){
      $html = '<ul class="chat">';
      $i = 0;
      foreach( $comentarios->result() as $row ){
        $html = $html.$this->render_comentario( $row,$i );
        $i++;
      }
      $html = $html.'</ul>';
      $html = $html.'<input id="numero_comentarios" type="hidden" value="'.$i.'">';
    }// END IF
    return $html;
  }
}
