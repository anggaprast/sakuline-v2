<!DOCTYPE html>
<html>
  <!-- Main content -->
  <div class="header pb-6 d-flex align-items-center" style="min-height: 300px; background-image: url(<?=base_url()?>/assets/img/theme/perpuskel.jpeg); background-size: cover; background-position: center top;">
    <span class="mask bg-gradient-default opacity-6"></span>
    <!-- Header -->
    <!-- Header -->
      <div class="container-fluid">
        <div class="header-body">
          <div class="row align-items-center">
            <div class="col-lg-12 col-12">
              <h1 class="text-white text-center mb-0">Daftar Pemesanan Buku Anda</h1>
            </div>
          </div>
        </div>
      </div>
  </div>
    <!-- Page content -->
    <div class="container-fluid mt--7">
      <?= $this->session->flashdata('message_buku');?>
      <div class="row">
        <div class="col-xl-12">
          <div class="card">
            <!-- Card Header -->
            <div class="card-header border-0">
              <h3 class="text-center mb-0">Daftar Pesanan</h3>
            </div>
            <div class="table-responsive">
                <table class="table align-items-center table-flush">
                  <thead class="thead-light">
                    <!-- BUKU NOT FOUND -->
                    <tr>
                      <th scope="col">Tanggal Pesan</th>
                      <th scope="col">Judul Buku</th>
                      <th scope="col">Status</th>
                      <th scope="col">Keterangan</th>
                    </tr>
                  </thead>
                  <tbody class="list">
                    <?php foreach ($pesanan as $ps):?>
                      <tr>
                        <td><?= $ps['tanggal_pesan']; ?></td>
                        <td><?= word_limiter($ps['judul'],5); ?></td>
                        <td><a class="text-warning">Waiting...</a>
                        <td><?= word_limiter($ps['keterangan'], 5);?>
                        <!-- 
                          <a class="badge badge-pill badge-md badge-danger" data-toggle="modal" data-target="#cancelmodal<?= $ps['id'];?>" href="<?= base_url();?>Action_riwayat/cancel/<?= $ps['id']; ?>">cancel</a> -->
                        </td>
                      </tr>
                    <?php endforeach; ?>
                  </tbody>
                </table>
            </div>
            <!-- Table -->
          </div>
        </div>
      </div>


<?php foreach ($pesanan as $ps):?>
<!-- DELETE MODAL -->
  <div class="modal fade" id="cancelmodal<?= $ps['id'];?>" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h6 class="modal-title" id="modal-title-default">Pemesanan</h6>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <h1>Batalkan pesanan?</h1>
          <div class="row">
            <div class="col-4">
              <h3>Judul buku</h3>
            </div>
            <div class="col-8">
              <h3>: <?= $ps['judul']; ?></h3>
            </div>
          </div>
          <div class="row">
            <div class="col-4">
              <h3>Penulis</h3>
            </div>
            <div class="col-8">
              <h3>: <?= $ps['penulis']; ?></h3>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <a href="<?= base_url(); ?>Action_riwayat/cancel/<?= $ps['id']?>" class="btn btn-danger">Batalkan Pesanan</a>
          <button type="button" class="btn btn-primary" data-dismiss="modal">Kembali</button>
        </div>
      </div>
    </div>
  </div>
<?php endforeach; ?>
<!-- MODAL DELETE -->
