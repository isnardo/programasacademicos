$(document).ready(function() {

  // Activate and deactivate access data update|
  $("#form-data input[type='checkbox']").on('click', function(){
    if( !$(this).is(':checked') ){
      $("#form-data input[type='text']").prop("disabled", true);
      $("#form-data input[type='file']").prop("disabled", true);
      $("#form-data button").prop("disabled", true).addClass('btn-outline');
      $('#panel-form-data').addClass('panel-info').removeClass('panel-primary');
    }else{
      $("#form-data input[type='text']").prop("disabled", false);
      $("#form-data input[type='file']").prop("disabled", false);
      $("#form-data button").prop("disabled", false).removeClass('btn-outline');
      $('#panel-form-data').addClass('panel-primary').removeClass('panel-info');
    }
  });

  // Activade and deactivate password update
  $("#form-password input[type='checkbox']").on('click', function(){
    if( !$(this).is(':checked') ){
      $("#form-password input[type='password']").prop("disabled", true);
      $("#form-password input[type='password']").val("");
      $("#form-password button").prop("disabled", true).addClass('btn-outline');
      $('#panel-form-password').addClass('panel-info').removeClass('panel-primary');
    }else{
      $("#form-password input[type='password']").prop("disabled", false);
    //  $("#form-password button").prop("disabled", false).removeClass('btn-outline');
      $('#panel-form-password').addClass('panel-primary').removeClass('panel-info');
    }
  });

  // Check inputs filled
  $("#form-password :input").keyup(function() {
    var $filled = $("#form-password input[required]").filter(function (){
      return $.trim($(this).val()).length == 0
    }).length == 0;

    if( $filled ){
      $("#form-password button").prop("disabled", false).removeClass('btn-outline');
    }else{
      $("#form-password button").prop("disabled", true).addClass('btn-outline');
    }
  });

  // Action to change user password
  $("#pass-btn-update").on('click', function(){
    if( $("#new-pass").val() == $("#new2-pass").val() ){
      var ventana = $('<p>¿Realmente deseas cambiar la contraseña?</p>').dialog({
        title: "Confirmar",
        modal: true,
        resizable: false,
        width: 'auto',
        open: function(event, ui) {
          $(".ui-dialog-titlebar-close", ui.dialog | ui).hide();
        },
        buttons: {
          "Si":(
            function(){
              var form = $("#form-password");
              // Calling with AJAX to check user
              $.ajax({
                url: form.attr("action"),
                type: form.attr("method"),
                data: form.serialize(),
                dataType: 'json',
                success:function(result){
                  try{
                    alert( result['mensaje'] );
                    console.log( result['mensaje'] );

                    if( result['success'] == false ){
                      $("#errorAlert").show();
                      $("#successAlert").hide();
                      $("#form-password input[type='password']").val("");
                      $('#current-pass').focus();
                      $("#form-password button").prop("disabled", true).addClass('btn-outline');
                    }else{
                      $("#successAlert").show();
                      $("#errorAlert").hide();
                      $("#form-password input[type='password']").prop("disabled", true);
                      $("#form-password input[type='password']").val("");
                      $("#form-password button").prop("disabled", true).addClass('btn-outline');
                      $('#panel-form-password').addClass('panel-info').removeClass('panel-primary');
                      $("#form-password input[type='checkbox']").prop("checked", false);
                    }
                  }catch(err){
                    $("#errorAlert").show();
                    $("#successAlert").hide();
                    console.log(err);
                  }
                },
                error:function(result){
                  $("#errorAlert").show();
                  $("#successAlert").hide();
                  console.log("Error with ajax call..."+result);
                }
              });
              // END ajax*/
              $(this).remove();
            }
          ),
          "No":(
            function(){$(this).remove();}
          )
        }
      });
    }else {
      alert("Las nuevas contraseñas no coinciden");
    }
  });

});
