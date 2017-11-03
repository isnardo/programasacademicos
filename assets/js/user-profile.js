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
      $("#form-password button").prop("disabled", true).addClass('btn-outline');
      $('#panel-form-password').addClass('panel-info').removeClass('panel-primary');
    }else{
      $("#form-password input[type='password']").prop("disabled", false);
      $("#form-password button").prop("disabled", false).removeClass('btn-outline');
      $('#panel-form-password').addClass('panel-primary').removeClass('panel-info');
    }
  });

});
