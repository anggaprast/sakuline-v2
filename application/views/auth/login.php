<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
  <meta name="author" content="Perpusda Banjarnegara">
  <title>Login | Sakuline</title>
  <!-- Favicon -->
  <link rel="icon" href="<?= base_url() ?>/assets/img/brand/newicon.png" type="image/png">
  <!-- Fonts -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
  <!-- Icons -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/vendor/nucleo/css/nucleo.css" type="text/css">
  <link rel="stylesheet" href="<?= base_url() ?>/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
  <!-- Argon CSS -->
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

<body class="bg-default">
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
  <!-- Navbar -->
  <nav id="navbar-main" class="navbar navbar-horizontal navbar-transparent navbar-main navbar-expand-lg navbar-light">
    <div class="container">
      <a class="navbar-brand" href="<?= base_url() ?>guest">
        <img src="<?= base_url() ?>/assets/img/brand/sakuline_white.png">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse" aria-controls="navbar-collapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="navbar-collapse navbar-custom-collapse collapse" id="navbar-collapse">
        <div class="navbar-collapse-header">
          <div class="row">
            <div class="col-6 collapse-brand">
              <img src="<?= base_url() ?>/assets/img/brand/sakuline_blue.png">
            </div>
            <div class="col-6 collapse-close">
              <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar-collapse" aria-controls="navbar-collapse" aria-expanded="false" aria-label="Toggle navigation">
                <span></span>
                <span></span>
              </button>
            </div>
          </div>
        </div>
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a href="<?= base_url() ?>guest" class="nav-link">
              <span class="nav-link-inner--text font-weight-bold">Beranda</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url() ?>auth" class="nav-link">
              <span class="nav-link-inner--text font-weight-bold text-yellow">Login</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url() ?>auth/register" class="nav-link">
              <span class="nav-link-inner--text font-weight-bold">Daftar Akun</span>
            </a>
          </li>
        </ul>
        <hr class="d-lg-none">
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
          <li class="nav-item d-none d-lg-block ml-lg-4">
            <a href="<?= base_url() ?>Guest" class="btn btn-neutral btn-icon">
              <span class="btn-inner--icon">
                <i class="ni ni-bold-left text-primary"></i>
              </span>
              <span class="nav-link-inner--text">Kembali</span>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- Main content -->
    <!-- Header -->
    <div class="header bg-gradient-primary py-7 py-lg-5 pt-lg-7">
      <div class="container">
        <div class="header-body text-center mb-7">
          <div class="row justify-content-center">
            <div class="col-xl-8 col-lg-6 col-md-8 px-5">
              <h1 class="text-white">SAKULINE</h1>
              <p class="text-lead text-white">Website Pesan Buku Online Kabupaten Banjarnegara</p>
            </div>
          </div>
        </div>
      </div>
      <div class="separator separator-bottom separator-skew zindex-100">
        <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
          <polygon class="fill-default" points="2560 0 2560 100 0 100"></polygon>
        </svg>
      </div>
    </div>
    <!-- Page content -->
    <div class="container mt--8 pb-5">
      <div class="row justify-content-center">
        <div class="col-lg-5 col-md-7">
          <div class="card bg-secondary border-0 mb-0">
            <div class="card-body px-lg- py-lg-5">
              <div class="text-center mb-4">
                <h1 class="text-blue">Log In</h1>
              </div>
              <?= $this->session->userdata('message'); ?>
              <form role="form" method="post" action="<?= base_url('auth');?>">
                <div class="form-group mb-3">
                  <div class="input-group input-group-merge input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-circle-08"></i></span>
                    </div>
                    <input class="form-control" id="email" name="email" placeholder="Email" type="email" value="<?= set_value('email');?>">
                  </div>
                  <?= form_error('email', '<small class="text-danger pl-3">', '</small>');?>
                </div>
                <div class="form-group">
                  <div class="input-group input-group-merge input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                    </div>
                    <input class="form-control" id="password" name="password" placeholder="Password" type="password">
                  </div>
                  <?= form_error('password', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
                <div class="text-center">
                  <button type="submit" name="login" class="btn btn-block btn-primary my-4">Log In</button>
                </div>
              </form>
              <div class="text-center">
                <a href="#" class="text-muted"><small>Belum memiliki akun?</small></a>
                <a href="<?= base_url() ?>/auth/register" class="text-blue"><small>Daftar</small></a>
              </div>
              <div class="text-center">
                <a href="<?= base_url('auth/forgotPassword');?>" class="text-blue"><small>Lupa password?</small></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <br>
  <!-- Footer -->
  <footer class="py-5" id="footer-main">
    <div class="container">
      <div class="row align-items-center justify-content-xl-center">
        <div class="col-xl-6">
          <div class="copyright text-center text-xl-center text-muted">
            &copy; 2022 <a href="https://www.creative-tim.com" class="font-weight-bold ml-1" target="_blank">Creative Tim</a>
          </div>
        </div>
      </div>
      <div class="row align-items-center justify-content-xl-center">
        <div class="col-xl-6">
          <div class="text-center text-muted">
            <a class="text-secondary" href="https://disarpus.banjarnegarakab.go.id" target="_blank">Disarpus Banjarnegara</a>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- Argon Scripts -->
  <!-- Core -->
  <script src="<?= base_url() ?>/assets/vendor/jquery/dist/jquery.min.js"></script>
  <script src="<?= base_url() ?>/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="<?= base_url() ?>/assets/vendor/js-cookie/js.cookie.js"></script>
  <script src="<?= base_url() ?>/assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
  <script src="<?= base_url() ?>/assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
  <!-- Argon JS -->
  <script src="<?= base_url() ?>/assets/js/argon.js?v=1.2.0"></script>
  <script src="<?= base_url();?>/assets/vendor/sweetalert2/dist/sweetalert2.all.min.js"></script>
  <script src="<?= base_url();?>/assets/js/myscript.js"></script>

</body>

</html>