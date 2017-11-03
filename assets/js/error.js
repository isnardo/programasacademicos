$( document ).ready( function() {
  $( "#error-dialog" ).dialog({
    autoOpen: false,
    height: 250,
    width: 400,
    modal: true,
    resizable: false,
    open: function(event, ui) {
      $(".ui-dialog-titlebar-close", ui.dialog | ui).hide();
    }
  });

  $("#btn-error-gialog").click(function(event){
    event.preventDefault();
    $("#error").val("");
    dialog_open("#error-dialog");
  });
  // Revisa que el campo de texto para el error no esté vacio
  // y activa el boton para guardar
  $("#error-dialog").keyup(function() {
    var $form = $(this);
    var check = checkCampos( $form );
    if( !check ){
        $("#btn-save-error").prop("disabled", false);
    }else{
        $("#btn-save-error").prop("disabled", true);
    }
  });

  //Click para guardar el error
  $("#btn-save-error").click(function(event){
    event.preventDefault();
    var ventana = {
      titulo: "Confirmar",
      mensaje:"¿Realmente desea reportar este error?",
      // Acción si desea continuar
      si:(function(){
        var form = $("#error-form");
        // Calling with AJAX to check user
        $.ajax({
          url: form.attr("action"),
          type: form.attr("method"),
          data: form.serialize(),
          dataType: 'json',
          success:function(result){
            try{
              alert( result['mensaje'] );
              dialog_close("#error-dialog");
            }catch(err){
              console.log(err);
            }
          },
          error:function(result){
            console.log("Error with ajax call..."+result);
          }

        });
        // END ajax*/

      }),
      // Accción si no desea continuar
      no:(function(){
      })
    };
    //ventana de confirmación
    ConfirmDialog( ventana );
  });
});

// Funcion para abrir ventana emergente
function dialog_open(dialog){
  $(dialog).dialog( "open" );
};
// Función para cerrar ventana emergente
function dialog_close(dialog){
  $(dialog).dialog( "close" );
};

//revisa que los campos textarea tengan valores
function checkCampos( obj ) {
    var vacio = false;
    obj.find("textarea").each( function() {
      var $this = $(this);
      if( !$.trim($this.val()) ) {
        vacio = true;
      }
    });

    return vacio;
}


// Dialogo de confirmación
function ConfirmDialog( ventana ) {
  $('<div></div>').appendTo('body')
    .html('<div><h5>'+ventana['mensaje']+'</h5></div>')
    .dialog({
      modal: true,
      title: ventana["titulo"],
      zIndex: 10000,
      autoOpen: true,
      width: 'auto',
      resizable: false,
      open: function(event, ui) {
        event.preventDefault();
        $(".ui-dialog-titlebar-close", ui.dialog | ui).hide();
      },
      buttons:{
        Si: option = function () {
          $(this).remove();
          ventana["si"]();
        },
        No: option = function () {
          $(this).remove();
          ventana["no"]();
        }
      }
    });
};
