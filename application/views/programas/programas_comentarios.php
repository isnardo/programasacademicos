<body>
<div id="wrapper">
<!-- Navigation -->
<?=$menu;?>
<!-- ./ Navigation -->


<div id="page-wrapper">
  <div class="row">
    <div class="col-lg-12">
      <br>
      <h2><a href="<?=$regresar;?>"><?=$programa_nombre;?></a></h2>
      <hr>
<div class="row">

  <div class="col-lg-1">
  </div>
  <!--col-lg-8-->

  <div class="col-lg-10">
        <div class="panel panel-default" id="panel-modificaciones">
            <div class="panel-heading">
                Modificaciones sugeridas
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body" >
              <?=$programa_comentarios;?>
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

</body>
