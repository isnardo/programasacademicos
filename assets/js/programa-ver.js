$( document ).ready( function() {
  $( "#new-modif-dialog" ).dialog({
    autoOpen: false,
    height: 480,
    width: 400,
    modal: true,
    resizable: false,
    open: function(event, ui) {
      $(".ui-dialog-titlebar-close", ui.dialog | ui).hide();
      $("#new-modif-justificacion").val("");
      $("#new-modif-cambio").val("");
      $("#btn-save-modif").prop("disabled", true);
    }
  });

  // OCULTA TODAS LAS VENTANAS EMERGENTES DE MODIFICACIONES
  var n = $('#numero_comentarios').val();
  var i;
  for(i = 0; i < n; i++){
    var dialog = "#dialog-modif-" + parseInt(i);
    $( dialog ).dialog({
      autoOpen: false,
      modal: true,
      maxHeight: 480,
      width: 400,
      resizable: false,
      open: function(event, ui) {
        $(".ui-dialog-titlebar-close", ui.dialog | ui).hide();
      }
    });
  }

  //Activa boton SUGERIR del formulario emergente
  //solo cuando los campos textarea tienen valores
  $("#new-modif-form").keyup(function() {
    var $form = $(this);
    var check = checkCampos( $form );
    if( !check ){
        $("#btn-save-modif").prop("disabled", false);
    }else{
        $("#btn-save-modif").prop("disabled", true);
    }
  });

  $("#btn-save-modif").click(function(event){
    event.preventDefault();
    var ventana = {
      titulo: "Confirmar",
      mensaje:"¿Realmente desea sugerir este cambio?",
      si:(function(){
        var form = $("#new-modif-form");
        //form.submit();

        // Calling with AJAX to check user
        $.ajax({
          url: form.attr("action"),
          type: form.attr("method"),
          data: form.serialize(),
          dataType: 'json',
          success:function(result){
            try{
                // Agrega el nuevo comentario
                $(".chat").prepend( result['html'] );
                // create emergent window for new comment
                var dialog = result['dialog'];
                $( dialog ).dialog({
                  autoOpen: false,
                  modal: true,
                  maxHeight: 480,
                  width: 400,
                  resizable: false,
                  open: function(event, ui) {
                    $(".ui-dialog-titlebar-close", ui.dialog | ui).hide();
                  }
                });
                //Update number of comments
                $("#number-comments").val( result['n'] );
                dialog_close("#new-modif-dialog");
            }catch(err){
              console.log(err);
            }
          },
          error:function(result){
            console.log("Error with ajax call..."+result);
          }

        });
        // END ajax
        
      }),
      no:(function(){
      })
    };
    ConfirmDialog( ventana );
  });
});

// Animation to wait AJAX Response
$('#new-modif-dialog').ajaxSend(function(event, request, settings) {
  $('#divLoading').show();
});
$('#new-modif-dialog').ajaxComplete(function(event, request, settings) {
  $('#divLoading').hide();
});
