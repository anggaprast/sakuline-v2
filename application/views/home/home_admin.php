    <!-- Header -->
    <div class="header bg-primary pb-6">
      <div class="container-fluid">
        <div class="header-body">
          <div class="row align-items-center py-4">
            <div class="col-lg-12 col-12">
              <h2 class="text-white text-center mb-0">Dashboard Admin SAKULINE</h2>
              <h2 class="text-white text-center mb-0">Perpustakaan Daerah Kabupaten Banjarnegara</h2>
            </div>
          </div>
          <!-- Card stats -->
          <div class="row">
            <!-- TOTAL ANGGOTA -->
            <div class="col-xl-3 col-md-3">
              <div class="card card-stats">
                <!-- Card body -->
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-red mb-0">Pengguna</h5>
                      <span class="h2 font-weight-bold mb-0"><?= $this->db->get('user')->num_rows() - 1; ?></span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-gradient-red text-white rounded-circle shadow">
                        <i class="fas fa-fw fa-user"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-sm">
                    <?php foreach ($usernow as $user):?>
                    <?php if($user['jumlah'] != ' '):?>
                    <span class="h5 text-success mr-2"><i class="fas fa-fw fa-arrow-up"></i><?= $user['jumlah'];?></span>
                    <?php else: ?>
                      <span class="h5 text-success mr-2"><i class="fas fa-fw fa-arrow-up"></i>0</span>
                    <?php endif;?>
                    <?php endforeach;?>
                    <span class="text-nowrap">User baru bulan ini</span>
                  </p>
                </div>
              </div>
            </div>

            <!-- TOTAL BUKU -->
            <div class="col-xl-3 col-md-3">
              <div class="card card-stats">
                <!-- Card body -->
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-orange mb-0">Koleksi Buku</h5>
                      <span class="h2 font-weight-bold mb-0"><?= $this->db->get('collections')->num_rows(); ?></span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-gradient-orange text-white rounded-circle shadow">
                        <i class="ni ni-books"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-sm">
                    <?php foreach ($newbook as $newb):?>
                    <span class="h5 text-success mr-2"><i class="fas fa-fw fa-arrow-up"></i><?= $newb['jumlah'];?></span>
                  <?php endforeach;?>
                    <span class="text-nowrap">  Buku baru bulan ini</span>
                  </p>
                </div>
              </div>
            </div>

            <!-- TOTAL PESANAN BUKU -->
            <div class="col-xl-3 col-md-3">
              <div class="card card-stats">
                <!-- Card body -->
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-green mb-0">Pesanan Buku</h5>
                      <span class="h2 font-weight-bold mb-0"><?= $this->db->get('pesan_buku')->num_rows(); ?></span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-gradient-green text-white rounded-circle shadow">
                        <i class="ni ni-cart"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-sm">
                    <?php foreach ($bukunow as $buku):?>
                    <span class="h5 text-success mr-2"><i class="fas fa-fw fa-arrow-up"></i><?= $buku['jumlah'];?></span>
                    <?php endforeach;?>
                    <span class="text-nowrap">Pesanan bulan ini</span>
                  </p>
                </div>
              </div>
            </div>

            <!-- TOTAL PESANAN KARTU -->
            <div class="col-xl-3 col-md-3">
              <div class="card card-stats">
                <!-- Card body -->
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-info mb-0">Pesan Kartu</h5>
                      <span class="h2 font-weight-bold mb-0"><?= $this->db->get('pesan_kartu')->num_rows(); ?></span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-gradient-info text-white rounded-circle shadow">
                        <i class="fas fa-fw fa-id-card"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-sm">
                    <?php foreach ($kartunow as $kartu):?>
                    <span class="h5 text-success mr-2"><i class="fas fa-fw fa-arrow-up"></i><?= $kartu['jumlah'];?></span>
                  <?php endforeach;?>
                    <span class="text-nowrap">Pesanan bulan ini</span>
                  </p>
                </div>
              </div>
            </div>
          </div>
          <!-- Card Stats -->
        </div>
      </div>
    </div>

    <div class="container-fluid mt--6">
      <div class="row">
        <div class="col-lg-4">
          <div class="card">
            <div class="card-header bg-default">
              <div class="row align-items-center">
                <div class="col">
                  <h6 class="text-uppercase text-muted ls-1 mb-1">Perbandingan</h6>
                  <h5 class="h3 text-white mb-0">Status Pesanan Buku</h5>
                </div>
              </div>
            </div>
            <div class="card-body bg-default">
              <canvas id="statusPesanan"></canvas>
            </div>
          </div>
        </div>
        <div class="col-lg-8">
          <div class="card">
            <div class="card-header bg-transparent">
              <div class="row align-items-center">
                <div class="col">
                  <h6 class="text-uppercase text-muted ls-1 mb-1">Diagram</h6>
                  <h5 class="h3 mb-0">Asal Pengguna</h5>
                </div>
              </div>
            </div>
            <div class="card-body">
              <canvas id="asaluser"></canvas>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-header bg-transparent">
              <div class="row align-items-center">
                <div class="col">
                  <h6 class="text-uppercase text-muted ls-1 mb-1">Grafik</h6>
                  <h5 class="h3 mb-0">Jumlah Pesanan Buku</h5>
                </div>
              </div>
            </div>
            <div class="card-body">
              <canvas id="newChart"></canvas>
            </div>
          </div>
        </div>
      </div>
    </div>

      <div class="container-fluid">
        <!-- NOTIFIKASI PESANAN
        <div class="row">
        <div class="col-md-6">
          <?php foreach ($pesanan_kartu as $pk) :?>
          <div class="card">
            <div class="card-body">
                  <div class="row">
                    <div class="col-md-7">
                      <h5 class="card-title text-uppercase mb-0 text-info">Pesanan Kartu</h5>
                    </div>
                    <div class="col-md-5">
                      <div class="h5"><span><?= $pk['date_created']; ?></span></div>
                    </div>
                  </div>
                  <span class="h2 font-weight-bold mb-0 text-info">Pesanan Baru <i class="fas fa-fw fa-bell"></i></span>
                  <hr class="my-3">
                  <--ISI KOTAKAN
                  <div class="row">
                    <div class="col-md-3"><h5>Nama</h5></div>
                    <div class="col-md-9"><h5>: <?= $pk['nama'];?></h5></div>
                  </div>
                  <div class="row">
                    <div class="col-md-3"><h5>Alamat</h5></div>
                    <div class="col-md-9"><h5>: <?= $pk['alamat'];?>, Kecamatan <?= $pk['nama_kec'];?>, Kabupaten Banjarnegara.</h5></div>
                  </div>
                  <div class="row">
                    <div class="col-md-3"><h5>No HP/WA</h5></div>
                    <div class="col-md-9"><h5>: <?= $pk['nohp'];?></h5></div>
                  </div>
                  <hr class="my-3">
                  <div class="row justify-content-center">
                    <a class="h5 text-primary" href="<?= base_url();?>pesanan_kartu">Lihat Semua Pesanan</a>
                  </div>
            </div>
          </div>
          <?php endforeach; ?>
        </div>
        <-- END OF Pesanan Kartu Terbaru
      </div> -->

      <script>
        const data = {
          labels: [
            <?php
            foreach ($asaluser as $val){
              echo "'".$val['nama_kecamatan']."',";
            }
          ?>
          ],
          datasets: [{
            label: 'Jumlah User',
            backgroundColor: 'rgb(255, 99, 132)',
            borderColor: 'rgb(255, 99, 132)',
            data: [
              <?php
                foreach ($asaluser as $val) {
                  echo $val['jumlah'].",";
                }
              ?>
            ],
          }]
        };

        const config = {
          type: 'bar',
          data: data,
          options: {}
        };

        const asaluser = new Chart(
          document.getElementById('asaluser'),
          config
        );
      </script>

      <script>
        const ctx = document.getElementById('statusPesanan').getContext('2d');
        const myChart = new Chart(ctx, {
            type: 'pie',
            data: {
                labels: [
                  <?php
                    foreach ($statusstat as $stat){
                      echo "'".$stat['status']."',";
                    }
                  ?>
                ],
                datasets: [{
                    label: '# of Votes',
                    data: [
                      <?php
                        foreach ($statusstat as $stat) {
                          echo $stat['jumlah'].",";
                        }
                      ?>
                    ],
                    backgroundColor: [
                        'rgba(45, 206, 137, 0.8)',
                        'rgba(245, 54, 92, 0.8)'
                    ],
                    borderColor: [
                        'rgba(23, 43, 77, 1)',
                        'rgba(23, 43, 77, 1)'
                    ],
                    borderWidth: 2
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
      </script>

      <script>
        var gtx = document.getElementById('newChart').getContext('2d');
        var newChart = new Chart(gtx, {
            type: 'line',
            data: {
                labels: [
                  <?php
                    foreach ($jmlpesanan as $jml) {
                      echo "'".$jml['bulanke']."',";
                    }
                  ?>
                ],
                datasets: [{
                    label: 'Jumlah Pesanan',
                    data: [
                      <?php
                        foreach ($jmlpesanan as $jml) {
                          echo $jml['jumlah'].",";
                        }
                      ?>
                    ],
                    backgroundColor: ['rgba(54, 162, 235, 0.5)'],
                    borderColor: ['rgba(54, 162, 235, 1)'],
                    borderWidth: 3
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
      </script>