<?php if ($this->session->userdata('role_id') == 1):?>

            <!-- JIKA INI ADALAH ADMIN -->
            <li class="nav-item dropdown notifikasi">
              <a class="nav-link" type ="button" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <?php if ($countnotif > 0) :?>
                <i class="fas fa-fw fa-bell text-yellow"></i>
                <?php else:?>
                <i class="fas fa-fw fa-bell"></i>
                <?php endif;?>
              </a>
              <div class="dropdown-menu dropdown-menu-xl  dropdown-menu-right  py-0 overflow-hidden">
                <!-- Dropdown header -->
                <!-- List group -->
                <div class="list-group list-group-flush">
                  <?php foreach ($notifikasi as $notif):?>
                  <a href="<?= base_url(); ?>Action_notif/deletenotif_admin/<?= $notif['id']?>" class="list-group-item list-group-item-action">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <i class="fas fa-fw fa-bell text-yellow"></i>
                      </div>
                      <div class="col ml--2">
                        <div class="d-flex justify-content-between align-items-center">
                          <div>
                            <h4 class="mb-0 text-sm"><?= $notif['nama'];?></h4>
                          </div>
                          <div class="text-right text-muted">
                            <small><?= $notif['tanggal_pesan'];?></small>
                          </div>
                        </div>
                        <p class="text-sm mb-0"><?= $notif['judul'];?></p>
                      </div>
                    </div>
                    </a>
                  <?php endforeach;?>
                </div>
                <!-- View all -->
                <?php if ($countnotif > 0):?>
                <a href="<?= base_url('pesanan_buku');?>" class="dropdown-item text-center text-primary font-weight-bold py-3">View all</a>
                <?php else:?>
                <h4 class="text-center text-default font-weight-bold py-3">Tidak ada notifikasi</h4>
                <?php endif;?>
              </div>
            </li>
            <!-- END OF NOTIF ADMIN -->

            <?php elseif ($this->session->userdata('role_id') == 2):?>

            <!-- JIKA INI USER -->
            <li class="nav-item dropdown notifikasi_user">
              <a class="nav-link" type ="button" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <?php if ($countnotif_user > 0) :?>
                <i class="fas fa-fw fa-bell text-yellow"></i>
                <?php else:?>
                <i class="fas fa-fw fa-bell text-white"></i>
                <?php endif;?>
              </a>
              <div class="dropdown-menu dropdown-menu-xl  dropdown-menu-right  py-0 overflow-hidden">
              
                <!-- List group -->
                <div class="list-group list-group-flush">
                <?php foreach ($notifikasi_user as $nuser):?>
                  <a href="<?= base_url(); ?>Action_notif/deletenotif_user/<?= $nuser['id']?>" class="list-group-item list-group-item-action">
                    <div class="row align-items-center">
                      <?php if($nuser['status'] == "accepted"):?>
                      <div class="col-auto">
                        <i class="fas fa-fw fa-check-circle text-success"></i>
                      </div>
                      <div class="col ml--2">
                        <div class="d-flex justify-content-between align-items-center">
                          <div>
                            <h4 class="mb-0 text-sm text-success">Pesanan Buku Diterima</h4>
                          </div>
                          <div class="text-right text-muted">
                            <small><?= date('d F Y', $nuser['tanggal_action']);?></small>
                          </div>
                        </div>
                        <h5 class="mb-0 text-sm"><?= $nuser['judul'];?></h5>
                        <p class="text-sm mb-0"><?= $nuser['pesan'];?></p>
                      </div>
                      <?php elseif ($nuser['status'] == "rejected"):?>
                      <div class="col-auto">
                        <i class="fas fa-fw fa-times-circle text-danger"></i>
                      </div>
                      <div class="col ml--2">
                        <div class="d-flex justify-content-between align-items-center">
                          <div>
                            <h4 class="mb-0 text-sm text-danger">Pesanan Buku Ditolak</h4>
                          </div>
                          <div class="text-right text-muted">
                            <small><?= date('d F Y', $nuser['tanggal_action']);?></small>
                          </div>
                        </div>
                        <h5 class="mb-0 text-sm"><?= $nuser['judul'];?></h5>
                        <p class="text-sm mb-0"><?= $nuser['pesan'];?></p>
                      </div>
                      <?php endif;?>
                    </div>
                  </a>
                  <?php endforeach;?>
                </div>
                <!-- View all -->
                <?php if ($countnotif_user > 0):?>
                <a href="<?= base_url('riwayat');?>" class="dropdown-item text-center text-primary font-weight-bold py-3">View all</a>
                <?php else:?>
                <h4 class="text-center text-default font-weight-bold py-3">Tidak ada notifikasi</h4>
                <?php endif;?>
              </div>
            </li>
            <!-- END OF NOTIF USER -->
          <?php endif;?>