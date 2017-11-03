function goto_program(url,name){
  var sendInfo = {
    programa: name
  };
  $.redirect(
    url,
    sendInfo,
    "POST"
  );
};
