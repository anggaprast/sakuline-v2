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
              <h1 class="text-white text-center mb-0">Daftar Pesanan Kartu Anggota</h1>
            </div>
          </div>

          <!-- SEARCH BUTTON -->
          <div class="row justify-content-center mt-4">
            <div class="col-md-8">
              <form action="<?= base_url('pesanan_kartu');?>" method="post">
                <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Cari..." name="keyword_kartu" autocomplete="off" value="<?= set_value('keyword_kartu');?>">
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
      <?= $this->session->flashdata('message'); ?>
      <div class="row">
        <div class="col-xl-12">
          <div class="card">
            <!-- Card Header -->
            <div class="card-header border-0">
              <h3 class="text-center mb-0">Tabel Pemesan</h3>
            </div>
            <div class="table-responsive">
                <table class="table align-items-center table-flush">
                  <thead class="thead-light">
                    <!-- BUKU NOT FOUND -->
                    <!-- -->
                    <tr>
                      <th scope="col">No</th>
                      <th scope="col">Nama</th>
                      <th scope="col">Whatsapp</th>
                      <th scope="col">Kecamatan</th>
                      <th scope="col">Tanggal Pesan</th>
                      <th scope="col">Status</th>
                      <th scope="col">Action</th>
                    </tr>
                  </thead>
                  <tbody class="list">
                    <?php foreach ($pesanan_kartu as $pkartu):?>
                      <tr>
                        <td><?= ++$start; ?></td>
                        <td><?= $pkartu['nama']; ?></td>
                        <td><?= $pkartu['nohp']; ?></td>
                        <td>
                          <?php if ($pkartu['kecamatan'] == 2):?>
                            Banjarmangu
                          <?php elseif ($pkartu['kecamatan'] == 3):?>
                            Banjarnegara
                          <?php elseif ($pkartu['kecamatan'] == 4):?>
                            Batur
                          <?php elseif ($pkartu['kecamatan'] == 5):?>
                            Bawang
                          <?php elseif ($pkartu['kecamatan'] == 6):?>
                            Kalibening
                          <?php elseif ($pkartu['kecamatan'] == 7):?>
                           Karangkobar
                          <?php elseif ($pkartu['kecamatan'] == 8):?>
                            Madukara
                          <?php elseif ($pkartu['kecamatan'] == 9):?>
                            Mandiraja
                          <?php elseif ($pkartu['kecamatan'] == 10):?>
                           Pagedongan
                          <?php elseif ($pkartu['kecamatan'] == 11):?>
                            Pagentan
                          <?php elseif ($pkartu['kecamatan'] == 12):?>
                            Pandanarum
                          <?php elseif ($pkartu['kecamatan'] == 13):?>
                            Pejawaran
                          <?php elseif ($pkartu['kecamatan'] == 14):?>
                           Punggelan
                          <?php elseif ($pkartu['kecamatan'] == 15):?>
                           Purwanegara
                          <?php elseif ($pkartu['kecamatan'] == 16):?>
                            Purworejo Klampok
                          <?php elseif ($pkartu['kecamatan'] == 17):?>
                            Rakit
                          <?php elseif ($pkartu['kecamatan'] == 18):?>
                           Sigaluh
                          <?php elseif ($pkartu['kecamatan'] == 19):?>
                           Susukan
                          <?php elseif ($pkartu['kecamatan'] == 20):?>
                            Wanadadi
                          <?php elseif ($pkartu['kecamatan'] == 21):?>
                            Wanayasa
                          <?php endif;?>
                        </td>
                        <td><?= $pkartu['date_created']; ?></td>
                        <td>
                          <?php if ($pkartu['status'] == 'waiting') : ?>
                            <a class="text-danger">Waiting...</a>
                          <?php else : ?>
                            <a class="text-info">Accepted</a>
                          <?php endif; ?>
                        </td>
                        <td>
                          <?php if ($pkartu['status'] == 'waiting'):?>
                          <button class="btn btn-icon btn-outline-primary btn-sm" type="button" data-toggle="modal" data-target="#detailpesankartu<?= $pkartu['id'];?>"><span class="btn-inner--icon"><i class="fas fa-fw fa-info"></i></span>
                          </button><!-- 
                          <button class="btn btn-icon btn-outline-danger btn-sm" type="button" data-toggle="modal" data-target="#deletepesankartu<?= $pkartu['id'];?>" href="<?= base_url(); ?>Pesanan_kartu/delete/<?= $pkartu['id']?>"><span class="btn-inner--icon"><i class="fas fa-fw fa-trash"></i></span>
                          </button> -->
                          <button class="btn btn-icon btn-outline-success btn-sm" type="button" data-toggle="modal" data-target="#acceptpesankartu<?= $pkartu['id'];?>" href="<?= base_url();?>Pesanan_kartu/accept/<?= $pkartu['id']; ?>"><span class="btn-inner--icon"><i class="fas fa-fw fa-check-circle"></i></span>
                          </button>
                          <?php else:?>
                          <a class="btn btn-icon btn-outline-primary btn-sm" type="button" onclick="window.open('<?= base_url();?>pesanan_kartu/print/<?= $pkartu['id']?>')"><span class="btn-inner--icon"><i class="fas fa-fw fa-print"></i></span>
                          </a>
                          <?php endif;?>
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
      

<!-- MODAL DETAIL -->
<?php foreach ($pesanan_kartu as $pkartu):?>
<!-- DETAIL MODAL -->
  <div class="modal fade" id="detailpesankartu<?= $pkartu['id'];?>" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h6 class="modal-title" id="modal-title-notification">Detail Pesanan Kartu</h6>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div> 
        <div class="modal-body">
          <!-- MODAL BODY -->
          <div class="row">
            <div class="col-4">
              <label class="form-control-label" for="nama">Nama Lengkap</label>
              <h2 class="form-control"><?= $pkartu['nama']?></h2>
            </div>
            <div class="col-4">
              <label class="form-control-label" for="nama">Jenis Kelamin</label>
              <h2 class="form-control"><?= $pkartu['jeniskelamin']?></h2>
            </div>
            <div class="col-4">
              <label class="form-control-label" for="nama">Tempat & Tanggal Lahir</label>
              <h2 class="form-control"><?= $pkartu['tempatlahir']?>, <?= date('d M Y', strtotime($pkartu["tanggallahir"])); ?></h2>
            </div>
          </div>
          <div class="row">
            <div class="col-12">
              <label class="form-control-label" for="nama">Alamat</label>
              <h2 class="form-control"><?= $pkartu['alamat']?></h2>
            </div>
          </div>
          <div class="row">
            <div class="col-4">
              <label class="form-control-label" for="nama">Kelurahan</label>
              <h2 class="form-control"><?= $pkartu['kelurahan']?></h2>
            </div>
            <div class="col-4">
              <label class="form-control-label" for="nama">Kecamatan</label>
              <?php if ($pkartu['kecamatan'] == 2):?>
                <h2 class="form-control">Banjarmangu</h2>
              <?php elseif ($pkartu['kecamatan'] == 3):?>
                <h2 class="form-control">Banjarnegara</h2>
              <?php elseif ($pkartu['kecamatan'] == 4):?>
                <h2 class="form-control">Batur</h2>
              <?php elseif ($pkartu['kecamatan'] == 5):?>
                <h2 class="form-control">Bawang</h2>
              <?php elseif ($pkartu['kecamatan'] == 6):?>
                <h2 class="form-control">Kalibening</h2>
              <?php elseif ($pkartu['kecamatan'] == 7):?>
                <h2 class="form-control">Karangkobar</h2>
              <?php elseif ($pkartu['kecamatan'] == 8):?>
                <h2 class="form-control">Madukara</h2>
              <?php elseif ($pkartu['kecamatan'] == 9):?>
                <h2 class="form-control">Mandiraja</h2>
              <?php elseif ($pkartu['kecamatan'] == 10):?>
                <h2 class="form-control">Pagedongan</h2>
              <?php elseif ($pkartu['kecamatan'] == 11):?>
                <h2 class="form-control">Pagentan</h2>
              <?php elseif ($pkartu['kecamatan'] == 12):?>
                <h2 class="form-control">Pandanarum</h2>
              <?php elseif ($pkartu['kecamatan'] == 13):?>
                <h2 class="form-control">Pejawaran</h2>
              <?php elseif ($pkartu['kecamatan'] == 14):?>
                <h2 class="form-control">Punggelan</h2>
              <?php elseif ($pkartu['kecamatan'] == 15):?>
                <h2 class="form-control">Purwanegara</h2>
              <?php elseif ($pkartu['kecamatan'] == 16):?>
                <h2 class="form-control">Purworejo Klampok</h2>
              <?php elseif ($pkartu['kecamatan'] == 17):?>
                <h2 class="form-control">Rakit</h2>
              <?php elseif ($pkartu['kecamatan'] == 18):?>
                <h2 class="form-control">Sigaluh</h2>
              <?php elseif ($pkartu['kecamatan'] == 19):?>
                <h2 class="form-control">Susukan</h2>
              <?php elseif ($pkartu['kecamatan'] == 20):?>
                <h2 class="form-control">Wanadadi</h2>
              <?php elseif ($pkartu['kecamatan'] == 21):?>
                <h2 class="form-control">Wanayasa</h2>
              <?php endif;?>
            </div>
            <div class="col-4">
              <label class="form-control-label" for="nama">Kabupaten</label>
              <?php if ($pkartu['kabupaten'] == 1) : ?>
              <h2 class="form-control">Banjarnegara</h2>
              <?php else : ?>
              <a class="form-control">Lainnya</a>
              <?php endif; ?>
            </div>
          </div>
          <hr class="my-4" />
          <div class="row">
            <div class="col-4">
              <label class="form-control-label" for="nama">NIK</label>
              <h2 class="form-control"><?= $pkartu['nik']?></h2>
            </div>
            <div class="col-4">
              <label class="form-control-label" for="nama">No Telepon</label>
              <h2 class="form-control"><?= $pkartu['nohp']?></h2>
            </div>
            <div class="col-4">
              <label class="form-control-label" for="nama">Nama Ibu</label>
              <h2 class="form-control"><?= $pkartu['namaibu']?></h2>
            </div>
          </div>
          <div class="row">
            <div class="col-4">
              <label class="form-control-label" for="nama">Pekerjaan</label>
              <h2 class="form-control"><?= $pkartu['pekerjaan']?></h2>
            </div>
            <div class="col-4">
              <label class="form-control-label" for="nama">Instansi/Sekolah</label>
              <h2 class="form-control"><?= $pkartu['instansi']?></h2>
            </div>
            <div class="col-4">
              <label class="form-control-label" for="nama">Pendidikan Terakhir</label>
              <h2 class="form-control"><?= $pkartu['pendidikan']?></h2>
            </div>
          </div>
          <!-- MODAL BODY -->
        </div>
        <div class="modal-footer">
          <div class="text-center">
            <button type="button" name="edit" data-dismiss="modal" class="btn btn-primary">Close</button>
          </div>          
        </div> 
      </div>
    </div>
  </div>
  <!-- DETAIL MODAL -->
  <?php endforeach; ?>

  <?php foreach ($pesanan_kartu as $pkartu):?>
<!-- DELETE MODAL -->
  <div class="modal fade" id="deletepesankartu<?= $pkartu['id'];?>" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h6 class="modal-title" id="modal-title-default">Hapus Pesanan</h6>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <h1>Hapus pesanan kartu?</h1>
          <div class="row">
            <div class="col-4">
              <h3>Nama Pemesan</h3>
            </div>
            <div class="col-8">
              <h3>: <?= $pkartu['nama']; ?></h3>
            </div>
          </div>
          <div class="row">
            <div class="col-4">
              <h3>Tanggal Pesan</h3>
            </div>
            <div class="col-8">
              <h3>: <?= $pkartu['date_created']; ?></h3>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <a href="<?= base_url(); ?>Pesanan_kartu/delete/<?= $pkartu['id']?>" class="btn btn-danger">Hapus</a>
          <button type="button" class="btn btn-primary" data-dismiss="modal">Batal</button>
        </div>
      </div>
    </div>
  </div>
<?php endforeach; ?>
  <!-- MODAL DELETE -->

<?php foreach ($pesanan_kartu as $pkartu):?>
<!-- ACCEPT MODAL -->
  <div class="modal fade" id="acceptpesankartu<?= $pkartu['id'];?>" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-" role="document">
      <div class="modal-content">
      <form role="form"  method="post" action="<?= base_url();?>Pesanan_kartu/accept/<?= $pkartu['id'];?>">
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
              <h3>Nama Pemesan</h3>
            </div>
            <div class="col-8">
              <h3>: <?= $pkartu['nama']; ?></h3>
            </div>
          </div>
          <div class="row">
            <div class="col-4">
              <h3>Nomor HP</h3>
            </div>
            <div class="col-8">
              <h3>: <?= $pkartu['nohp']; ?></h3>
            </div>
          </div>
          <div class="row">
            <div class="col-4">
              <h3>Kecamatan</h3>
            </div>
            <div class="col-8">
              <h3>: 
                <?php if ($pkartu['kecamatan'] == 2):?>
                  Banjarmangu
                <?php elseif ($pkartu['kecamatan'] == 3):?>
                  Banjarnegara
                <?php elseif ($pkartu['kecamatan'] == 4):?>
                  Batur
                <?php elseif ($pkartu['kecamatan'] == 5):?>
                  Bawang
                <?php elseif ($pkartu['kecamatan'] == 6):?>
                  Kalibening
                <?php elseif ($pkartu['kecamatan'] == 7):?>
                  Karangkobar
                <?php elseif ($pkartu['kecamatan'] == 8):?>
                  Madukara
                <?php elseif ($pkartu['kecamatan'] == 9):?>
                  Mandiraja
                <?php elseif ($pkartu['kecamatan'] == 10):?>
                  Pagedongan
                <?php elseif ($pkartu['kecamatan'] == 11):?>
                  Pagentan
                <?php elseif ($pkartu['kecamatan'] == 12):?>
                  Pandanarum
                <?php elseif ($pkartu['kecamatan'] == 13):?>
                  ejawaran
                <?php elseif ($pkartu['kecamatan'] == 14):?>
                  Punggelan
                <?php elseif ($pkartu['kecamatan'] == 15):?>
                  Purwanegara
                <?php elseif ($pkartu['kecamatan'] == 16):?>
                  Purworejo Klampok
                <?php elseif ($pkartu['kecamatan'] == 17):?>
                  Rakit
                <?php elseif ($pkartu['kecamatan'] == 18):?>
                  Sigaluh
                <?php elseif ($pkartu['kecamatan'] == 19):?>
                  Susukan
                <?php elseif ($pkartu['kecamatan'] == 20):?>
                  Wanadadi
                <?php elseif ($pkartu['kecamatan'] == 21):?>
                  Wanayasa
                <?php endif;?>
              </h3>
            </div>
          </div>
          <div class="row">
            <div class="col-4">
              <h3>Tanggal pesan</h3>
            </div>
            <div class="col-8">
              <h3>: <?= $pkartu['date_created']; ?></h3>
            </div>
          </div>
          <div class="form-group">
            <input type="hidden" name="id" value="<?= $pkartu['id'];?>">
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
