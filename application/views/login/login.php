<body>

    <div class="container">
        <!-- Star Bootsrap row -->
        <div class="row">
            <!-- Start Column model -->
            <div class="col-md-4 col-md-offset-4">

                <!-- Start Login-Panel -->
                <div class="panel panel-primary" style="margin-top: 25%;">
                    <!-- Start header login-panel -->
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-user-o" aria-hidden="true"></i>
                          &nbsp;Acceso a Usuarios
                        </h3>
                    </div>
                    <!-- End header llogin-panel -->
                    <!-- start body login-panel -->
                    <div class="panel-body">
                        <form role="form" id="frmAcceder" method="POST"
                              action="<?=$form_action;?>">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Usuario" name="usuario" type="text" autofocus required>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Contraseña" name="password" type="password" required>
                                </div>
                                  <button class="btn btn-primary" id="btnAcceder">Acceder</button>
                                  <div style="text-align:right;font-size:smaller;">
                                    <a href="#">¿Olvidaste tu contraseña?</a>
                                  </div>
                            </fieldset>
                        </form>
                    </div>
                    <!-- End body login-panel -->
                    <!-- Start footer login-panel -->
                    <div class="panel-footer">
                        <p style="text-align:center;font-style:italic;">
                          <img src="<?=$uaslp_logo;?>" height="42" width="42">
                          </br>
                          <?=$system_version;?>
                        </p>
                        <p style="text-align:center;font-size:smaller;">
                          <?=$institution;?>
                          <br>
                          <?=$group;?>
                        </p>
                    </div>
                    <!-- End footer login-panel -->
                </div>
                <!-- End Login-Panel -->

                <!-- Start Login error message -->
                <div class="alert alert-danger alert-dismissable" id="divAlert" style="display:none;">
                  <b>Usuario y/o contraseña no validos.</b>
                </div>
                <!-- End Login error message-->
                <div id="divLoading" style="display:none;position:absolute;z-index:10;top:30%;left: 45%;">
                  <img src="<?=$img_loading;?>" height="42" width="42" >
                </div>
            </div>
            <!-- End Column model -->
        </div>
        <!-- END Bootsrap row -->
    </div>

</body>
