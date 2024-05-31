<!DOCTYPE html>
<html>
<!-- Main content -->
    <div class="header pb-6 d-flex align-items-center" style="min-height: 500px; background-image: url(<?=base_url()?>/assets/img/theme/front.jpeg); background-size: cover; background-position: center top;">
      <!-- Mask -->
      <span class="mask bg-gradient-default opacity-7"></span>
      <!-- Header container -->
      <div class="container-fluid align-items-center">
        <div class="row justify-content-center">
          <div class="col-lg-12 col-md-10 mt-3">
            <h1 class="display-1 text-yellow text-center">Selamat Datang!</h1>
            <h3 class="text-white text-center mt-2">SAKULINE - Pesan Buku Online</h3>
            <h3 class="display-4 text-white text-center">Perpustakaan Daerah Kabupaten Banjarnegara</h3>
          </div>
        </div>
      </div>
    </div>
    <!-- SEARCH BUTTON -->
    <div class="container-fluid mt--9">
      <div class="row justify-content-center">
        <div class="col-lg-11">
          <div class="row justify-content-center">
            <div class="col-md-6">
              <form action="<?= base_url('Guest');?>" method="post">

                <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Cari Buku..." name="keyword" autocomplete="off">
                <div class="input-group-append">
                  <input class="btn btn-primary" type="submit" name="submit">
                </div>
              </div>

              </form>
            </div>
          </div>
        </div>
        <div class="col-lg-12 col-12">
          <h5 class="text-white text-center mt--2">Contoh : <span class="font-weight-light">bahasa jepang, budidaya, sang pemimpi, tere liye</span></h5>
        </div>
      </div>
    </div>
    <!-- SEARCH BUTTON-->

    <div class="container-fluid">
      <div class="row justify-content-center">
        <div class="col-lg-11">
          <div class="card">
            <!-- Card Header -->
            <div class="card-header bg-transparent border-0">
              <h3 class="text text-center mb-0">Daftar Buku</h3>
            </div>
            <div class="table-responsive">
                <table class="table align-items-center table-flush">
                  <thead class="thead-light">
                    <tr>
                      <th scope="col">No</th>
                      <th scope="col">Judul Buku</th>
                      <th scope="col">Penulis</th>
                      <th scope="col">Penerbit</th>
                      <th scope="col">Status</th>
                    </tr>
                  </thead>
                  <tbody class="list">
                    <?php if (empty($buku)) :?>
                      <tr>
                        <td colspan="6">
                          <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            <span class="alert-icon"><i class="fas fa-times"></i></span>
                            <span class="alert-text"><strong>Buku tidak ditemukan!</strong>
                            </span>
                          </div>
                        </td>
                      </tr>
                    <?php endif; ?>
                    <?php foreach ($buku as $listbuku):?>
                      <tr>
                        <td><?= ++$start; ?></td>
                        <td><?= word_limiter($listbuku['Title'],5); ?></td>
                        <td><?= word_limiter($listbuku['Author'],5); ?></td>
                        <td><?= word_limiter($listbuku['Publisher'],5); ?></td>
                        <td>
                          <?php if ($listbuku['Rule_id'] == 1) : ?>
                            <a class="text-success">Dapat Dipinjam</a>
                          <?php else : ?>
                            <a class="text-warning">Baca Ditempat</a>
                          <?php endif; ?>
                        </td>
                      </tr>
                    <?php endforeach; ?>
                  </tbody>
                </table>
                <?= $this->pagination->create_links(); ?>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- CONTOH CARD -->
      <div class="container-fluid">
        <div class="row justify-content-center">
          <div class="col-lg-4">
            <img src="<?=base_url()?>/assets/img/brand/search.svg" height="350">
          </div>
          <div class="col-lg-6">
            <h1 class="display-2 text-primary mt-4">Bagaimana cara pesan buku?</h1>
            <h3 class="text-default">Pemesanan peminjaman buku hanya dapat dilakukan oleh User yang telah mendaftar akun Sakuline! <a class="text-primary" href="<?= base_url('auth/register');?>">Daftar</a> atau <a class="text-primary" href="<?= base_url('auth');?>">Login</a> untuk mencari buku dan melakukan pemesanan, kemudian buku dapat diambil di Perpusda tanpa harus mencari di rak terlebih dahulu.</h3><br>
            <h3 class="text-warning">Login <i class="fas fa-fw fa-long-arrow-alt-right"></i> Cari buku <i class="fas fa-fw fa-long-arrow-alt-right"></i> Isi form pesanan <i class="fas fa-fw fa-long-arrow-alt-right"></i> Tunggu konfirmasi petugas <i class="fas fa-fw fa-long-arrow-alt-right"></i> Ambil buku di Perpusda!
            </h3>
            <a type="button" class="btn btn-primary btn-block mt-3" href="<?= base_url('auth');?>">Pinjam Buku Sekarang</a>
          </div>
        </div>
      </div>
    <!-- END OF CONTOH CARD -->
    <br>
    <br>
    <!-- CONTOH CARD -->
      <div class="container-fluid">
        <div class="row justify-content-center">
          <div class="col-lg-4">
            <img src="<?=base_url()?>/assets/img/brand/id-card.svg" height="350">
          </div>
          <div class="col-lg-6">
            <h1 class="display-2 text-primary mt-3">Buat kartu anggota!</h1>
            <h3 class="text-default">Untuk dapat meminjam buku, Anda harus memiliki kartu anggota perpustakaan terlebih dahulu. Lengkapi formulir pembuatan kartu anggota dengan data Anda dan kirim untuk melakukan pemesanan!</h3><br>
            <h3 class="text-warning">Login <i class="fas fa-fw fa-long-arrow-alt-right"></i> Isi Formulir <i class="fas fa-fw fa-long-arrow-alt-right"></i> Kirim <i class="fas fa-fw fa-long-arrow-alt-right"></i> Datang ke Perpusda <i class="fas fa-fw fa-long-arrow-alt-right"></i> Kartu jadi!
            </h3>
            <a type="button" class="btn btn-primary btn-block mt-3" href="<?= base_url('auth');?>">Login untuk Mengisi Formulir</a>
          </div>
        </div>
      </div>
    <!-- END OF CONTOH CARD -->
    <br><br><br><br>
    <!-- MAPS -->
      <div class="container-fluid bg-gradient-primary">
        <div class="row justify-content-center align-items-center">
          <div class="col-lg-5">
            <div class="embed-responsive embed-responsive-16by9">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3956.592363791342!2d109.68319499202418!3d-7.399487941830615!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7aa940fdf95121%3A0xd79417a62b71345e!2sDinas%20Kearsipan%20Dan%20Perpustakaan%20Kab.%20Banjarnegara!5e0!3m2!1sid!2sid!4v1642573248501!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
          </div>
          <div class="col-lg-5">
            <h1 class="display-2 text-secondary">Lokasi Perpusda</h1>
            <h3 class="text-secondary font-weight-light">Buku dan kartu anggota yang telah dipesan hanya dapat diambil di Perpusda! Anda dapat menggunakan Google Maps untuk mencari jalur menuju Perpustakaan Daerah Kabupaten Banjarnegara.</h3><br>
            <h5 class="card-title display-2 text-secondary">Alamat</h5>
            <p class="card-text text-secondary">Jl. Letjend Suprapto No.111, Kutabanjarnegara, Kec. Banjarnegara, Kab. Banjarnegara, Jawa Tengah 53418</p>
        </div>
      </div>
    </div>
    <!-- END OF MAPS -->
    <br>
    
    <!-- Footer -->
    <div class="container-fluid">
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
    <!-- Argon Scripts -->
    <!-- Core -->
    <script src="<?= base_url() ?>/assets/vendor/jquery/dist/jquery.min.js"></script>
    <script src="<?= base_url() ?>/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<?= base_url() ?>/assets/vendor/js-cookie/js.cookie.js"></script>
    <script src="<?= base_url() ?>/assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
    <script src="<?= base_url() ?>/assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
    <!-- Argon JS -->
    <script src="<?= base_url() ?>/assets/js/argon.js?v=1.2.0"></script>
    <script src="<?= base_url();?>/assets/vendor/sweetalert2/dist/sweetalert2.all.min.js"></script>
    <script src="<?= base_url();?>/assets/js/myscript.js"></script>
    
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
        <a href="https://www.freepik.com/vectors/face-id">Face id vector created by vectorjuice - www.freepik.com</a>
        <a href="https://www.freepik.com/vectors/library">Library vector created by vectorjuice - www.freepik.com</a>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>