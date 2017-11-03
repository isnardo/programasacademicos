<body>
<div id="wrapper">
<!-- Navigation -->
<?=$menu;?>
<!-- ./ Navigation -->


<div id="page-wrapper">
  <div class="row">
    <div class="col-lg-12">
      <br>
      <h1><?=$licenciatura;?></h1>
      <h2>Programa analítico</h2>
      <hr>
<div class="row">

  <div class="col-lg-8">
    <?=$programa;?>
  </div>
  <!--col-lg-8-->

  <div class="col-lg-4">
        <div class="panel panel-default" id="panel-modificaciones">
            <div class="panel-heading">
                Modificaciones
                <button id="btn-modificar" type="button" class="btn btn-default btn-xs pull-right" onclick="dialog_open('#new-modif-dialog');">
                    <i class="fa fa-pencil"></i> Sugerir
                </button>
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body" >
              <?=$comentarios;?>
            </div>

       </div>
   </div>
   <!--/.col-lg-4-->
    </div>
    <!--/.row-->

    </div>
    <!-- /.col-lg-12 -->

    </div>
    <!-- /.row -->

</div>
<!-- /#wrapper -->

<div id="new-modif-dialog" title="Sugerir modificación">
  <form role="form" id="new-modif-form" action="<?=$url_nuevo_comentario;?>" method="POST">
    <div class="form-group">
      <label>Apartado</label>
      <select class="form-control" id="new-modif-apartado" name="apartado">
        <option value="1" selected>A) Nombre del curso</option>
        <option value="2" >B) Datos básicos</option>
        <option value="3" >C) Objetivos del curso</option>
        <option value="4" >D) Contenidos y métodos</option>
        <option value="5" >E) Estrategías de enseñanza y aprendizaje</option>
        <option value="6">F) Evaluación y acreditación</option>
        <option value="7">G) Bibliografía y recursos informáticos</option>
      </select>
    </div>
    <div class="form-group">
      <label>Criterios</label>
      <select class="form-control" id="new-modif-criterio" name="criterio">
        <option value="1" selected>Resultados de aprendizaje</option>
        <option value="2">Valoración de la secuencia de enseñanza en clase</option>
        <option value="3">Comparación con otros programas</option>
        <option value="4">Comparación con índices de libros</option>
        <option value="5">Valoración de resultados de investigación própios</option>
        <option value="6">Valoración de resultados de investigación en revístas científicas</option>
        <option value="7">Valoración de resultados de evaluación</option>
        <option value="8">Otro</option>
      </select>
    </div>
    <div class="form-group">
      <label>Cambio sugerido</label>
      <textarea class="form-control" id="new-modif-cambio" name="sugerencia"
      placeholder="Describa el cambio que sugiere" rows="2" required></textarea>
    </div>
    <div class="form-group">
      <label>Justificación</label>
      <textarea class="form-control" id="new-modif-justificacion" name="justificacion"
      placeholder="Justifique brevemente el cambio sugerido" rows="2" required></textarea>
    </div>
    <button type="button" id="btn-save-modif" class="btn btn-primary"
     width="40" disabled>Sugerir</button>
    <button type="button" id="btn-close-modif" class="btn btn-default"
     width="40" onclick="dialog_close('#new-modif-dialog');">Cerrar</button>

    <input type="hidden" id="new-modif-programa" name="programa" value="<?=$programa_id;?>">
    <input type="hidden" id="new-modif-usuario" name="usuario" value="<?=$usuario;?>">
    <input type="hidden" id="number-comments" name="comments" value="<?=$numero_comentarios;?>">
  </form>
  <div id="divLoading" style="display:none;position:absolute;z-index:10;top:30%;left: 45%;">
    <img src="<?=$img_loading;?>" height="42" width="42" >
  </div>
</div>

<?=$error;?>

</body>
