<!DOCTYPE html>
<html>
 
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
  <meta name="author" content="Creative Tim">
  <title>Sakuline | <?= $title?></title>
  <!-- Icon pada Title Page -->
  <link rel="icon" href="<?= base_url() ?>/assets/img/brand/newicon.png" type="image/png">
  <!-- Fonts -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
  <!-- Icons -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/vendor/nucleo/css/nucleo.css" type="text/css">
  <link href="<?= base_url() ?>/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
  <!-- Page plugins --> 
  <!-- Argon CSS -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/css/argon.css?v=1.2.0" type="text/css">
  <link rel="stylesheet" href="<?= base_url() ?>/assets/vendor/cropperjs/cropper.min.css" type="text/css">
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <style>
    .preloader{
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: 9999;
      position: fixed;
      background-color: white;
      opacity: 0.7;
    }

    .loading{
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      position: absolute;
    }
  </style>
</head>

<body>
  <div class="preloader">
    <div class="loading">
      <img src="<?= base_url();?>/assets/img/theme/loading.gif">
    </div>
  </div>

  <script src="<?= base_url();?>/assets/vendor/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function(){
      $('.preloader').delay(500).fadeOut();
    });
  </script>
  <!-- Sidenav -->
  <nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
    <div class="scrollbar-inner">
      <!-- Brand -->
      <div class="sidenav-header  align-items-center">
        <a class="navbar-brand" href="javascript:void(0)">
          <img src="<?= base_url() ?>/assets/img/brand/sakuline_blue.png" class="navbar-brand-img" >
        </a>
      </div>
      <div class="navbar-inner">
        <!-- Collapse -->
        <div class="collapse navbar-collapse" id="sidenav-collapse-main">
          
          <hr class="my-3">

          <!-- QUERY MENU -->
          <?php 
            $role_id = $this->session->userdata('role_id');
            $queryMenu = "SELECT `user_menu`.`id`, `menu`
                          FROM `user_menu` JOIN `user_access_menu`
                          ON `user_menu`.`id` = `user_access_menu`.`menu_id`
                          WHERE `user_access_menu`.`role_id` = $role_id
                          ORDER BY `user_access_menu`.`menu_id` ASC
                          ";
            $menu = $this->db->query($queryMenu)->result_array();
          ?>

          <!-- LOOPING MENU -->
          <?php foreach ($menu as $m) : ?>

          <h6 class="navbar-heading p-0 text-muted">
            <span class="docs-normal"><?= $m['menu']; ?></span>
          </h6>

          <!-- SUB MENU SESUAI MENU -->
          <?php
            $menuId = $m['id'];
            $querySubMenu = "SELECT *
                              FROM `user_sub_menu`
                              WHERE `menu_id` = $menuId
                              ";

            $subMenu = $this->db->query($querySubMenu)->result_array();
          ?>

          <?php foreach ($subMenu as $sm) : ?>
          <!-- SUB MENU -->
          <ul class="navbar-nav">
            <li class="nav-item">
              <?php if ($title == $sm['title']) : ?>
              <a class="nav-link active" href="<?= base_url($sm['url']); ?>">
                <i class="<?= $sm['icon']; ?> text-primary"></i>
                <span class="nav-link-text text-primary"><?= $sm['title']; ?></span>
              </a>
              <?php else : ?>
              <a class="nav-link" href="<?= base_url($sm['url']); ?>">
                <i class="<?= $sm['icon']; ?>"></i>
                <span class="nav-link-text"><?= $sm['title']; ?></span>
              </a>
            <?php endif; ?>
            </li>
          </ul>
          <?php endforeach; ?>
          
          <!-- GARIS -->
          <hr class="my-3">

          <?php endforeach; ?>

          <!-- CONTACT SERVICES
          <h6 class="navbar-heading p-0 text-muted">
            <span class="docs-normal">Contact Service</span>
          </h6> Navigation -->
          <ul class="navbar-nav mb-md-3">
            <li class="nav-item">
              <a class="nav-link">
                <i class="fas fa-fw fa-envelope"></i>
                <h6>disarpus@banjarnegarakab.go.id</h6>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link">
                <i class="fas fa-fw fa-phone"></i>
                <span class="nav-link-text">081215814446</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?= base_url() ?>auth/logout">
                <i class="fas fa-fw fa-sign-out-alt text-danger"></i>
                <span class="nav-link-text text-danger">Logout</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>

  <!-- NAVBAR ATAS -->
  <div class="main-content" id="panel">
    <!-- Topnav -->
    <nav class="navbar navbar-top navbar-expand navbar-dark bg-primary flex-row border-bottom">
      <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <!-- Navbar links --><!-- 
          <h6 class="h4 text-white d-inline-block mb-0">Default</h6>
           -->
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

            <!-- NOTIFIKASI ADMIN -->
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

            <li class="nav-item dropdown">
              <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <div class="media align-items-center">
                  <div class="media-body mr-3  d-none d-lg-block">
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