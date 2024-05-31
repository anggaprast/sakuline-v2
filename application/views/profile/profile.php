<!-- Header -->
    <div class="header pb-6 d-flex align-items-center" style="min-height: 300px; background-image: url(<?=base_url()?>/assets/img/theme/background.jpg); background-size: cover; background-position: center top;">
      <!-- Mask -->
      <span class="mask bg-gradient-default opacity-7"></span>
      <!-- Header container -->
      <div class="container-fluid d-flex align-items-center">
        <div class="row">
          <div class="col-lg-12 mt--4">
            <h1 class="display-2 text-white">Halo, <?= $user['username'];?></h1>
            <p class="text-white">Lengkapi profil Anda agar dapat mempermudah proses peminjaman buku!</p>
            <a class="h3 text-yellow" href="<?= base_url('form_kartu');?>">Belum memiliki kartu anggota?</a>
            <p class="text-white">Anda juga bisa melakukan pemesanan pembuatan kartu untuk mendaftar sebagai anggota perpustakaan!</p>
          </div>
        </div>
      </div>
    </div>

    <!-- Page content -->
    <div class="container-fluid mt--4">
      <div class="row">
        <div class="col-xl-5">
          <div class="card card-profile">
            <div class="row justify-content-center">
              <div class="col-lg-3">
                <div class="card-profile-image"> 
                  <img src="<?= base_url('assets/img/profile/') . $user['image'];?>" class="rounded-circle">
                </div>
              </div>
            </div>
            <div class="card-body pt-7">
              <div class="row justify-content-center">
              <button class="btn btn-icon btn-success btn-sm" type="button" data-toggle="modal" data-target="#editprofile">
                <span class="btn-inner--icon"><i class="fas fa-fw fa-camera"></i></span>
                <span class="btn-inner--text">Ganti Foto</span>
              </button>
              </div>
              <div class="text">
                <br>
                <h1 class="text-primary text-center"><?= $user['username'];?></h1>
                <div class="h2 text-center font-weight-300">ID <?= $user['id_anggota'];?></div>
                  <div class="row mt-5">
                    <div class="col-md-12">
                      <i class="fas fa-fw fa-envelope"></i><span class="h3 ml-3"><?= $user['email'];?></span>
                    </div>
                  </div>
                  <div class="row mt-2">
                    <div class="col-md-12">
                      <i class="fab fa-fw fa-whatsapp"></i><span class="h3 ml-3"><?= $user['nohp'];?></span>
                    </div>
                  </div>
                  <div class="row mt-2">
                    <div class="col-md-12">
                      <i class="fas fa-fw fa-calendar-alt"></i><span class="h3 ml-3">Pengguna sejak <?= $user['date_created'];?></span>
                    </div>
                  </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-7">
          <div class="card">
            <div class="card-header">
              <div class="row align-items-center">
                <div class="col-3">
                  <h3 class="mb-0">Edit profile </h3>
                </div>
                <div class="col-9">
                  <?= $this->session->flashdata('profile'); ?>
                </div>
              </div>
            </div>

            <!-- EDIT PROFILE -->
            <div class="card-body">
              <form role="form" method="post" action="<?= base_url('profile/edit');?>">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="username">Nama</label>
                        <input type="text" id="username" name="username" class="form-control" value="<?= $user['username'];?>">
                        <?= form_error('username', '<small class="text-danger pl-3">', '</small>');?>
                      </div>
                    </div>
                    <input type="hidden" id="email" name="email" value="<?= $user['email'];?>">
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="nohp">Nomor HP</label>
                        <input type="text" id="nohp" name="nohp" placeholder="Belum diisi" class="form-control" value="<?= $user['nohp'];?>">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-12">
                      <div class="form-group">
                        <label class="form-control-label" for="nohp">Nomor Anggota</label>
                        <input type="text" id="id_anggota" name="id_anggota" placeholder="Belum diisi" class="form-control" value="<?= $user['id_anggota'];?>">
                        <?= form_error('id_anggota', '<small class="text-danger pl-3">', '</small>');?>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-12">
                      <div class="form-group">
                        <label class="form-control-label" for="nohp">Alamat Rumah</label>
                        <input type="text" id="alamat" name="alamat" placeholder="Belum diisi" class="form-control" value="<?= $user['alamat'];?>">
                      </div>
                    </div>
                  </div>
                <div class="text-center">
                  <button type="submit" name="submit" class="btn btn-primary btn-block">Simpan</button>
                </div>
                <!-- Description -->
              </form>
            </div>
          </div>
        </div>
      </div>

<!-- Modal -->
<div class="modal fade" id="editprofile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ganti Foto Profile</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <?= form_open_multipart('profile/editfoto');?>
          <div class="row">
            <div class="col-lg-12">
              <div class="form-group">
                <input type="hidden" name="email" id="email" value="<?= $user['email'];?>">
                <label class="form-control-label" for="image">Upload Foto</label>
                <input type="file" class="form-control-file form-control-sm" id="image" name="image">
              </div>
            </div>
          </div>
      </div>
      <div class="modal-footer">
        <button type="submit" name="editprofile" class="btn btn-primary btn-block">Simpan</button>
      </div>
      <?= form_close();?>
    </div>
  </div>
</div>