<footer>
  <!-- jQuery -->
  <script src="<?=base_url('assets/vendor/jquery/jquery.min.js');?>" ></script>
  <!-- Bootstrap Core JavaScript -->
  <script src="<?=base_url('assets/vendor/bootstrap/js/bootstrap.min.js');?>" ></script>
  <!-- Metis Menu Plugin JavaScript -->
  <script src="<?=base_url('assets/vendor/metisMenu/metisMenu.min.js');?>" ></script>
  <!-- DataTables JavaScript -->
  <script src="<?=base_url('assets/vendor/datatables/js/jquery.dataTables.min.js');?>"></script>
  <script src="<?=base_url('assets/vendor/datatables-plugins/dataTables.bootstrap.min.js');?>"></script>
  <script src="<?=base_url('assets/vendor/datatables-responsive/dataTables.responsive.js');?>"></script>
  <!-- Custom Theme JavaScript -->
  <script src="<?=base_url('assets/dist/js/sb-admin-2.js');?>" ></script>
  <!-- ENCRYPT library JavaScript -->
  <script src="<?=base_url('assets/js/hash.js');?>" ></script>
  <!-- Login fucntions JavScript -->
  <script src="<?=base_url('assets/js/login.js');?>" ></script>
  <!--Error report -->
  <script src="<?=base_url('assets/js/error.js');?>" ></script>

  <script>
  $(document).ready(function() {
    $('#dataTables-example').DataTable({
        responsive: true
    });
  });
  </script>

</footer>
</html>
