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
              <h1 class="text-white text-center mb-0">Daftar Pengguna Website</h1>
            </div>
          </div>
          <br>
          <!-- SEARCH BUTTON -->
          <div class="row justify-content-center">
            <div class="col-md-8">
              <form action="<?= base_url('daftar_user');?>" method="post">

                <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Cari pengguna..." name="user_keyword" autocomplete="off" value="">
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
    <div class="container-fluid mt--5">
      <?= $this->session->flashdata('message');?>
      <div class="row">
        <div class="col-xl-12">
          <div class="card">
            <!-- Card Header -->
            <div class="card-header border-0">
              <h3 class="text-center mb-0">Daftar Pengguna</h3>
            </div>
            <div class="table-responsive">
                <table class="table align-items-center table-flush">
                  <thead class="thead-light">
                    <!-- BUKU NOT FOUND -->
                    <!-- -->
                    <tr>
                      <th scope="col">No</th>
                      <th scope="col">Nama</th>
                      <th scope="col">Email</th>
                      <th scope="col">ID Anggota</th>
                      <th scope="col">No HP/Whatsapp</th>
                      <th scope="col">Action</th>
                    </tr>
                  </thead>
                  <tbody class="list">
                    <?php foreach ($pengguna as $pg):?>
                      <tr>
                        <td><?= ++$start; ?></td>
                        <td>
                          <div class="media align-items-center">
                            <div class="avatar rounded-circle mr-3">
                              <img src="<?= base_url('assets/img/profile/') . $pg['image'];?>">
                            </div>
                            <div class="media-body">
                              <span class="name mb-0 text-sm"><?= $pg['username']; ?></span>
                            </div>
                          </div>
                        </td>
                        <td><?= $pg['email']; ?></td>
                        <td><?= $pg['id_anggota']; ?></td>
                        <td><?= $pg['nohp']; ?></td>
                        <td>
                          <!-- <a class="badge badge-pill badge-md badge-primary" data-toggle="modal" data-target="#detailUser<?= $pg['id'];?>" href="<?= base_url();?>Action_user/index/<?= $pg['id']; ?>">detail</a> -->
                          <button class="btn btn-icon btn-outline-primary btn-sm" type="button" data-toggle="modal" data-target="#detailUser<?= $pg['id'];?>">
                            <span class="btn-inner--icon"><i class="fas fa-fw fa-info"></i></span>
                          </button>
                          <button class="btn btn-icon btn-outline-danger btn-sm" type="button" data-toggle="modal" data-target="#deleteUser<?= $pg['id'];?>">
                            <span class="btn-inner--icon"><i class="fas fa-fw fa-trash"></i></span>
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
<?php foreach ($pengguna as $pg):?>
<!-- DETAIL MODAL -->
  <div class="modal fade" id="detailUser<?= $pg['id'];?>" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-sm" role="document">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            
            <div class="modal-body">
              <div class="row justify-content-center">
                <div class="col-lg-3 order-lg-3">
                  <div class="card card-profile">
                    <div class="row justify-content-center">
                      <div class="col-lg-3">
                        <div class="card-profile-image">
                          <img src="<?= base_url('assets/img/profile/') . $pg['image'];?>" class="rounded-circle">
                          <br>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                </div>
                <div class="card-header text-center pt-md-6 pb-0 pb-md-4">
                  <div class="row justify-content-center">
                    <h2><?= $pg['username']?></h2>
                  </div>
                  <div class="h5 font-weight-400">
                    Member Since <span><?= $pg['date_created']; ?></span>
                  </div>
                  <?php if($pg['is_active'] == 1):?>
                  <span class="badge badge-pill badge-success">member aktif</span>
                  <?php elseif ($pg['is_active'] == 0):?>
                  <span class="badge badge-pill badge-danger">belum aktivasi</span>
                  <?php endif;?>
                </div>
                  <div class="text-center">
                    <h5 class="h3">ID Anggota : <?= $pg['id_anggota'];?></h5>
                    <div class="h5 font-weight-400">
                       <?= $pg['email']; ?>
                    </div>
                    <?php foreach ($kecamatan as $kec):?>
                    <?php if ($pg['kecamatan'] == $kec['id']):?>
                      <div class="h5 mt-4">Kecamatan <?= $kec['nama_kec']; ?></div>
                    <?php endif;?>
                    <?php endforeach;?>
                      <?php foreach ($kabupaten as $kab):?>
                      <?php if ($pg['kabupaten'] == $kab['id']):?>
                      <div class="h5 mt-2">
                        Kabupaten <?= $kab['nama']; ?>
                      </div>
                    <?php endif;?>
                  <?php endforeach;?>
                  </div>
                
            </div>
        </div>
    </div>
  </div>
  <!-- DETAIL MODAL -->
<?php endforeach; ?>

<?php foreach ($pengguna as $pg):?>
<!-- DELETE MODAL -->
  <div class="modal fade" id="deleteUser<?= $pg['id'];?>" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h6 class="modal-title" id="modal-title-default">Hapus User</h6>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
            
        <div class="modal-body">
          <h1>
            Hapus user <span><?= $pg['username']?> ?</span>
          </h1>
        </div>
            
        <div class="modal-footer">
          <a href="<?= base_url(); ?>Action_user/delete/<?= $pg['id']?>" class="btn btn-danger">Hapus</a>
          <button type="button" class="btn btn-primary" data-dismiss="modal">Batal</button>
        </div>
            
      </div>
    </div>
  </div>
<?php endforeach; ?>

