        <footer class="footer footer-transparent d-print-none">
          <div class="container">
            <div class="row text-center align-items-center flex-row-reverse">
              <div class="col-12 col-lg-auto mt-3 mt-lg-0">
                <ul class="list-inline list-inline-dots mb-0">
                  <li class="list-inline-item">
                    Copyright &copy; 2021
                    <a href="." class="link-secondary">Aplikasi Informasi Karang Taruna Desa Cicadas.</a>
                    All rights reserved.
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </footer>
        </div>
        </div>
        <!-- Libs JS -->
        <script src="./assets/jquery.min.js"></script>
        <!-- <script src="./assets/jquery/jquery.min.js"></script> -->

        <script src="../assets/dist/libs/apexcharts/dist/apexcharts.min.js"></script>

        <script src="./assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="./assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
        <script src="./assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>

        <!-- Tabler Core -->
        <script src="../assets/dist/js/tabler.min.js"></script>

        <script src="./assets/ckeditor/ckeditor.js"></script>
        <script src="./assets/sweetalert/sweetalert2.all.min.js"></script>
        <script src="./assets/myscript.js"></script>
        <script src="./assets/my.js"></script>
        <script>
          $(function() {
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
        <!-- <script>
        var allEditors = document.querySelector('.ckeditor');
        ClassicEditor.create(allEditors);
        $("#ckeditorForm").submit(function(e) {
            var content = $('#ck_editor_txt').val();
            html = $(content).text();
            if ($.trim(html) == '') {
                alert("Please enter message");
                e.preventDefault();
            }
        });
        </script> -->
        </body>

        </html>