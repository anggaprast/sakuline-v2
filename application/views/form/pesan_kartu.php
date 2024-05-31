<!DOCTYPE html>
<html>
  <!-- Main content -->
  <div class="header pb-6 d-flex align-items-center" style="min-height: 400px; background-image: url(<?=base_url()?>/assets/img/theme/background.jpg); background-size: cover; background-position: center top;">
    <span class="mask bg-gradient-default opacity-8"></span>
    <!-- Header -->
    <!-- Header -->
      <div class="container-fluid">
        <div class="header-body">
          <div class="row">
            <div class="col-lg-12 col-12">
              <div class="row">
                <div class="col-lg-8">
                  <h1 class="display-2 text-white mt-3">Buat Kartu Anggota!</h1>
                  <p class="text-white">Anda harus memiliki nomor kartu anggota perpustakaan agar dapat meminjam buku. Lengkapi formulir dibawah untuk memesan pembuatan!</p>
                  <h3 class="text-yellow">Sudah punya kartu anggota?</h3>
                  <p class="text-white">Masukkan nomor kartu anggota di Profile Anda!</p>
                  <a type="button" class="btn btn-primary" href="<?= base_url('profile');?>">Edit Profile</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
  </div>
  <!-- Page content -->
<div class="container-fluid mt--5">
  <?= $this->session->flashdata('kartu_sukses'); ?>
  <div class="row justify-content-center">
  <div class="col-md-12">
    <div class="card">
      <div class="card-header">
        <div class="row align-items-center">
          <div class="col-8">
            <h3 class="mb-0">Formulir Pembuatan Kartu Anggota</h3>
          </div>
        </div>
      </div>
      <div class="card-body">
        <form role="form" method="post" action="<?= base_url('form_kartu/pesan_kartu');?>">
          <div class="pl-lg-2">
            <div class="row">
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label" for="nama">Nama Lengkap</label>
                  <input type="text" id="nama" name="nama" class="form-control" value="<?= set_value('nama');?>">
                  <?= form_error('nama', '<small class="text-danger pl-3">','</small>'); ?>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label" for="jeniskelamin">Jenis Kelamin</label>
                  <select class="form-control" id="jeniskelamin" name="jeniskelamin" type="text" value="<?= set_value('jeniskelamin');?>">
                    <option selected disabled>Jenis Kelamin</option>
                    <option>Laki-Laki</option>
                    <option>Perempuan</option>
                  </select>
                  <?= form_error('jeniskelamin', '<small class="text-danger pl-3">','</small>'); ?>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label" for="tempatlahir">Tempat Lahir</label>
                  <input type="text" id="tempatlahir" name="tempatlahir" class="form-control" value="<?= set_value('tempatlahir');?>">
                  <?= form_error('tampatlahir', '<small class="text-danger pl-3">','</small>'); ?>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label" for="tanggallahir">Tanggal Lahir</label>
                  <input class="form-control" type="date" id="tanggallahir" name="tanggallahir" value="<?= set_value('tanggallahir');?>">
                  <?= form_error('tanggallahir', '<small class="text-danger pl-3">','</small>'); ?>
                </div>
              </div>
            </div>
          </div>
          <hr class="my-4" />
          <!-- Address -->
          <div class="pl-lg-2">
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label class="form-control-label" for="alamat">Alamat Rumah</label>
                  <input id="alamat" name="alamat" tyep="text" class="form-control" placeholder="Nama jalan, Nomor rumah, Rt Rw, dsb" value="<?= set_value('alamat');?>">
                  <?= form_error('alamat', '<small class="text-danger pl-3">','</small>'); ?>
                </div>
              </div>
            </div>
          <div class="row">
            <div class="col-lg-4">
              <div class="form-group">
                <label class="form-control-label" for="kabupaten">Kabupaten/Kota</label>
                <select class="form-control" id="kabupaten" name="kabupaten" placeholder="Kabupaten" value="<?= set_value('kabupaten');?>">
                  <option disabled selected>Kabupaten</option>
                  <option value ="1">Banjarnegara</option>
                </select>
                <?= form_error('kabupaten', '<small class="text-danger pl-3">','</small>'); ?>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="form-group">
                <label class="form-control-label" for="kecamatan">Kecamatan</label>
                <select class="form-control" id="kecamatan" name="kecamatan" placeholder="Kecamatan" value="<?= set_value('kecamatan');?>">
                  <option disabled selected>Kecamatan</option>
                  <?php foreach ($kecamatan as $kec) : ?>
                  <option value="<?= $kec->id; ?>"><?= $kec->nama_kec ?></option>
                  <?php endforeach ?>
                </select>
                <?= form_error('kecamatan', '<small class="text-danger pl-3">','</small>'); ?>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="form-group">
                <label class="form-control-label" for="kelurahan">Desa/Kelurahan</label>
                <input type="text" id="kelurahan" name="kelurahan" class="form-control" value="<?= set_value('kelurahan');?>">
                <?= form_error('kelurahan', '<small class="text-danger pl-3">','</small>'); ?>
              </div>
            </div>
          </div>
        </div>
        <hr class="my-4" />
        <!-- -->
        <div class="pl-lg-2">
          <div class="row">
            <div class="col-lg-6">
              <div class="form-group">
                <label class="form-control-label" for="nohp">Nomor HP/WA</label>
                <input type="text" id="nohp" name="nohp" class="form-control" value="<?= set_value('nohp');?>">
                <?= form_error('nohp', '<small class="text-danger pl-3">','</small>'); ?>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="form-group">
                <label class="form-control-label" for="nik">NIK</label>
                <input type="text" id="nik" name="nik" class="form-control" value="<?= set_value('nik');?>">
                <?= form_error('nik', '<small class="text-danger pl-3">','</small>'); ?>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <div class="form-group">
                <label class="form-control-label" for="pekerjaan">Pekerjaan</label>
                <input type="text" id="pekerjaan" name="pekerjaan" class="form-control" value="<?= set_value('pekerjaan');?>">
                <?= form_error('pekerjaan', '<small class="text-danger pl-3">','</small>'); ?>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="form-group">
                <label class="form-control-label" for="instansi">Instansi/Sekolah</label>
                <input type="text" id="instansi" name="instansi" class="form-control" value="<?= set_value('instansi');?>">
                <?= form_error('instansi', '<small class="text-danger pl-3">','</small>'); ?>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="form-group">
                <label class="form-control-label" for="pendidikan">Pendidikan Terakhir</label>
                <select class="form-control" id="pendidikan" name="pendidikan" type="text" value="<?= set_value('pendidikan');?>">
                  <option>SD</option>
                  <option>SMP</option>
                  <option>SMA</option>
                  <option>Perguruan Tinggi</option>
                </select>
                <?= form_error('pendidikan', '<small class="text-danger pl-3">','</small>'); ?>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="form-group">
                <label class="form-control-label" for="namaibu">Nama Ibu</label>
                <input type="text" id="namaibu" name="namaibu" class="form-control" value="<?= set_value('namaibu');?>">
                <?= form_error('namaibu', '<small class="text-danger pl-3">','</small>'); ?>
              </div>
            </div>
          </div>
        </div>
        <!-- Button -->
        <div class="row justify-content-center">
          <div class="col-md-4">
          </div>
          <div class="col-md-4">
            <div class="text-center">
                <button type="submit" class="btn btn-primary btn-block mt-2">Kirim Formulir</button>
            </div>
          </div>
          <div class="col-md-4">
          </div>
        </div>
        <!-- Description -->
      </form>
    </div>
  </div>
</div>
</div>