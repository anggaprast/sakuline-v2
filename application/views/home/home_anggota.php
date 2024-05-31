<!-- Main content -->
  <div class="header pb-6 d-flex align-items-center" style="min-height: 400px; background-image: url(<?=base_url()?>/assets/img/theme/background.jpg); background-size: cover; background-position: center top;">
    <span class="mask bg-gradient-default opacity-7"></span>
    <!-- Header -->
    <!-- Header -->
      <div class="container-fluid">
        <div class="header-body">
          <div class="row align-items-center py-4">
            <div class="col-lg-12 col-12">
              <h1 class="text-white text-center mb-0">Website Katalog Buku Perpustakaan Daerah</h2>
              <h1 class="text-white text-center mb-0">Kabupaten Banjarnegara</h2>
            </div>
          </div>
          <!-- Card stats -->
          <div class="row">
            <div class="col-xl-4 col-md-4">
              <div class="card card-stats">
                <!-- Card body -->
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-green mb-0">Total Pesanan Diterima</h5>
                      <span class="h2 font-weight-bold mb-0"><?= $status_diterima;?> Buku</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-gradient-green text-white rounded-circle shadow">
                        <i class="fas fa-fw fa-check"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-4 col-md-4">
              <div class="card card-stats">
                <!-- Card body -->
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-danger mb-0">Total Pesanan Ditolak</h5>
                      <span class="h2 font-weight-bold mb-0"><?= $status_ditolak;?> Buku</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-gradient-danger text-white rounded-circle shadow">
                        <i class="fas fa-fw fa-times"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-4 col-md-4">
              <div class="card card-stats">
                <!-- Card body -->
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-info mb-0">Total Pesanan Anda</h5>
                      <span class="h2 font-weight-bold mb-0"><?= $this->db->get_where('pesan_buku', ['nama' => $this->session->userdata('username')])->num_rows();?> Buku</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-gradient-info text-white rounded-circle shadow">
                        <i class="fas fa-fw fa-shopping-cart"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
  </div>
    <!-- Page content -->
    <div class="container-fluid mt--6">

      <div class="row">

        <!-- REKOMENDASI BUKU -->
        <div class="col-md-8">
          <div class="card bg-default">
            <!-- Card Header -->
            <div class="card-header bg-transparent border-0">
              <h3 class="text-white text-center mb-0">Rekomendasi Buku untuk Anda</h3>
            </div>
            <div class="table-responsive">
                <table class="table align-items-center table-dark table-flush">
                  <thead class="thead-dark">
                    <tr>
                      <th scope="col">Judul Buku</th>
                      <th scope="col">Penulis</th>
                      <th scope="col">Penerbit</th>
                      <th scope="col">Action</th>
                    </tr>
                  </thead>
                  <tbody class="list">
                    <?php foreach ($buku as $listbuku):?>
                      <tr>
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
            </div>
            <!-- Table -->
          </div>
        </div>
        <!-- END OF REKOMENDASI BUKU -->

        <!-- NOTIFIKASI PESANAN -->
        <div class="col-md-4">
          <?php foreach ($pesanan as $ps) :?>
          <div class="card">
            <div class="card-body">
              <div class="row">
                <div class="col">
                  <?php if ($ps['status'] == 'rejected') :?>
                  <div class="row">
                    <div class="col-md-7">
                      <h5 class="card-title text-uppercase mb-0 text-danger">Notifikasi Pesanan</h5>
                    </div>
                    <div class="col-md-5">
                      <div class="h5"></i><span><?= date('d F Y', $ps['tanggal_action']); ?></span></div>
                    </div>
                  </div>
                  <span class="h2 font-weight-bold mb-0 text-danger">Pesanan Buku Ditolak <i class="fas fa-times-circle"></i></span>
                  <hr class="my-3">
                  <!-- ISI KOTAKAN -->
                  <div class="row">
                    <div class="col-md-4"><h5>Judul</h5></div>
                    <div class="col-md-8"><h5>: <?= $ps['judul'];?></h5></div>
                  </div>
                  <div class="row">
                    <div class="col-md-4"><h5>Penulis</h5></div>
                    <div class="col-md-8"><h5>: <?= $ps['penulis'];?></h5></div>
                  </div>
                  <div class="row">
                    <div class="col-md-4"><h5>Pesan</h5></div>
                    <div class="col-md-8"><h5 class="text-warning">: <?= $ps['pesan'];?></h5></div>
                  </div>
                  <hr class="my-3">
                  <!-- ISI KOTAKAN -->
                  <?php elseif ($ps['status'] == 'accepted'):?>
                  <div class="row">
                    <div class="col-md-7">
                      <h5 class="card-title text-uppercase mb-0 text-success">Notifikasi Pesanan</h5>
                    </div>
                    <div class="col-md-5">
                      <div class="h5"><span><?= date('d F Y', $ps['tanggal_action']); ?></span></div>
                    </div>
                  </div>
                  <span class="h2 font-weight-bold mb-0 text-success">Pesanan Buku Diterima <i class="fas fa-check-circle"></i></span>
                  <hr class="my-3">
                  <!-- ISI KOTAKAN -->
                  <div class="row">
                    <div class="col-md-4"><h5>Judul</h5></div>
                    <div class="col-md-8"><h5>: <?= $ps['judul'];?></h5></div>
                  </div>
                  <div class="row">
                    <div class="col-md-4"><h5>Penulis</h5></div>
                    <div class="col-md-8"><h5>: <?= $ps['penulis'];?></h5></div>
                  </div>
                  <div class="row">
                    <div class="col-md-4"><h5>Pesan</h5></div>
                    <div class="col-md-8"><h5 class="text-success">: <?= $ps['pesan'];?></h5></div>
                  </div>
                  <hr class="my-3">
                  <!-- ISI KOTAKAN -->
                  <?php endif;?>
                </div>
              </div>
            </div>
          </div>
                  <?php endforeach; ?>
        </div>
        <!-- END NOTIFIKASI -->
        
      </div>

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
                        </div>

                      <!-- INFO PEMESAN -->
                      <div class="row">
                        <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="nama">Nama Lengkap</label>
                            <input type="text" id="nama" name="nama" class="form-control" value="<?= $user['username'];?>" readonly>
                            <input type="hidden" name="email" id="email" value="<?= $this->session->userdata('email');?>" >
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
                            <input type="text" id="keterangan" name="keterangan" class="form-control" placeholder="Alasan memnijam buku">
                          </div>
                        </div>
                      </div>
                    <!-- Button -->
                    <div class="text-center">
                      <button type="submit" class="btn btn-primary">Kirim Pesanan</button>
                  </div>
                    <!-- Description -->
                  </form>
            </div>
        </div>
    </div>
</div>
<?php endforeach; ?>