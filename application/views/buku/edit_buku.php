<!DOCTYPE html>
<html>
  <!-- Main content -->
    <!-- Header -->
    <!-- Header -->
    <div class="header bg-primary pb-6">
      <div class="container-fluid">
        <div class="header-body">
          <div class="row align-items-center py-4">
            <div class="col-lg-12 col-12">
              <h1 class="text-white text-center mb-0">Edit Data Buku</h1>
            </div>
          </div>

          <!-- SEARCH BUTTON -->
        <div class="row justify-content-center">
          <div class="col-md-8">
            <form action="<?= base_url('Admin_buku');?>" method="post">
              <div class="input-group mb-3">
              <input type="text" class="form-control" placeholder="Cari Buku..." name="keyword_edit" autocomplete="off" value="<?= set_value('keyword_edit');?>">
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
          <div class="card bg-default">
            <!-- Card Header -->
            <div class="card-header bg-transparent border-0">
              <div class="row">
                <div class="col-8">
                  <h3 class="text-white mb-0">Daftar Buku</h3>
                </div>
                <div class="col-4 text-right">
                  <button data-toggle="modal" data-target="#tambahbuku" class="btn btn-sm btn-success">
                    <span class="btn-inner--icon"><i class="fas fa-fw fa-plus"></i></span>
                    <span class="btn-inner--text">Tambah Buku</span>
                  </button>
                </div>
              </div>
            </div>
            <div class="table-responsive">
                <table class="table align-items-center table-dark table-flush">
                  <thead class="thead-dark">
                    <tr>
                      <th scope="col">Judul Buku</th>
                      <th scope="col">Penulis</th>
                      <th scope="col">Penerbit</th>
                      <th scope="col">Kelas</th>
                      <th scope="col">Action</th>
                    </tr>
                  </thead>
                  <tbody class="list">
                    <?php foreach ($buku as $listbuku):?>
                      <tr>
                        <td><?= word_limiter($listbuku['Title'], 5); ?></td>
                        <td><?= word_limiter($listbuku['Author'], 5); ?></td>
                        <td><?= word_limiter($listbuku['Publisher'], 5); ?></td>
                        <td><?= $listbuku['Class'];?></td>
                        <td>
                          <button class="btn btn-icon btn-outline-white btn-sm" type="button" data-toggle="modal" data-target="#detailbuku<?= $listbuku['ID'];?>" href=""><span class="btn-inner--icon"><i class="fas fa-fw fa-info"></i></span></button>
                          <button class="btn btn-icon btn-outline-success btn-sm" type="button" data-toggle="modal" data-target="#editbuku<?= $listbuku['ID'];?>" href="<?= base_url();?>Action_buku/edit/<?= $listbuku['ID']; ?>"><span class="btn-inner--icon"><i class="fas fa-fw fa-pen"></i></span></button>
                          <button class="btn btn-icon btn-outline-danger btn-sm" type="button" data-toggle="modal" data-target="#deletebuku<?= $listbuku['ID'];?>" href="<?= base_url();?>Action_buku/delete/<?= $listbuku['ID']; ?>"><span class="btn-inner--icon"><i class="fas fa-fw fa-trash"></i></span></button>
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

<!-- TAMBAH BUKU MODAL -->
<div class="modal fade" id="tambahbuku" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">

            <div class="modal-header">
                <h6 class="modal-title" id="modal-title-default">Tambah Buku</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            
            <div class="modal-body">
                  <form role="form" method="post" action="<?= base_url();?>Action_buku/tambahbuku">
                      <!-- BUKU YANG DIPESAN -->
                        <div class="row">
                          <div class="col-lg-12">
                          <div class="form-group">
                            <label class="form-control-label" for="Title">Judul Buku</label>
                            <input type="text" name="Title" class="form-control" id="Title" value="<?= set_value('Title');?>">
                          </div>
                          <?= form_error('Title', '<small class="text-danger pl-3">','</small>'); ?>
                        </div>
                        </div>
                        <div class="row">
                          <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="Author">Penulis</label>
                            <input type="text" class="form-control" id="Author" name="Author" value="<?= set_value('Author');?>">
                          </div>
                          <?= form_error('Author', '<small class="text-danger pl-3">','</small>'); ?>
                          </div>
                          <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="Publisher">Penerbit</label>
                            <input type="text" id="Publisher" name="Publisher" class="form-control" value="<?= set_value('Publisher');?>">
                          </div>
                          <?= form_error('Publisher', '<small class="text-danger pl-3">','</small>'); ?>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="ISBN">ISBN</label>
                            <input type="text" class="form-control" id="ISBN" name="ISBN" value="<?= set_value('ISBN');?>">
                          </div>
                          <?= form_error('ISBN', '<small class="text-danger pl-3">','</small>'); ?>
                          </div>
                          <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="Rule_id">Set Status</label>
                            <select class="form-control" id="Rule_id" name="Rule_id" placeholder="Status">
                              <option value="1">Dapat dipinjam</option>
                              <option value="2">Baca ditempat</option>
                            </select>
                          </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="Class">Kelas</label>
                            <input type="text" class="form-control" id="Class" name="Class" value="<?= set_value('Class');?>">
                          </div>
                          <?= form_error('class', '<small class="text-danger pl-3">','</small>'); ?>
                          </div>
                          <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="CreateBy">Ditambahkan oleh</label>
                            <input type="text" class="form-control" id="CreateBy" name="CreateBy" value=<?= $this->session->userdata('username');?>>
                          </div>
                          <?= form_error('CreateBy', '<small class="text-danger pl-3">','</small>'); ?>
                          </div>
                        </div>
                    <!-- Button -->
                    <div class="text-center">
                      <button type="submit" name="edit" class="btn btn-primary btn-block">Submit</button>
                  </div>
                    <!-- Description -->
                  </form>
            </div>
        </div>
    </div>
</div>
<!-- END OF TAMBAH BUKU MODAL -->
<!-- MODAL DETAIL -->
<?php foreach ($buku as $listbuku):?>
<!-- DETAIL MODAL -->
  <div class="modal fade" id="detailbuku<?= $listbuku['ID'];?>" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h6 class="modal-title" id="modal-title-notification">Detail Buku</h6>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div> 
        <div class="modal-body">
          <!-- MODAL BODY -->
          <h2><?= $listbuku['Title']?></h2>
            <div class="row">
              <div class="col-4">
                <h5>Penulis</h5>
              </div>
              <div class="col-8">
                <h5>: <?= $listbuku['Author']; ?></h5>
              </div>
            </div>
            <div class="row">
              <div class="col-4">
                <h5>Penerbit</h5>
              </div>
              <div class="col-8">
                <h5>: <?= $listbuku['Publisher']; ?></h5>
              </div>
            </div>
            <div class="row">
              <div class="col-4">
                <h5>Jumlah Buku</h5>
              </div>
              <div class="col-8">
                <h5>: <?= $this->db->get_where('collections', ['Title' => $listbuku['Title']])->num_rows(); ?></h5>
              </div>
            </div>
            <div class="row">
              <div class="col-4">
                <h5>ISBN</h5>
              </div>
              <div class="col-8">
                <h5>: <?= $listbuku['ISBN']; ?></h5>
              </div>
            </div>
            <div class="row">
              <div class="col-4">
                <h5>Kelas</h5>
              </div>
              <div class="col-8">
                <h5>: <?= $listbuku['Class']; ?></h5>
              </div>
            </div>
              <div class="h5 mt-4">
                Status : <?php if ($listbuku['Rule_id'] == 1) : ?>
                <a class="text-success">Dapat dipinjam</a>
                <?php else : ?>
                <a class="text-primary">Baca ditempat</a>
                <?php endif; ?>
              </div>
          <!-- MODAL BODY -->
        </div>
      </div>
    </div>
  </div>
  <!-- DETAIL MODAL -->
  <?php endforeach; ?>

  <?php foreach ($buku as $listbuku):?>
  <!-- EDIT MODAL -->
  <div class="modal fade" id="editbuku<?= $listbuku['ID'];?>" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-" role="document">
        <div class="modal-content">

            <div class="modal-header">
                <h6 class="modal-title" id="modal-title-default">Edit Buku</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            
            <div class="modal-body">
                  <form role="form" method="post" action="<?= base_url();?>Action_buku/edit/<?= $listbuku['ID'];?>">
                      <!-- BUKU YANG DIPESAN -->
                       <input type="hidden" name="ID" value="<?= $listbuku['ID']; ?>">
                        <div class="row">
                          <div class="col-lg-12">
                          <div class="form-group">
                            <label class="form-control-label" for="Title">Judul Buku</label>
                            <input type="text" name="Title" class="form-control" id="Title" value="<?= $listbuku['Title'];?>">
                          </div>
                        </div>
                        </div>
                        <div class="row">
                          <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="Author">Penulis</label>
                            <input type="text" class="form-control" id="Author" name="Author" value="<?= $listbuku['Author'];?>">
                          </div>
                          </div>
                          <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="Publisher">Penerbit</label>
                            <input type="text" id="Publisher" name="Publisher" class="form-control" value="<?= $listbuku['Publisher'];?>">
                          </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="ISBN">ISBN</label>
                            <input type="text" class="form-control" id="ISBN" name="ISBN" value="<?= $listbuku['ISBN'];?>">
                          </div>
                          </div>
                          <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="Rule_id">Set Status</label>
                            <?php if ($listbuku['Rule_id'] == 1) :?>
                            <select class="form-control" id="Rule_id" name="Rule_id" placeholder="Status">
                              <option value="1" selected>Dapat dipinjam</option>
                              <option value="2">Baca ditempat</option>
                            </select>
                            <?php else : ?>
                            <select class="form-control" id="Rule_id" name="Rule_id" placeholder="Status">
                              <option value="1">Dapat dipinjam</option>
                              <option value="2" selected>Baca ditempat</option>
                            </select>
                           <?php endif;?>
                          </div>
                          </div>
                        </div>
                    <!-- Button -->
                    <div class="text-center">
                      <button type="submit" name="edit" class="btn btn-primary btn-block">Submit</button>
                  </div>
                    <!-- Description -->
                  </form>
            </div>
        </div>
    </div>
</div>
<!-- EDIT MODAL -->
<?php endforeach; ?>

<?php foreach ($buku as $listbuku):?>
<!-- DELETE MODAL -->
  <div class="modal fade" id="deletebuku<?= $listbuku['ID'];?>" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h6 class="modal-title" id="modal-title-default">Hapus Buku</h6>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
            
        <div class="modal-body">
          <h1>
            Hapus Buku <span><?= $listbuku['Title']?> ?</span>
          </h1>
        </div>
            
        <div class="modal-footer">
          <a href="<?= base_url(); ?>Action_buku/delete/<?= $listbuku['ID']?>" class="btn btn-danger">Hapus</a>
          <button type="button" class="btn btn-primary" data-dismiss="modal">Batal</button>
        </div>
            
      </div>
    </div>
  </div>
<?php endforeach; ?>
