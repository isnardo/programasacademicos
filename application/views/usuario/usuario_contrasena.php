<body>
<div id="wrapper">
<!-- Navigation -->
<?=$this->menu->render_user_menu( $this->session->userdata['menu'] );?>
<!-- ./ Navigation -->


<div id="page-wrapper">

    <div class="row">
      <div class="col-lg-12">
        <h1 class="page-header">Cambiar contraseña</h1>

        <div class="row">
         <div class="col-lg-6">
           <div class="alert alert-danger alert-dismissable" id="errorAlert" style="display:none;">
             <b>Error al actualizar la contraseña.</b>
           </div>
           <div class="alert alert-success alert-dismissable" id="successAlert" style="display:none;">
             <b>Se actualizó correctamente la contraseña.</b>
           </div>

         <form id="form-password" role="form" method="POST" action="<?=site_url('usuario/modificar_contrasena');?>">
          <div id="panel-form-password" class="panel panel-info">
            <div class="panel-heading">
              Contraseña
            </div>
            <div class="panel-body">
              <div class="form-group">
                <label for="disabledSelect">Contraseña actual</label>
                <input class="form-control" id="current-pass" name="current-pass" type="password" value=""
                placeholder="Contraseña actual" disabled required>
              </div>
              <div class="form-group">
                <label for="disabledSelect">Nueva contraseña</label>
                <input class="form-control" id="new-pass" name="new-pass" type="password" value=""
                placeholder="Nueva contraseña"  disabled required>
              </div>
              <div class="form-group">
                <label for="disabledSelect">Repetir nueva contraseña</label>
                <input class="form-control" id="new2-pass" name="new2-pass" type="password" value=""
                placeholder="Repetir nueva contraseña"  disabled required>
              </div>
              <div class="alert alert-danger alert-dismissable" id="errorPass" style="display:none;">
                <b>La nueva contraseña no coincide</b>
              </div>
              <button id="pass-btn-update" type="button" class="btn btn-outline btn-primary" disabled>
                Actualizar
              </button>
              <input type="hidden" value="<?=$uid?>" name="uid">
            </div>
            <!--./panel-body-->
            <div class="panel-footer">
              <div class="checkbox">
              <label><input type="checkbox" value="">  Modificar</label>
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
                   Datos del Usuario
               </div>
               <div class="panel-body">
                           <form role="form">
                             <!-- Elemts that can't modified -->
                             <fieldset disabled>
                                 <div class="form-group">
                                     <label for="disabledSelect">Nombre</label>
                                     <input class="form-control" type="text" value="<?=$firstName?>"
                                     placeholder="Nombre" disabled>
                                 </div>
                                 <div class="form-group">
                                     <label for="disabledSelect">Apellidos</label>
                                     <input class="form-control" type="text" value="<?=$lastName?>"
                                     placeholder="Apellidos" disabled>
                                 </div>
                                 <div class="form-group">
                                     <label for="disabledSelect">Tipo de usuario</label>
                                     <input class="form-control" type="text" value="<?=$level?>"
                                     placeholder="Usuario" disabled>
                                 </div>
                                 <div class="form-group">
                                     <label for="disabledSelect">Facultad</label>
                                     <input class="form-control" type="text" value="<?=$facultad?>"
                                     placehokder="Facultad" disabled>
                                 </div>
                                 <div class="form-group">
                                     <label for="disabledSelect">Licenciatura</label>
                                     <input class="form-control" type="text" value="<?=$licenciatura?>"
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

<?=$error;?>

</body>
