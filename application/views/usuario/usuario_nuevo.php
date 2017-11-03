<body>
<div id="wrapper">
<!-- Navigation -->
<?=$this->menu->render_user_menu( $this->session->userdata['menu'] );?>
<!-- ./ Navigation -->


<div id="page-wrapper">

    <div class="row">
      <div class="col-lg-12">
        <h1 class="page-header">Nuevo usuario</h1>

        <div class="row">
         <div class="col-lg-6">

            <form role="form" id="form-data">
            <div id="panel-form-data" class="panel panel-info">
                 <div class="panel-heading">
                     Datos de acceso
                 </div>
                 <div class="panel-body">
                     <div class="form-group">
                       <label for="disabledSelect">Nombre de acceso</label>
                      <input class="form-control" id="username" type="text" value="<?=$this->session->userdata['name']?>"
                      placeholder="Nombre de acceso" disabled required>
                    </div>
                    <div class="form-group">
                       <label for="disabledSelect">Correo electrónico</label>
                      <input class="form-control" id="email" type="text" value="<?=$this->session->userdata['email']?>"
                      placeholder="Correo electrónico" disabled required>
                    </div>
                    <div class="form-group">
                      <label>Foto de perfil </label></br>
                      <img src="<?=$this->main->user_photo('user_default.png');?>" alt="" class="img-circle" width="90" height="90">
                      <input type="file" disabled >
                    </div>
                    <button type="button" class="btn btn-outline btn-primary" disabled>
                      Actualizar
                    </button>
                </div>
                <!-- /.panel-body -->
                <div class="panel-footer">
                  <div class="checkbox">
                    <label><input type="checkbox" value="" id="form-data-checkbox"> Modificar </label>
                  </div>
                </div>
            </div>
            <!-- /.panel -->
          </form>
          <!-- /.form -->


          <form role="form" id="form-password">
          <div id="panel-form-password" class="panel panel-info">
            <div class="panel-heading">
              Contraseña
            </div>
            <div class="panel-body">
              <div class="form-group">
                <label for="disabledSelect">Contraseña actual</label>
                <input class="form-control" id="password_current" type="password" value=""
                placeholder="Contraseña actual" disabled required>
              </div>
              <div class="form-group">
                <label for="disabledSelect">Nueva contraseña</label>
                <input class="form-control" id="password_new" type="password" value=""
                placeholder="Nueva contraseña"  disabled required>
              </div>
              <div class="form-group">
                <label for="disabledSelect">Repetir nueva contraseña</label>
                <input class="form-control" id="password_new2" type="password" value=""
                placeholder="Repetir nueva contraseña"  disabled required>
              </div>
              <button type="button" class="btn btn-outline btn-primary" disabled>
                Actualizar
              </button>
            </div>
            <!--./panel-body-->
            <div class="panel-footer">
              <div class="checkbox">
              <label><input type="checkbox" value=""> Modificar </label>
              </div>
            </div>
          </div>
          <!--./panel-->
          </form>
          <!--./form-->

         </div>
        <!-- /.col-lg-6 -->


       <div class="col-lg-6">

           <div class="panel panel-default">
               <div class="panel-heading">
                   Datos personales
               </div>
               <div class="panel-body">
                           <form role="form">
                             <!-- Elemts that can't modified -->
                             <fieldset disabled>
                                 <div class="form-group">
                                     <label for="disabledSelect">Nombre</label>
                                     <input class="form-control" type="text" value="<?=$this->session->userdata['firstName']?>"
                                     placeholder="Nombre" disabled>
                                 </div>
                                 <div class="form-group">
                                     <label for="disabledSelect">Apellidos</label>
                                     <input class="form-control" type="text" value="<?=$this->session->userdata['lastName']?>"
                                     placeholder="Apellidos" disabled>
                                 </div>
                                 <div class="form-group">
                                     <label for="disabledSelect">Tipo de usuario</label>
                                     <input class="form-control" type="text" value="<?=$this->session->userdata['level']?>"
                                     placeholder="Usuario" disabled>
                                 </div>
                                 <div class="form-group">
                                     <label for="disabledSelect">Facultad</label>
                                     <input class="form-control" type="text" value="..."
                                     placehokder="Facultad" disabled>
                                 </div>
                                 <div class="form-group">
                                     <label for="disabledSelect">Licenciatura</label>
                                     <input class="form-control" type="text" value="..."
                                     placeholder="Licenciatura" disabled>
                                 </div>
                            </fieldset>
                            <!-- ./ Elemts that can't modified -->
                          </form>
                          <!-- /.form -->
                </div>
               <!-- /.panel-body -->
           </div>
           <!-- /.panel -->
       </div>
       <!-- /.col-lg-6 -->


        </div>
        <!-- row -->

      </div>
      <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->

</div>
<!-- /#wrapper -->

</body>
