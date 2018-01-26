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
           <div class="alert alert-danger alert-dismissable" id="errorAlert" style="display:none;">
             <b>Error al dar de alta al usuario.</b>
           </div>
           <div class="alert alert-success alert-dismissable" id="successAlert" style="display:none;">
             <b>El usuario fue dado de alta correctamente.</b>
           </div>

            <form role="form" id="form-user-new" role="form" method="POST" action="<?=site_url('usuario/');?>">
            <div id="panel-form-data" class="panel panel-info">
                 <div class="panel-heading">
                     Datos del nuevo usuario
                 </div>
                 <div class="panel-body">

                   <div class="form-group">
                       <label for="disabledSelect">Nombre</label>
                       <input name="nombre" class="form-control" type="text"
                       placeholder="Nombre" required>
                   </div>
                   <div class="form-group">
                       <label for="disabledSelect">Apellidos</label>
                       <input name="apellidos" class="form-control" type="text"
                       placeholder="Apellidos" required>
                   </div>
                   <div class="form-group">
                       <label for="disabledSelect">Tipo de usuario</label>
                       <?=$tipos;?>
                   </div>
                   <div class="form-group">
                       <label for="disabledSelect">Nivel de usuario</label>
                       <?=$niveles;?>
                   </div>
                   <div class="form-group">
                       <label for="disabledSelect">Facultad</label>
                       <?=$facultades;?>
                   </div>
                   <div class="form-group">
                       <label for="disabledSelect">Licenciatura</label>
                       <?=$licenciaturas;?>
                   </div>

                   <div class="form-group">
                      <label for="disabledSelect">Correo electrónico</label>
                     <input class="form-control" id="email" name="email" type="text" placeholder="Correo electrónico" required>
                   </div>

                     <div class="form-group">
                       <label for="disabledSelect">Nombre de acceso</label>
                      <input class="form-control" id="username" name="username" type="text" placeholder="Nombre de acceso" required>
                    </div>

                    <div class="alert alert-danger alert-dismissable" id="errorUsername" style="display:none;">
                      <b>El nombre de acceso no está disponible.</b>
                    </div>


              <div class="form-group">
                <label for="disabledSelect">Contraseña</label>
                <input class="form-control" id="password_1" name="password_1"  type="password"
                placeholder="Contraseña"  required>
              </div>
              <div class="form-group">
                <label for="disabledSelect">Repetir contraseña</label>
                <input class="form-control" id="password_2" name="password_2" type="password"
                placeholder="Repetir contraseña"  required>
              </div>
              <div class="alert alert-danger alert-dismissable" id="errorPass" style="display:none;">
                <b>La contraseña no coincide</b>
              </div>
              <div class="form-group">
                <label>Foto de perfil </label></br>
                <img src="<?=$this->main->user_photo('user_default.png');?>" alt="" class="img-circle" width="90" height="90">
                <input type="file" disabled >
              </div>
              <button id="btn-user-new" type="button" class="btn btn-outline btn-primary" disabled>
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
<?=$error;?>

</body>
