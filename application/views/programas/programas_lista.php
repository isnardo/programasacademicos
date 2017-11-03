<body>
<div id="wrapper">
<!-- Navigation -->
<?=$menu;?>
<!-- ./ Navigation -->


<div id="page-wrapper">
  <!-- row -->
  <div class="row">
      <div class="col-lg-12">
          <h2 class="page-header">
            Programas Académicos de Matemática Educativa
          </h2>
      </div>
      <!-- /.col-lg-12 -->
  </div>
  <!-- /.row -->

  <div class="row">
      <div class="col-lg-12">
          <div class="panel panel-default">
              <div class="panel-heading">
                  Lista de programas académicos
              </div>
              <!-- /.panel-heading -->
              <div class="panel-body">
                <!-- Render Programs List -->
                <?=$lista;?>
              </div>
              <!-- /.panel-body -->
          </div>
          <!-- /.panel -->
      </div>
      <!-- /.col-lg-12 -->

  </div>
  <!-- /.row -->

</div>
<!-- /#wrapper -->

<?=$error;?>

</body>
