$(document).ready(function() {
  $('.table').DataTable({
      responsive: true,
      language:{
        "decimal":        "",
        "emptyTable":     "No hay datos para mostrar en la tabla",
        "info":           "Mostrando del _START_ al _END_ de un total de  _TOTAL_ registros",
        "infoEmpty":      "Mostrando del 0 al 0 de un total de 0 registros",
        "infoFiltered":   "(filtrar por _MAX_ total de registros)",
        "infoPostFix":    "",
        "thousands":      ",",
        "lengthMenu":     "Ver _MENU_ registros",
        "loadingRecords": "Cargando...",
        "processing":     "Procesando...",
        "search":         "Buscar:",
        "zeroRecords":    "No se encontraron registros que coincidan",
        "paginate": {
            "first":      "Primero",
            "last":       "Último",
            "next":       "Siguiente",
            "previous":   "Anterior"
        },
        "aria": {
            "sortAscending":  ": activate to sort column ascending",
            "sortDescending": ": activate to sort column descending"
        }
    }
  });
});
