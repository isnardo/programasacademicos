<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Programa{

  private $id;
  private $basicos;
  private $unidades;
  private $temas;
  private $subtemas;
  private $estrategias;
  private $evaluacion;
  private $bibliografia;
  private $comentarios;
  private $comment_length = 100;
  private $numero_comentarios;

  public function __construct( $id = false ){

    if( $id ){
      // Load Model to execute SQL queryes
      $CI =& get_instance();
      $CI->load->model('programas_model');
      // Set program ID
      $this->id = $id;

      // Load All program Elements
      $this->basicos = $CI->programas_model->return_datos_basicos( $this->id );
      $this->unidades = $CI->programas_model->return_unidades( $this->id );
      $this->temas = $CI->programas_model->return_temas( $this->unidades );
      $this->subtemas = $CI->programas_model->return_subtemas( $this->temas );
      $this->estrategias = $CI->programas_model->return_estrategias( $this->id );
      $this->evaluacion = $CI->programas_model->return_evaluacion( $this->id );
      $this->bibliografia = $CI->programas_model->return_bibliografia( $this->id );
      $this->comentarios = $CI->programas_model->return_comentarios( $this->id );
    }
  }

  public function licenciatura(){
      return $this->basicos->LicenciaturaNombre;
  }
  public function nombre(){
      return $this->basicos->MateriaNombre;
  }
  public function version(){
      return $this->basicos->ProgAcademicoVersion;
  }

  public function add_panel( $name=null,$title=null,$data=null,$foot=null ){
    $html = '<div class="panel panel-info"';
    $html = $html.'id="'.$name.'">';
    $html = $html.'<div class="panel-heading" >';
    $html = $html.'<b>'.$title.'</b>';
    $html = $html.'</div>';
    if( $data ){
      $html = $html.'<div class="panel-body">'.$data.'</div>';
    }
    if( $foot ){
      $html = $html.'<div class="panel-footer">'.$foot.'</div>';
    }
    $html = $html.'</div>';

    return $html;
  }

  // Render Contenido del Programa
  public function render(){

    $title = 'A) '.mb_strtoupper( $this->nombre(),'UTF-8' );
    $title = $title.'<div style="float:right;"><b>Versión: ';
    $title = $title.$this->version().'</b></div>';

    $html = $this->add_panel(
      'panel-nombre',
      $title
    );

    $html = $html.$this->add_panel(
      'panel-datos-basicos',
      'B) DATOS BÁSICOS DEL CURSO',
      $this->render_basicos()
    );

    $html = $html.$this->add_panel(
      'panel-objetivos',
      'C) OBJETIVOS DEL CURSO',
      $this->render_objetivos()
    );

    $html = $html.$this->add_panel(
      'panel-contenidos',
      'D) CONTENIDOS Y MÉTODOS POR UNIDADES Y TEMAS',
      $this->render_contenidos()
    );

    $html = $html.$this->add_panel(
      'panel-estrategias',
      'E) ESTRATEGIAS DE ENSEÑANZA Y APRENDIZAJE',
      $this->render_estrategias()
    );

    $html = $html.$this->add_panel(
      'panel-evaluacion',
      'F) EVALUACIÓN Y ACREDITACIÓN',
      $this->render_evaluacion()
    );

    $html = $html.$this->add_panel(
      'panel-bibliografia',
      'G) BIBLIOGRAFÍA Y RECURSOS INFORMÁTICOS',
      $this->render_bibliografia()
    );

    return $html;
  }

  public function render_basicos(){
    $tdi = '<td style="text-align:center;">';
    $html = '<div class="table-responsive">
              <table class="table table-bordered" id="tabla-datos-basicos">
                <thead><tr>
                    <th width="20%" style="text-align:center;vertical-align:middle;background-color:#f5f5f5;">
                      Semestre
                    </th>
                    <th width="20%"style="text-align:center;vertical-align:middle;background-color:#f5f5f5;">
                      Horas de teoría por semana
                    </th>
                    <th width="20%"style="text-align:center;vertical-align:middle;background-color:#f5f5f5;">
                      Horas de práctica por semana
                    </th>
                    <th width="20%" style="text-align:center;vertical-align:middle;background-color:#f5f5f5;">
                      Horas trabajo adicional estudiante por semana
                    </th>
                    <th width="20%" style="text-align:center;vertical-align:middle;background-color:#f5f5f5;">
                      Créditos
                    </th>
                  </tr></thead>
              <tbody><tr>';
    $html = $html.$tdi.$this->basicos->ProgAcademicoSemestre.'</td>';
    $html = $html.$tdi.$this->basicos->ProgAcademicoHrsTeoria.'</td>';
    $html = $html.$tdi.$this->basicos->ProgAcademicoHrsPractica.'</td>';
    $html = $html.$tdi.$this->basicos->ProgAcademicoHrsAdicional.'</td>';
    $html = $html.$tdi.$this->basicos->ProgAcademicoCreditos.'</td>';
    $html = $html.'</tr></tbody></table></div>';

  return $html;
  }

  public function render_objetivos(){
    $html = '';
    if( $this->unidades ){
      $n = $this->unidades->num_rows()+1;

      $html = '<div class="table-responsive">
        <table class="table table-bordered" id="tabla-objetivos">
          <thead>
            <tr>
              <th style="text-align:center;vertical-align:middle;background-color:#f5f5f5;" rowspan="2"> Objetivo general</th>
              <th colspan="2" style="background-color:#f5f5f5;">Al finalizar el estudiante será capaz de: </th>
            </tr><tr>';
      $html = $html.'<td colspan="2" style="text-align:justify;">';
      $html = $html.$this->basicos->ProgAcademicoObjGeneral;
      $html = $html.'</td></tr></thead><tbody>';
      $html = $html.'<tr><td rowspan="';
      $html = $html.$n;
      $html = $html.'" style="background-color:#f5f5f5;vertical-align:middle;text-align:center;" >
                    <b>Objetivos específicos</b></td>
                    <td style="background-color:#f5f5f5;"><b>Unidades</b></td>
                    <td style="background-color:#f5f5f5;"><b>Objetivo específico</b></td></tr>';
      $html = $html.$this->render_unidades();
      $html = $html.'</tbody></table></div>';
    } // END IF Unidades

    return $html;
  }

  // Crea HTML para mostrar lista de unidades y sus objetivos en el programa
  public function render_unidades(){
    $html = '';
    if( $this->unidades->num_rows() > 0 ){
      foreach ( $this->unidades->result() as $row ){
        //render item
        $item =       '<td>'.$row->UnidadNombre.'</td>';
        $item = $item.'<td style="text-align:justify;">'.$row->UnidadObjetivo.'</td>';

        //concatenate items
        $html = $html."<tr>".$item."</tr>";
      }
    }
    return $html;
  }

  // Genera HTML para mostrar los detalles de las unidades
  public function render_contenidos(){
    $html = '';

    if( $this->unidades ){
      // HTML por unidad
      foreach( $this->unidades->result() as $unidad ){
        $html = $html.'<div class="table-responsive">
                 <table class="table table-bordered">';
        $html = $html.'<thead><th style="background-color:#f5f5f5;" colspan="2">';
        $html = $html.$unidad->UnidadNombre;
        $html = $html.'<div style="float:right;"><b>';
        $html = $html.$unidad->UnidadHrs;
        $html = $html.'hrs</b></div></th></thead>';
        $html = $html.'<tbody>';

        // HTML por Tema
        if( $this->temas ){
          foreach( $this->temas->result() as $tema ){
            if( $tema->UnidadId == $unidad->UnidadId ){
              $html = $html.'<tr><th colspan="2">';
              $html = $html.$tema->TemaNombre;
              $html = $html.'<div id="hrs-unidad1" style="float:right;"><b>';
              $html = $html.$tema->TemaHrs;
              $html = $html.' hrs</b></div>';
              $html = $html.'</th></tr>';

              if( $this->subtemas ){
                // HTML por Subtema
                $html = $html.'<tr><td width="25%" style="background-color:#f5f5f5;" ><b>Subtemas</b></td>';
                $html = $html.'<td>';
                foreach( $this->subtemas->result() as $subtema ){
                  if( $subtema->TemaId == $tema->TemaId ){
                    $html = $html.$subtema->SubtemaNombre.'</br>';
                  }
                } // end For subtemas

                $html = $html.'</td></tr>';
              }//en if subtemas
            }
          } // end For Temas
        }// end IF Temas

        $html = $html.'</tbody></table></div>';
      } // enf For Unidades
    } // End IF Unidades

    return $html;
  }

  public function render_estrategias(){
    $html = '';
    if( $this->estrategias ){
      $html = '<ul>';
      foreach( $this->estrategias->result() as $row ){
        $html = $html.'<li>'.$row->EstEnsenanzaNombre.'</li>';
      }
      $html = $html.'</ul>';
    } // END IF
    return $html;
  }

  public function render_evaluacion(){
    $html = '';
    if( $this->evaluacion ){
      $html = '<div class="table-responsive">
               <table class="table table-striped table-bordered" id="tabla-evaluacion">
               <thead>
               <tr>
                 <th width="55%">Elaboración y/o presentación de:</th>
                 <th width="15%">Periodicidad</th>
                 <th width="15%">Abarca</th>
                 <th width="15%">Ponderación</th>
              </tr>
              </thead>
              <tbody>';

      foreach( $this->evaluacion->result() as $row ){
        $html = $html.'<tr>';
        $html = $html.'<td>'.$row->EvaluacionNombre.'</td>';
        $html = $html.'<td>'.$row->EvaluacionPeriodicidad.'</td>';
        $html = $html.'<td>'.$row->EvaluacionAbarca.'</td>';
        $html = $html.'<td>'.$row->EvaluacionPonderacion.'</td>';
        $html = $html.'</tr>';
      }
      $html = $html.'</tbody></table></div>';
    }// END IF

    return $html;
  }

  public function render_bibliografia(){
    $html = '';
    if( $this->bibliografia ){
      $label = $this->bibliografia->first_row()->BiblioTipoId;
      $html = $html.'<label>'.$this->bibliografia->first_row()->BiblioTipoNombres.'</label>';
      $html = $html.'<ul>';

      foreach( $this->bibliografia->result() as $row ){
        if( $label != $row->BiblioTipoId ){
          $label = $row->BiblioTipoId;
          $html = $html.'</ul><hr>';
          $html = $html.'<label>'.$row->BiblioTipoNombres.'</label>';
          $html = $html.'<ul>';
        }
        $html = $html.'<li>'.$row->BibliografiaNombre.'</li>';
      }
      $html = $html.'</ul>';
    }
    return $html;
  }

  public function render_comentario( $comment,$id ){
    //Load library
    $ci =& get_instance();
    $ci->load->library('main');
    // Define variables
    $length = $this->comment_length;
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
    $html = $html.'<small class=" text-muted">
            <p> <i class="fa fa-tag fa-fw"></i> ';
    $html = $html.$apartado.'</p>';
    $html = $html.'<p><i class="fa fa-calendar fa-fw"></i> '.$comment->ModifFecha;
    $html = $html.' <i class="fa fa-clock-o fa-fw"></i> '.$comment->ModifHora.'</p>';
    $html = $html.'</small></div><p>';

    // Revisamos que el comentario no sea tan largo
    if( mb_strlen($comment->ModifSugerencia) < $length ){
      $html = $html. $comment->ModifSugerencia;
    }else { // Si es muy largo, acortamos lo que se muestra
      $html = $html.mb_substr( $comment->ModifSugerencia,0,$length,'UTF-8').'...';
    }
    // Botón para ver más
    $html = $html.'</p><a onclick="dialog_open(';
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
    $html = $html.'</div>';

    $html = $html.'</li>';

    return $html;

  }

  public function render_comentarios(){
    $html = '<ul class="chat">';
    $i = 0;
    if( $this->comentarios ){
      foreach( $this->comentarios->result() as $row ){
        $html = $html.$this->render_comentario( $row,$i );
        $i++;
      }
    }// END IF
    $html = $html.'</ul>';
    $html = $html.'<input id="numero_comentarios" type="hidden" value="'.$i.'">';
    $this->numero_comentarios = $i;

    return $html;
  }

  public function get_num_commentarios(){
    return $this->numero_comentarios;
  }
}
