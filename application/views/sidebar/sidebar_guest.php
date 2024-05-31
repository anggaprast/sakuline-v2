<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
  <meta name="author" content="Creative Tim">
  <title>Pesan Buku Online | Sakuline Disarpus Kabupaten Banjarnegara</title>
  <!-- Icon pada Title Page -->
  <link rel="icon" href="<?= base_url() ?>/assets/img/brand/newicon.png" type="image/png">
  <!-- Fonts -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
  <!-- Icons -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/vendor/nucleo/css/nucleo.css" type="text/css">
  <link rel="stylesheet" href="<?= base_url() ?>/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
  <!-- Page plugins -->
  <!-- Argon CSS -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/css/argon.css">
  <link rel="stylesheet" href="<?= base_url() ?>/assets/css/argon.css?v=1.2.0" type="text/css">
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
  <!-- Topnav -->
  <!-- Main content -->
  <nav class="navbar navbar-horizontal navbar-expand navbar-transparent flex-row align-items-md-center ct-navbar">
      <a class="navbar-brand mr-0 mr-md-2" href="<?= base_url('guest');?>">
        <img src="<?= base_url() ?>/assets/img/brand/sakuline_white.png">
      </a>
            <ul class="navbar-nav flex-row mr-auto ml-4 d-none d-md-flex">
                <li class="nav-item">
                  <a class="nav-link" href="<?= base_url('guest')?>"><span class="nav-link-inner--text font-weight-bold text-yellow">Beranda</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="<?= base_url('auth')?>"><span class="nav-link-inner--text font-weight-bold">Login</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="<?= base_url('auth/register')?>"><span class="nav-link-inner--text font-weight-bold">Daftar Akun</span></a>
                </li>
              </ul>
              <ul class="navbar-nav align-items-lg-center ml-lg-auto">
                <li class="nav-item">
                  <a class="nav-link nav-link-icon" href="https://www.facebook.com/kpadbna" target="_blank" data-toggle="tooltip" data-original-title="Like us on Facebook">
                    <i class="fab fa-facebook-square"></i>
                    <span class="nav-link-inner--text d-lg-none">Facebook</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link nav-link-icon" href="https://instagram.com/perpusda_bna?igshid=YmMyMTA2M2Y=" target="_blank" data-toggle="tooltip" data-original-title="Follow us on Instagram">
                    <i class="fab fa-instagram"></i>
                    <span class="nav-link-inner--text d-lg-none">Instagram</span>
                  </a>
                </li>
              </ul>
              <ul class="navbar-nav align-items-center  ml-auto ml-md-0 ">
                <li class="nav-item dropdown">
                  <a class="nav-link nav-link-icon" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fab fa-whatsapp"></i>
                    <span class="nav-link-inner--text d-lg-none">Whatsapp</span>
                  </a>
                  <div class="dropdown-menu  dropdown-menu-right ">
                    <div class="dropdown-header noti-title">
                      <h6 class="text-overflow m-0">Whatsapp Service</h6>
                    </div>
                    <a href="#" class="dropdown-item">
                      <i class="fab fa-whatsapp"></i>
                      <span class="font-weight-bold">081215814446</span>
                    </a>
                  </div>
                </li>
              </ul>
              <ul class="navbar-nav align-items-center  ml-auto ml-md-0 ">
                <li class="nav-item dropdown">
                  <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <div class="media align-items-center">
                      <span class="text-white">
                        <i class="fas fa-users"></i>
                      </span>
                      <div class="media-body  ml-2  d-none d-lg-block">
                        <span class="mb-0 text-sm font-weight-bold">Publik</span>
                      </div>
                    </div>
                  </a>
                  <div class="dropdown-menu  dropdown-menu-right ">
                    <div class="dropdown-header noti-title">
                      <h6 class="text-overflow m-0">Selamat Datang!</h6>
                    </div>
                    <a href="<?= base_url('auth') ?>" class="dropdown-item">
                      <i class="fas fa-sign-in-alt"></i>
                      <span>Login</span>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="<?= base_url('auth/register') ?>" class="dropdown-item">
                      <i class="fas fa-user-plus"></i>
                      <span>Daftar Akun</span>
                    </a>
                  </div>
                </li>
            </ul>       
  </nav>