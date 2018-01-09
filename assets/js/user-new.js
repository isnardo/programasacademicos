$(document).ready(function() {
  $("#facultad").change(function(){
    var form = $("#form-user-new");
    var data = {
        facultad: $( "#facultad option:selected" ).val()
    }
    $.ajax({
      url: form.attr("action")+'licenciaturas',
      type: form.attr("method"),
      data: data,
      dataType: 'json',
      success:function(result){
        $("#licenciatura").html(result['html']);
      },
      error:function(result){
        console.log("Error with ajax call..."+result);
      }
    });
    // END ajax
  });


  // Check inputs filled
  $("#form-user-new :input").keyup(function() {
    var $filled = $("#form-user-new input[required]").filter(function (){
      return $.trim($(this).val()).length == 0
    }).length == 0;

    if( $filled ){
      $("#form-user-new button").prop("disabled", false).removeClass('btn-outline');
    }else{
      $("#form-user-new button").prop("disabled", true).addClass('btn-outline');
    }
  });

  $("#username").keyup(function(){
    var form = $("#form-user-new");
    var data = {
        username: $("#username").val()
    }
    $.ajax({
      url: form.attr("action")+'revisa_username',
      type: form.attr("method"),
      data: data,
      dataType: 'json',
      success:function(result){
        console.log(result['exist']);
        if( result['exist'] > 0 ){
          $("#errorUsername").show();
        }else{
          $("#errorUsername").hide();
        }
      },
      error:function(result){
        console.log("Error with ajax call..."+result);
      }
    });
  });


  $("#password_2").keyup(function(){
    if( $("#password_2").val() === $("#password_1").val() ){
      $("#errorPass").hide();
    }else{
      $("#errorPass").show();
    }
  });

  $("#password_2").keyup(function(){
    if( $("#password_2").val() === $("#password_1").val() ){
      $("#errorPass").hide();
    }else{
      $("#errorPass").show();
    }
  });
  $("#password_1").keyup(function(){
    if( $("#password_2").val() === $("#password_1").val() ){
      $("#errorPass").hide();
    }else{
      $("#errorPass").show();
    }
  });


  // Add new user
  $("#btn-user-new").on('click', function(){
    if( $("#password_2").val() === $("#password_1").val() ){
      var ventana = $('<p>¿Realmente deseas dar de alta a este usuario?</p>').dialog({
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
              var form = $("#form-user-new");
              // Calling with AJAX to check user
              $.ajax({
                url: form.attr("action")+'crear',
                type: form.attr("method"),
                data: form.serialize(),
                dataType: 'json',
                success:function(result){
                  try{
                    $("#errorAlert").hide();
                    $("#successAlert").show();
                    $("#successAlert").html(result['msg']);
                    console.log( result['mensaje'] );
                    $('#nombre').focus();
                    $("#form-user-new button").prop("disabled", true).addClass('btn-outline');
                    $("#form-user-new input").val("");
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
      alert("Las contraseñas no coinciden");
    }
  });

});
