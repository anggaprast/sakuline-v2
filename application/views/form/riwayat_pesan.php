<!DOCTYPE html>
<html>
  <!-- Main content -->
  <div class="header pb-6 d-flex align-items-center" style="min-height: 300px; background-image: url(<?=base_url()?>/assets/img/theme/bi-corner.png); background-size: cover; background-position: center top;">
    <span class="mask bg-gradient-default opacity-6"></span>
    <!-- Header -->
    <!-- Header -->
      <div class="container-fluid">
        <div class="header-body">
          <div class="row align-items-center">
            <div class="col-lg-12 col-12">
              <h1 class="text-white text-center mb-0">Riwayat Pemesanan Buku Anda</h1>
            </div>
          </div>
        </div>
      </div>
  </div>
    <!-- Page content -->
    <div class="container-fluid mt--7">
      <div class="row">
        <div class="col-md-6">
          <!-- NOTIF KOTAK DITERIMA -->
          <div class="card">
            <div class="card-body">
              <div class="row">
                <div class="col">
                  <!-- PESANAN DITERIMA -->
                  <h5 class="card-title text-uppercase mb-0 text-info">Riwayat Pesanan</h5>
                  <span class="h2 font-weight-bold mb-0 text-info">Pesanan Buku Diterima <i class="fas fa-check-circle"></i></span>
                  <?php foreach ($pesanan as $ps) :?>
                  <?php if ($ps['status'] == 'accepted') : ?>
                  <hr class="my-3">
                  <!-- ISI KOTAKAN -->
                  <div class="row"><div class="col-md-12 mt--2"><i class="fas fa-bell"></i>
                    <span class="h4"><?= date('d F Y', $ps['tanggal_action']); ?></span>
                  </div></div>
                  <div class="row">
                    <div class="col-md-4"><h5>Judul</h5></div>
                    <div class="col-md-8"><h5>: <?= $ps['judul'];?></h5></div>
                  </div>
                  <div class="row">
                    <div class="col-md-4"><h5>Pesan</h5></div>
                    <div class="col-md-8"><h5 class="text-success">: <?= $ps['pesan'];?></h5></div>
                  </div>
                  <?php endif;?>

                  <?php endforeach?>
                </div>
              </div>
            </div>
          </div>
        </div>
           
        <!-- PESANAN DITOLAK -->
        <div class="col-md-6">
          <div class="card">
            <div class="card-body">
          <table class="table align-items-center table-flush">
              <div class="row">
                <div class="col">
                  <h5 class="card-title text-uppercase mb-0 text-danger">Riwayat Pesanan </h5>
                  <span class="h2 font-weight-bold mb-0 text-danger">Pesanan Buku Ditolak <i class="fas fa-times-circle"></i></span>
                  <tbody class="list">
                  <?php foreach ($pesanan as $ps) :?>
                  <?php if ($ps['status'] == 'rejected') :?>
                  <hr class="my-3">
                  <!-- ISI KOTAKAN -->
                  <div class="row"><div class="col-md-12 mt--2"><i class="fas fa-bell"></i>
                    <span class="h4"><?= date('d F Y', $ps['tanggal_action']); ?></span>
                  </div></div>
                  <div class="row">
                    <div class="col-md-4"><h5>Judul</h5></div>
                    <div class="col-md-8"><h5>: <?= $ps['judul'];?></h5></div>
                  </div>
                  <div class="row">
                    <div class="col-md-4"><h5>Pesan</h5></div>
                    <div class="col-md-8"><h5 class="text-warning">: <?= $ps['pesan'];?></h5></div>
                  </div>
                  <!-- ISI KOTAKAN -->
                  <?php endif;?>
                  <?php endforeach; ?>
                </tbody> 
                </div>
              </div>
          </table>
          <?= $this->pagination->create_links(); ?>
            </div>
          </div>
          <!-- END NOTIF -->
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
          <a href="<?= base_url(); ?>Action_riwayat/cancel/<?= $ps['id']?>" class="btn btn-danger">Oke</a>
        </div>
      </div>
    </div>
  </div>
<?php endforeach; ?>
<!-- MODAL DELETE -->
