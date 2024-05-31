<!-- NAVBAR ATAS -->
  <div class="main-content" id="panel">
    <!-- Topnav -->
    <nav class="navbar navbar-top navbar-expand navbar-dark bg-primary flex-row border-bottom">
      <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <!-- Navbar links -->
          <ul class="navbar-nav align-items-center  ml-auto ml-md-12">
            <li class="nav-item d-xl-none">
              <!-- Sidenav toggler -->
              <div class="sidenav-toggler sidenav-toggler-dark pr-2" data-action="sidenav-pin" data-target="#sidenav-main" aria-haspopup="true" aria-expanded="false">
                <div class="sidenav-toggler-inner">
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                </div>
              </div>
            </li>
            <li class="nav-item dropdown">
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
                  <a href="<?= base_url('pesanan_buku');?>" class="list-group-item list-group-item-action">
                  <?php foreach ($notifikasi as $notif):?>
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
                  <?php endforeach;?>
                  </a>
                </div>
                <!-- View all -->
                <!-- <a href="#!" class="dropdown-item text-center text-primary font-weight-bold py-3">View all</a> -->
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <div class="media align-items-center">
                  <div class="media-body  ml-2  d-none d-lg-block">
                    <span class="mb-0 text-sm  font-weight-bold"><?= $user['username'];?></span>
                  </div>
                  <span class="avatar avatar-sm rounded-circle">
                    <img src="<?= base_url('assets/img/profile/') . $user['image'];?>">
                  </span>
                </div>
              </a>
              <div class="dropdown-menu  dropdown-menu-right">
                <div class="dropdown-header noti-title">
                  <h6 class="text-overflow m-0">Selamat Datang!</h6>
                </div>
                <div class="dropdown-divider"></div>
                <a href="<?= base_url() ?>auth/logout" class="dropdown-item">
                  <i class="fas fa-sign-out-alt"></i>
                  <span>Logout</span>
                </a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </nav>