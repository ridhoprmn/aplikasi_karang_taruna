  <footer class="footer footer-transparent d-print-none">
    <div class="container">
      <div class="row text-center align-items-center flex-row-reverse">
        <div class="col-lg-auto ms-lg-auto">
          <ul class="list-inline list-inline-dots mb-0">
           <p style="color: #141f32;">Copyright &copy; 2021</p>
          </ul>
        </div>
        <div class="col-12 col-lg-auto mt-3 mt-lg-0">
          <ul class="list-inline list-inline-dots mb-0">
            <li class="list-inline-item">
              <a href="." class="link-secondary" style="color: #141f32;">Aplikasi Informasi Karang Taruna Desa Cicadas.</a>.
              <p style="color: #141f32;">All rights reserved.</p>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
  </div>
  </div>
  <script src="./admin/assets/jquery.min.js"></script>
  <!-- <script src="./admin/assets/jquery/jquery.min.js"></script> -->
  <script src="./assets/dist/libs/apexcharts/dist/apexcharts.min.js"></script>

  
        <script src="./admin/assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="./admin/assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
        <script src="./admin/assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
  <!-- Tabler Core -->
  <script src="./assets/dist/js/tabler.min.js"></script>
  <script src="./admin/assets/ckeditor/ckeditor.js"></script>
  <script src="./admin/assets/sweetalert/sweetalert2.all.min.js"></script>
  <script src="./admin/assets/myscript.js"></script>
  <script src="./admin/assets/my.js"></script>
  <script>
    function hanyaAngka(evt) {
      var charCode = (evt.which) ? evt.which : event.keyCode
      if (charCode > 31 && (charCode < 48 || charCode > 57))

        return false;
      return true;
    }
  </script>
          <script>
          $(function () {
            $("#example1").DataTable({
              "responsive": true,
              "autoWidth": false,
            });
            $('#example2').DataTable({
              "paging": true,
              "lengthChange": false,
              "searching": false,
              "ordering": true,
              "info": true,
              "autoWidth": false,
              "responsive": true,
            });
          });
        </script>
  </body>

  </html>