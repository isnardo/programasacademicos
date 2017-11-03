function ConfirmDialog( data ) {
  $('<div></div>').appendTo('body')
    .html('<div><h5>'+data['mensaje']+'</h5></div>')
    .dialog({
      modal: true,
      title: data["titulo"],
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
        },
        No: option = function () {
          $(this).remove();
        }
      }
    });
};
