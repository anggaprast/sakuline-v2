<!-- Main content -->
  <div class="header pb-6 d-flex align-items-center" style="min-height: 300px; background-image: url(<?=base_url()?>/assets/img/theme/kmj.jpeg); background-size: cover; background-position: center top;">
    <span class="mask bg-gradient-default opacity-7"></span>
    <!-- Header -->
    <!-- Header -->
      <div class="container-fluid">
        <div class="header-body">
          <div class="row align-items-center">
            <div class="col-lg-12 col-12">
              <h2 class="text-white text-center mb-0">Temukan buku yang anda cari</h2>
            </div>
          </div>
          <br>

        <!-- SEARCH BUTTON -->
        <div class="row justify-content-center">
          <div class="col-md-8">
            <form action="<?= base_url('Buku');?>" method="post">

              <div class="input-group mb-3">
              <input type="text" class="form-control" placeholder="Cari Buku..." name="keyword" autocomplete="off" value="<?= set_value('keyword');?>">
              <div class="input-group-append">
                <input class="btn btn-primary" type="submit" name="submit">
              </div>
            </div>

            </form>
          </div>
          <div class="col-lg-12 col-12">
              <h5 class="text-white text-center mb-0">Contoh : <span class="font-weight-light">bahasa jepang, budidaya, sang pemimpi, tere liye</span></h5>
            </div>
        </div>
        <!-- SEARCH BUTTON -->
            
        </div>
      </div>
  </div>
    <!-- Page content -->
    <div class="container-fluid mt--6">
      <div class="row">
        <div class="col-xl-12">
          <div class="card bg-default">
            <!-- Card Header -->
            <div class="card-header bg-transparent border-0">
              <h3 class="text-white text-center mb-0">Daftar Buku</h3>
            </div>
            <div class="table-responsive">
                <table class="table align-items-center table-dark table-flush">
                  <thead class="thead-dark">
                    <!-- BUKU NOT FOUND -->
                    <?php if (empty($buku)) : ?>
                      <div class="alert alert-warning" role="alert">
                        <span class="alert-icon"><i class="fas fa-search"></i></span>
                        <span class="alert-text"><strong>Buku tidak ditemukan!</strong></span>
                    </div>
                    <?php endif; ?>
                    <!-- -->
                    <tr>
                      <th scope="col">ID</th>
                      <th scope="col">Judul Buku</th>
                      <th scope="col">Penulis</th>
                      <th scope="col">Penerbit</th>
                      <th scope="col">Action</th>
                    </tr>
                  </thead>
                  <tbody class="list">
                    <?php foreach ($buku as $listbuku):?>
                      <tr>
                        <td><?= $listbuku['ID']; ?></td>
                        <td><?= word_limiter($listbuku['Title'], 5); ?></td>
                        <td><?= word_limiter($listbuku['Author'], 5); ?></td>
                        <td><?= word_limiter($listbuku['Publisher'], 5); ?></td>
                        <td>
                          <?php if ($listbuku['Rule_id'] == 1) : ?>
                          <a class="badge badge-pill badge-md badge-default" data-toggle="modal" data-target="#pinjammodal<?= $listbuku['ID'];?>" href="<?= base_url();?>Form_buku/index/<?= $listbuku['ID']; ?>">Pinjam</a>
                          <?php else : ?>
                          <a>Baca ditempat</a>
                          <?php endif; ?>
                        </td>
                      </tr>
                    <?php endforeach; ?>
                  </tbody>
                </table>
                <?= $this->pagination->create_links(); ?>
            </div>
            <!-- Table -->
          </div>
        </div>
      </div>


    <!-- Modal PINJAM BUKU -->
<?php foreach ($buku as $listbuku):?>
  <div class="modal fade" id="pinjammodal<?= $listbuku['ID'];?>" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-" role="document">
        <div class="modal-content">

            <div class="modal-header">
                <h6 class="modal-title" id="modal-title-default">Form Pemesanan Buku</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            
            <div class="modal-body">
                  <form role="form" method="post" action="<?= base_url('form_buku/pesan_buku');?>">
                      <!-- BUKU YANG DIPESAN -->
                        <div class="row">
                          <div class="col-lg-12">
                          <div class="form-group">
                            <label class="form-control-label" for="judul">Judul Buku</label>
                            <input type="text" name="judul" class="form-control" id="judul" value="<?= $listbuku['Title'];?>" readonly>
                          </div>
                        </div>
                        </div>
                        <input type="hidden" name="kelas" class="form-control" id="kelas" value="<?= $listbuku['Class'];?>">
                        <div class="row">
                          <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="penulis">Penulis</label>
                            <input type="text" class="form-control" id="penulis" name="penulis" value="<?= $listbuku['Author'];?>" readonly>
                          </div>
                        </div>
                          <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="penerbit">Penerbit</label>
                            <input type="text" id="penerbit" name="penerbit" class="form-control" value="<?= $listbuku['Publisher'];?>" readonly>
                          </div>
                        </div>
                        <input type="hidden" name="kelas" id="kelas" value="<?= $listbuku['Class'];?>">
                        </div>

                      <!-- INFO PEMESAN -->
                      <div class="row">
                        <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="nama">Nama Lengkap</label>
                            <input type="text" id="nama" name="nama" class="form-control" value="<?= $user['username'];?>" readonly>
                            <input type="hidden" name="email" id="email" value="<?= $this->session->userdata('email');?>">
                          </div>
                        </div>
                        <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="id_anggota">Nomor Kartu Anggota</label>
                            <input type="text" id="id_anggota" name="id_anggota" class="form-control" value="<?= $user['id_anggota'];?>" readonly>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-lg-12">
                          <div class="form-group">
                            <label class="form-control-label" for="keterangan">Keterangan</label>
                            <input type="text" id="keterangan" name="keterangan" class="form-control" placeholder="Alasan meminjam buku">
                          </div>
                        </div>
                      </div>
                    <!-- Button -->
                    <div class="text-center">
                      <button type="submit" class="btn btn-primary btn-block">Kirim Pesanan</button>
                  </div>
                    <!-- Description -->
                  </form>
            </div>
        </div>
    </div>
</div>
<?php endforeach; ?>
 