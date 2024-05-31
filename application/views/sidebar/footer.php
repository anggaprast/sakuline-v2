<!-- Footer -->
      <footer class="footer pt-0">
        <div class="row align-items-center justify-content-lg-between">
          <div class="col-lg-6">
            <div class="copyright text-center  text-lg-left  text-muted">
              &copy; 2022 <a href="https://www.creative-tim.com" class="font-weight-bold ml-1" target="_blank">Creative Tim</a>
            </div>
          </div>
          <div class="col-lg-6">
            <ul class="nav nav-footer justify-content-center justify-content-lg-end">
              <li class="nav-item">
                <a href="https://disarpus.banjarnegarakab.go.id" class="nav-link" target="_blank">Disarpus Banjarnegara</a>
              </li>
              <li class="nav-item">
                <button type="button" class="btn btn-outline-secondary btn-sm" data-toggle="modal" data-target="#creditModal">
                  Credit
                </button>
              </li>
            </ul>
          </div>
        </div>
      </footer>
    </div>
  </div>
<!-- Argon Scripts -->
    <!-- Core -->
    <script src="<?= base_url();?>/assets/vendor/jquery/dist/jquery.min.js"></script>
    <script src="<?= base_url();?>/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<?= base_url();?>/assets/vendor/js-cookie/js.cookie.js"></script>
    <script src="<?= base_url();?>/assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
    <script src="<?= base_url();?>/assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
    <!-- Optional JS -->
    <script src="<?= base_url();?>/assets/vendor/cropperjs/cropper.min.js"></script>
    <script src="<?= base_url();?>/assets/vendor/chart.js/dist/Chart.min.js"></script>
    <script src="<?= base_url();?>/assets/vendor/chart.js/dist/Chart.extension.js"></script>
    <script src="<?= base_url();?>/assets/vendor/chart.js/dist/Chart.min.js"></script>
    <!-- Argon JS -->
    <script src="<?= base_url();?>/assets/js/argon.js?v=1.2.0"></script>
    <script src="<?= base_url();?>/assets/vendor/sweetalert2/dist/sweetalert2.all.min.js"></script>
    <script src="<?= base_url();?>/assets/js/myscript.js"></script>
    <script src="https://js.pusher.com/7.0/pusher.min.js"></script>
      <script>

        // Enable pusher logging - don't include this in production
        Pusher.logToConsole = true;

        var pusher = new Pusher('ecce112096782c16e13b', {
          cluster: 'ap1'
        });

        var channel = pusher.subscribe('my-channel');
        channel.bind('my-event', function(data) {
          /*alert(JSON.stringify(data));*/
          xhr = $.ajax({
            method : "POST",
            url : "<?= base_url('admin/new_notifikasi');?>",
            success : function(response){
              $('.notifikasi').html(response);
            }
          })

          xhr = $.ajax({
            method : "POST",
            url : "<?= base_url('anggota/new_notifikasi');?>",
            success : function(response){
              $('.notifikasi_user').html(response);
            }
          })

        });
      </script>
      <script>

        // Enable pusher logging - don't include this in production
        Pusher.logToConsole = true;

        var pusher = new Pusher('ecce112096782c16e13b', {
          cluster: 'ap1'
        });

        var channel = pusher.subscribe('my-channel');
        channel.bind('my-event', function(data) {
          /*alert(JSON.stringify(data));*/
          xhr = $.ajax({
            method : "POST",
            url : "<?= base_url('anggota/new_notifikasi');?>",
            success : function(response){
              $('.notifikasi_user').html(response);
            }
          })

        });
      </script>
  </body>
  </html>

  <!-- Modal -->
  <div class="modal fade" id="creditModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Credit</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          Photo by <a href="https://unsplash.com/@matt__feeney?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">matthew Feeney</a> on <a href="https://unsplash.com/s/photos/library?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
          <a href="https://www.flaticon.com/free-icons/user" title="user icons">User icons created by Smashicons - Flaticon</a>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>