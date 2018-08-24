/*
* Sistema de Actualización Curricular v0.1
*
* JavaScript and JQuery Code to be used in login form
* check that the elements' form are not empty and
* hashed the password. Then use this information to call Ajax
* CodeIgniter Controller that response with user validation or not
*
* author: Isnardo Reducindo
* institution: Universidad Autónoma de San Luis Potosí
* group: Cuerpo Académico de Currículum, Enseñanza de las Ciencias y Tecnologías Aplicadas a la Educación
* email: isanrdo.reducindo@uaslp.mx
*/

/* Copyright 2017 MIT LICENSE
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

// Animation to wait AJAX Response
$(document).ajaxSend(function(event, request, settings) {
  $('#divLoading').show();
});
$(document).ajaxComplete(function(event, request, settings) {
  $('#divLoading').hide();
});

// Document Ready function
$(document).ready(function() {
  // Form submit
  $("#frmAcceder").submit(function(event) {
    event.preventDefault();

    var usuario = $("input[name='usuario']").val();
    var contrasena = $("input[name='password']").val();
    // Prepare send info
    var sendInfo = {
      user: usuario,
      password: contrasena
    };

    // Calling with AJAX to check user
    $.ajax({
      url: $(this).attr("action"),
      type: $(this).attr("method"),
      data: sendInfo,
      dataType: 'json',
      success:function(result){
        try{
          if( result['success'] ){
            $("#divAlert").hide();
            console.log( "Bienvenido" );
            $.redirect(
              result['url'],
              sendInfo,
              "POST"
            );
          }
          else{
            $("#divAlert").show();
            console.log( "Acceso denegado" );
          }
        }catch(err){
          console.log(err);
        }
      },
      error:function(result){
        console.log("Error with ajax call..."+result);
      }

    });
    // END ajax
  });
  // END submit Form

});
// End Document Ready
