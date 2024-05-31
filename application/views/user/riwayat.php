<!DOCTYPE html>
<html>
  <!-- Main content -->
  <div class="header bg-primary pb-6">
    <!-- Header -->
    <!-- Header -->
      <div class="container-fluid">
        <div class="header-body">
          <div class="row align-items-center">
            <div class="col-lg-12 col-12">
              <h1 class="text-white text-center mb-0">Riwayat Pesanan Buku</h1>
            </div>
          </div>
          <br>

        <!-- SEARCH BUTTON -->
        <div class="row justify-content-center">
          <div class="col-md-8">
            <form action="<?= base_url('pesanan_buku');?>" method="post">

              <div class="input-group mb-3">
              <input type="text" class="form-control" placeholder="Cari Pesanan..." name="psbuku_keyword" autocomplete="off" value="">
              <div class="input-group-append">
                <input class="btn btn-success" type="submit" name="submit">
              </div>
            </div>

            </form>
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
          <div class="card">
            <!-- Card Header -->
            <div class="card-header border-0">
              <h3 class="text-center mb-0">Tabel Pesanan</h3>
            </div>
            <div class="table-responsive">
                <table class="table align-items-center table-flush">
                  <thead class="thead-light">
                    <!-- BUKU NOT FOUND -->
                    <!-- -->
                    <tr>
                      <th scope="col">Tanggal Konfirmasi</th>
                      <th scope="col">Nama</th>
                      <th scope="col">Judul Buku</th>
                      <th scope="col">Status</th>
                      <th scope="col">Detail</th>
                    </tr>
                  </thead>
                  <tbody class="list">
                    <?php foreach ($pesanan_buku as $pbuku):?>
                      <tr>
                        <td><?= date('d F Y', $pbuku['tanggal_action']); ?></td>
                        <td><?= $pbuku['nama']; ?></td>
                        <td><?= word_limiter($pbuku['judul'],5); ?></td>
                        <td>
                          <?php if ($pbuku['status'] == 'accepted') : ?>
                            <a class="text-success">Diterima</a>
                          <?php elseif ($pbuku['status'] == 'rejected') : ?>
                            <a class="text-danger">Ditolak</a>
                          <?php else :?>
                            <a class="text-warning">Dibatalkan</a>
                          <?php endif; ?>
                        </td>
                        <td>
                          <!-- <a class="badge badge-pill badge-md badge-primary" data-toggle="modal" data-target="#detailpesanbuku<?= $pbuku['id'];?>" href="">detail</a> -->
                          <button class="btn btn-icon btn-outline-primary btn-sm" type="button" data-toggle="modal" data-target="#detailpesanbuku<?= $pbuku['id'];?>">
                            <span class="btn-inner--icon"><i class="fas fa-fw fa-info"></i></span>
                          </button>
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

<!-- MODAL DETAIL -->
<?php foreach ($pesanan_buku as $pbuku):?>
<!-- DETAIL MODAL -->
  <div class="modal fade" id="detailpesanbuku<?= $pbuku['id'];?>" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h6 class="modal-title" id="modal-title-notification">Detail Pesanan Buku</h6>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div> 
        <div class="modal-body">
          <!-- MODAL BODY -->
          <div class="row">
            <div class="col-4">
              <h2>Pemesan</h2>
            </div>
            <div class="col-8">
              <h2>: <?= $pbuku['nama']?></h2>
            </div>
          </div>
            <div class="row">
              <div class="col-4">
                <h3>Judul buku</h3>
              </div>
              <div class="col-8">
                <h3>: <?= $pbuku['judul']; ?></h3>
              </div>
            </div>
            <div class="row">
              <div class="col-4">
                <h3>Penulis</h3>
              </div>
              <div class="col-8">
                <h3>: <?= $pbuku['penulis']; ?></h3>
              </div>
            </div>
            <div class="row">
              <div class="col-4">
                <h3>Penerbit</h3>
              </div>
              <div class="col-8">
                <h3>: <?= $pbuku['penerbit']?></h3>
              </div>
            </div>
            <div class="row">
              <div class="col-4">
                <h3>Tanggal pesan</h3>
              </div>
              <div class="col-8">
                <h3>: <?=$pbuku['tanggal_pesan']; ?></h3>
              </div>
            </div>
            <div class="row">
              <div class="col-4">
                <h3>Status </h3>
              </div>
              <div class="col-8">
                <?php if ($pbuku['status'] == 'waiting') : ?>
                  <h3>: <span class="text-danger">Waiting...</span></h3>
                <?php elseif ($pbuku['status'] == 'rejected') : ?>
                  <h3>: <span class="text-danger">Pesanan Ditolak</span></h3>
                <?php else : ?>
                  <h3>: <span class="text-info">Pesanan Diterima</span></h3>
                <?php endif; ?>
              </div>
            </div>
            <div class="row">
              <div class="col-4">
                <h3>Pesan </h3>
              </div>
              <div class="col-8">
                <h3>: <?= $pbuku['pesan']?></h3>
              </div>
            </div>
          <!-- MODAL BODY -->
        </div>
        <div class="modal-footer">
            <button type="button" name="edit" data-dismiss="modal" class="btn btn-primary btn-block">Close</button>
        </div> 
      </div>
    </div>
  </div>
  <!-- DETAIL MODAL -->
  <?php endforeach; ?>

 <!-- MODAL REJECT -->
<!-- <?php foreach ($pesanan_buku as $pbuku):?>
  <div class="modal fade" id="deletepesanbuku<?= $pbuku['id'];?>" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-" role="document">
      <div class="modal-content">
        <form role="form"  method="post" action="<?= base_url();?>Pesanan_buku/delete/<?= $pbuku['id'];?>">
        <div class="modal-header">
          <h6 class="modal-title" id="modal-title-default">Tolak Pesanan</h6>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <h1>Tolak pesanan?</h1>
          <div class="row">
            <div class="col-4">
              <h3>Judul buku</h3>
            </div>
            <div class="col-8">
              <h3>: <?= $pbuku['judul']; ?></h3>
            </div>
          </div>
          <div class="row">
            <div class="col-4">
              <h3>Pemesan</h3>
            </div>
            <div class="col-8">
              <h3>: <?= $pbuku['nama']; ?></h3>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-12">
              <div class="form-group">
                <label class="form-control-label" for="pesan">Kirim Pesan</label>
                <textarea type="text" id="pesan" name="pesan" class="form-control"></textarea>
              </div>
            </div>
          </div>
          <div class="form-group">
            <input type="hidden" name="id" value="<?= $pbuku['id'];?>">
            <input type="hidden" name="status" value="rejected">
          </div>
        </div>
        <div class="modal-footer">
          <button type="submit" name="accept" class="btn btn-danger">Tolak</button>
          <button type="button" class="btn btn-primary" data-dismiss="modal">Batal</button>
        </div>
      </form>
      </div>
    </div>
  </div>
<?php endforeach; ?> -->
  <!-- MODAL REJECT -->

<!-- <?php foreach ($pesanan_buku as $pbuku):?> -->
<!-- ACCEPT MODAL -->
 <!--  <div class="modal fade" id="acceptpesanbuku<?= $pbuku['id'];?>" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-" role="document">
      <div class="modal-content">
      <form role="form"  method="post" action="<?= base_url();?>Pesanan_buku/accept/<?= $pbuku['id'];?>">
        <div class="modal-header">
          <h6 class="modal-title" id="modal-title-default">Terima Pesanan</h6>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <h1>Terima pesanan?</h1>
          <div class="row">
            <div class="col-4">
              <h3>Judul buku</h3>
            </div>
            <div class="col-8">
              <h3>: <?= $pbuku['judul']; ?></h3>
            </div>
          </div>
          <div class="row">
            <div class="col-4">
              <h3>Pemesan</h3>
            </div>
            <div class="col-8">
              <h3>: <?= $pbuku['nama']; ?></h3>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-12">
              <div class="form-group">
                <label class="form-control-label" for="pesan">Kirim Pesan</label>
                <textarea type="text" id="pesan" name="pesan" class="form-control"></textarea>
              </div>
            </div>
          </div>
          <div class="form-group">
            <input type="hidden" name="id" value="<?= $pbuku['id'];?>">
            <input type="hidden" name="status" value="accepted">
          </div>
        </div>
        <div class="modal-footer">
          <button type="submit" name="accept" class="btn btn-success btn-block">Accept</button>
        </div>
      </form>
      </div>
    </div>
  </div>
<?php endforeach; ?> -->
<!-- MODAL ACCEPT -->