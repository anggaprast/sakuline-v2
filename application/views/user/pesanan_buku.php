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
              <h1 class="text-white text-center mb-0">Daftar Pesanan Buku</h1>
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
                      <th scope="col">Tanggal Pesan</th>
                      <th scope="col">Nama</th>
                      <th scope="col">Judul Buku</th>
                      <th scope="col">Status</th>
                      <th scope="col">Action</th>
                    </tr>
                  </thead>
                  <tbody class="list">
                    <?php foreach ($pesanan_buku as $pbuku):?>
                      <tr>
                        <td><?= $pbuku['tanggal_pesan']; ?></td>
                        <td><?= $pbuku['nama']; ?></td>
                        <td><?= word_limiter($pbuku['judul'],5); ?></td>
                        <td>
                          <?php if ($pbuku['status'] == 'waiting') : ?>
                            <a class="text-warning">Waiting...</a>
                          <?php elseif ($pbuku['status'] == 'rejected') : ?>
                            <a class="text-danger">Ditolak</a>
                          <?php else :?>
                            <a class="text-info">Diterima</a>
                          <?php endif; ?>
                        </td>
                        <td>
                        <?php if ($pbuku['status'] == 'waiting') : ?>
                          <button class="btn btn-icon btn-outline-primary btn-sm" type="button" data-toggle="modal" data-target="#detailpesanbuku<?= $pbuku['id'];?>"><span class="btn-inner--icon"><i class="fas fa-fw fa-info"></i></span>
                          </button>
                          <button class="btn btn-icon btn-outline-danger btn-sm" type="button" data-toggle="modal" data-target="#deletepesanbuku<?= $pbuku['id'];?>" href="<?= base_url();?>Pesanan_buku/delete/<?= $pbuku['id']; ?>"><span class="btn-inner--icon"><i class="fas fa-fw fa-ban"></i></span>
                          </button>
                          <button class="btn btn-icon btn-outline-success btn-sm" type="button" data-toggle="modal" data-target="#acceptpesanbuku<?= $pbuku['id'];?>" href="<?= base_url();?>Pesanan_buku/accept/<?= $pbuku['id']; ?>"><span class="btn-inner--icon"><i class="fas fa-fw fa-check-circle"></i></span>
                          </button>
                        <?php else :?>
                          <button class="btn btn-icon btn-outline-primary btn-sm" type="button" data-toggle="modal" data-target="#detailpesanbuku<?= $pbuku['id'];?>"><span class="btn-inner--icon"><i class="fas fa-fw fa-info"></i></span>
                          </button>
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

<!-- MODAL DETAIL -->
<?php foreach ($pesanan_buku as $pbuku):?>
  <div class="modal fade" id="detailpesanbuku<?= $pbuku['id'];?>" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-md" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h6 class="modal-title text-center" id="modal-title-notification">Detail Pesanan Buku</h6>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div> 
        <div class="modal-body">
          <!-- MODAL BODY -->
          <div class="row">
            <div class="col-6">
              <label class="form-control-label" for="nama">Nama Pemesan</label>
              <h2 class="form-control"><?= $pbuku['nama']?></h2>
            </div>
            <div class="col-6">
              <label class="form-control-label" for="nama">Tanggal Pesan</label>
              <h2 class="form-control"><?= $pbuku['tanggal_pesan']?></h2>
            </div>
          </div>
          <div class="row">
            <div class="col-12">
              <label class="form-control-label" for="nama">Judul Buku</label>
              <h2 class="form-control"><?= $pbuku['judul']?></h2>
            </div>
          </div>
          <div class="row">
            <div class="col-6">
              <label class="form-control-label" for="nama">Kelas</label>
              <h2 class="form-control text-warning"><?= $pbuku['kelas']?></h2>
            </div>
            <div class="col-6">
              <label class="form-control-label" for="nama">Penulis</label>
              <h2 class="form-control"><?= $pbuku['penulis']?></h2>
            </div>
          </div>
          <hr class="my-4" />
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
<?php foreach ($pesanan_buku as $pbuku):?>
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
            <input type="hidden" name="nama" value="<?= $pbuku['nama'];?>">
            <input type="hidden" name="id_anggota" value="<?= $pbuku['id_anggota'];?>">
            <input type="hidden" name="judul" value="<?= $pbuku['judul'];?>">
            <input type="hidden" name="penulis" value="<?= $pbuku['penulis'];?>">
            <input type="hidden" name="penerbit" value="<?= $pbuku['penerbit'];?>">
            <input type="hidden" name="kelas" value="<?= $pbuku['kelas'];?>">
            <input type="hidden" name="keterangan" value="<?= $pbuku['keterangan'];?>">
            <input type="hidden" name="tanggal_pesan" value="<?= $pbuku['tanggal_pesan'];?>">
            <input type="hidden" name="id" value="<?= $pbuku['id'];?>">
            <input type="hidden" name="email" value="<?= $pbuku['email'];?>">
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
<?php endforeach; ?>
  <!-- MODAL REJECT -->

<?php foreach ($pesanan_buku as $pbuku):?>
<!-- ACCEPT MODAL -->
  <div class="modal fade" id="acceptpesanbuku<?= $pbuku['id'];?>" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
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
              <h3>Kelas</h3>
            </div>
            <div class="col-8">
              <h3>: <?= $pbuku['kelas']; ?></h3>
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
            <input type="hidden" name="nama" value="<?= $pbuku['nama'];?>">
            <input type="hidden" name="id_anggota" value="<?= $pbuku['id_anggota'];?>">
            <input type="hidden" name="judul" value="<?= $pbuku['judul'];?>">
            <input type="hidden" name="penulis" value="<?= $pbuku['penulis'];?>">
            <input type="hidden" name="penerbit" value="<?= $pbuku['penerbit'];?>">
            <input type="hidden" name="kelas" value="<?= $pbuku['kelas'];?>">
            <input type="hidden" name="keterangan" value="<?= $pbuku['keterangan'];?>">
            <input type="hidden" name="tanggal_pesan" value="<?= $pbuku['tanggal_pesan'];?>">
            <input type="hidden" name="id" value="<?= $pbuku['id'];?>">
            <input type="hidden" name="email" value="<?= $pbuku['email'];?>">
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
<?php endforeach; ?>
<!-- MODAL ACCEPT -->