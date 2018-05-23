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
        <div class="panel panel-success" id="panel-modificaciones">
            <div class="panel-heading">
                <a href="<?=$comentarios_url;?>"><b>Sugerencias de Modificaciones</b></a>
                <button id="btn-modificar" type="button" class="btn btn-primary btn-xs pull-right" onclick="dialog_open('#new-modif-dialog');">
                    <i class="fa fa-pencil"></i> Sugerir
                </button>
            </div>
            <div class="panel-footer"><i>De click en sugerir para incluir una nueva sugerencia de modificación a este programa.</i></div>
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

<?=$nuevo_comentario;?>

<?=$error;?>

</body>
