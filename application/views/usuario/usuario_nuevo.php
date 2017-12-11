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

         <div class="col-lg-8">

            <form role="form" id="form-data">
            <div id="panel-form-data" class="panel panel-info">
                 <div class="panel-heading">
                     Datos del nuevo usuario
                 </div>
                 <div class="panel-body">

                   <div class="form-group">
                       <label for="disabledSelect">Nombre</label>
                       <input class="form-control" type="text"
                       placeholder="Nombre">
                   </div>
                   <div class="form-group">
                       <label for="disabledSelect">Apellidos</label>
                       <input class="form-control" type="text"
                       placeholder="Apellidos">
                   </div>
                   <div class="form-group">
                       <label for="disabledSelect">Tipo de usuario</label>
                       <?=$niveles;?>
                   </div>
                   <div class="form-group">
                       <label for="disabledSelect">Facultad</label>
                       <?=$facultades;?>
                   </div>
                   <div class="form-group">
                       <label for="disabledSelect">Licenciatura</label>
                       <input class="form-control" type="text" disabled
                       placeholder="Licenciatura">
                   </div>

                   <div class="form-group">
                      <label for="disabledSelect">Correo electrónico</label>
                     <input class="form-control" id="email" type="text" placeholder="Correo electrónico" required>
                   </div>

                     <div class="form-group">
                       <label for="disabledSelect">Nombre de acceso</label>
                      <input class="form-control" id="username" type="text" placeholder="Nombre de acceso" required>
                    </div>


              <div class="form-group">
                <label for="disabledSelect">Contraseña</label>
                <input class="form-control" id="password_1" type="password"
                placeholder="Contraseña"  required>
              </div>
              <div class="form-group">
                <label for="disabledSelect">Repetir contraseña</label>
                <input class="form-control" id="password_2" type="password"
                placeholder="Repetir contraseña"  required>
              </div>
              <div class="form-group">
                <label>Foto de perfil </label></br>
                <img src="<?=$this->main->user_photo('user_default.png');?>" alt="" class="img-circle" width="90" height="90">
                <input type="file" disabled >
              </div>
              <button type="button" class="btn btn-outline btn-primary" >
                Crear
              </button>
            </div>
            <!--./panel-body-->

          </div>
          <!--./panel-->
          </form>
          <!--./form-->

         </div>
        <!-- /.col-lg-8 -->



        </div>
        <!-- row -->

      </div>
      <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->

</div>
<!-- /#wrapper -->

</body>
