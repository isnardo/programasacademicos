<body>
<?=$menu;?>
<div id="wrapper">
        <div id="page-wrapper">

            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header">
                      Mis modificaciones
                    </h2>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <a href="<?=$url_aprobadas;?>">
                    <div class="panel panel-btn panel-btn-green">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-check-circle fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?=$aprobadas;?></div>
                                    <div>Aprobadas</div>
                                </div>
                            </div>
                    </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6">
                    <a href="<?=$url_pendientes;?>">
                    <div class="panel panel-btn panel-btn-yellow">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-clock-o fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?=$pendientes;?></div>
                                    <div>Pendientes</div>
                                </div>
                            </div>
                    </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6">
                    <a href="<?=$url_rechazadas;?>">
                    <div class="panel panel-btn panel-btn-red">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-times-circle fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?=$rechazadas;?></div>
                                    <div>Rechazadas</div>
                                </div>
                            </div>

                    </div>
                    </a>
                </div>
            </div>

            <!-- row -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header">
                      Programas Académicos
                    </h2>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->


            <div class="row">
                <div class="col-lg-12">
                  <!-- LISTA DE PROGRAMAS ACADEMICOS -->
                    <?=$lista;?>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
    <?=$error;?>

</body>
