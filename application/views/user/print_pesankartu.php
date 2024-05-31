<?php

// Author: Nicola Asuni
//
// (c) Copyright:
//               Nicola Asuni
//               Tecnick.com LTD
//               www.tecnick.com
//               info@tecnick.com
//============================================================+
// create new PDF document
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));

// set default monospaced font
$pdf->setDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->setMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->setHeaderMargin(PDF_MARGIN_HEADER);

// set auto page breaks
$pdf->setAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
	require_once(dirname(__FILE__).'/lang/eng.php');
	$pdf->setLanguageArray($l);
}

// ---------------------------------------------------------

// set default font subsetting mode
$pdf->setFontSubsetting(true);

// Set font
// dejavusans is a UTF-8 Unicode font, if you only need to
// print standard ASCII chars, you can use core fonts like
// helvetica or times to reduce file size.
$pdf->setFont('dejavusans', '', 14, '', true);

// Add a page
// This method has several options, check the source code documentation for more information.
$pdf->AddPage();

// set text shadow effect
$pdf->setTextShadow(array('enabled'=>true, 'depth_w'=>0.2, 'depth_h'=>0.2, 'color'=>array(196,196,196), 'opacity'=>1, 'blend_mode'=>'Normal'));

//JUDUL
$title = <<<EOD
<h3>FORMULIR PENDAFTARAN ANGGOTA</h3>
EOD;
$pdf->writeHTMLCell(0, 0, '', '', $title, 0, 1, 0, true, 'C', true);
$pdf->Ln(10);

// TANGGAL
$tanggal = <<<EOD
<h5 class="font-weight-light">TANGGAL &emsp; &emsp; &emsp; &emsp; &emsp; &ensp; &ensp;: ...........................................</h5>
EOD;
$pdf->writeHTMLCell(0, 0, '', '', $tanggal, 0, 1, 0, true, '', true);
$pdf->Ln(5);

// ID ANGGOTA
$id = <<<EOD
<h5 class="font-weight-light">NOMOR(diisi petugas) &emsp;: .........................................</h5>
EOD;
$pdf->writeHTMLCell(0, 0, '', '', $id, 0, 1, 0, true, '', true);
$pdf->Ln(5);

// NAMA
foreach ($pesanan_kartu as $kartu) :
	$siapa = $kartu['nama'];
$nama = <<<EOD
<h5 class="font-weight-light">NAMA &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &ensp;: $siapa</h5>
EOD;
$pdf->writeHTMLCell(0, 0, '', '', $nama, 0, 1, 0, true, '', true);
$pdf->Ln(5);

// JENIS KELAMIN
$jk = $kartu['jeniskelamin'];
$jenis_kelamin = <<<EOD
<h5 class="font-weight-light">JENIS KELAMIN &emsp; &emsp; &emsp; &ensp;&nbsp;: $jk</h5>
EOD;
$pdf->writeHTMLCell(0, 0, '', '', $jenis_kelamin, 0, 1, 0, true, '', true);
$pdf->Ln(5);

//TTL
$tempat = $kartu['tempatlahir'];
$tgl = date('d M Y', strtotime($kartu['tanggallahir']));
$ttl = <<<EOD
<h5 class="font-weight-light">TTL &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &nbsp; : $tempat, $tgl</h5>
EOD;
$pdf->writeHTMLCell(0, 0, '', '', $ttl, 0, 1, 0, true, '', true);
$pdf->Ln(5);

// ALAMAT
$rumah = $kartu['alamat'];
$alamat = <<<EOD
<h5 class="font-weight-light">ALAMAT &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &nbsp; : $rumah</h5>
EOD;
$pdf->writeHTMLCell(0, 0, '', '', $alamat, 0, 1, 0, true, '', true);
$pdf->Ln(5);

//NYARI KECAMATAN
if ($kartu['kecamatan'] == 2):
	$kecamatan = 'Banjarmangu';
elseif ($kartu['kecamatan'] == 3):
	$kecamatan = 'Banjarnegara';
elseif ($kartu['kecamatan'] == 4):
	$kecamatan = 'Batur';
elseif ($kartu['kecamatan'] == 5):
	$kecamatan = 'Bawang';
elseif ($kartu['kecamatan'] == 6):
	$kecamatan = 'Kalibening';
elseif ($kartu['kecamatan'] == 7):
	$kecamatan = 'Karangkobar';
elseif ($kartu['kecamatan'] == 8):
	$kecamatan = 'Madukara';
elseif ($kartu['kecamatan'] == 9):
	$kecamatan = 'Mandiraja';
elseif ($kartu['kecamatan'] == 10):
	$kecamatan = 'Pagedongan';
elseif ($kartu['kecamatan'] == 11):
	$kecamatan = 'Pagentan';
elseif ($kartu['kecamatan'] == 12):
	$kecamatan = 'Pandanarum';
elseif ($kartu['kecamatan'] == 13):
	$kecamatan = 'Pejawaran';
elseif ($kartu['kecamatan'] == 14):
	$kecamatan = 'Punggelan';
elseif ($kartu['kecamatan'] == 15):
	$kecamatan = 'Purwanegara';
elseif ($kartu['kecamatan'] == 16):
	$kecamatan = 'Purworejo Klampok';
elseif ($kartu['kecamatan'] == 17):
	$kecamatan = 'Rakit';
elseif ($kartu['kecamatan'] == 18):
	$kecamatan = 'Sigaluh';
elseif ($kartu['kecamatan'] == 19):
	$kecamatan = 'Susukan';
elseif ($kartu['kecamatan'] == 20):
	$kecamatan = 'Wanadadi';
elseif ($kartu['kecamatan'] == 21):
	$kecamatan = 'Wanayasa';
endif;
$kec = <<<EOD
<h5 class="font-weight-light">&emsp; &emsp; KEC &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &nbsp; &nbsp; &nbsp;: $kecamatan</h5>
EOD;
$pdf->writeHTMLCell(0, 0, '', '', $kec, 0, 1, 0, true, '', true);
$pdf->Ln(5);

if ($kartu['kabupaten'] == 1):
	$kabupaten = 'Banjarnegara';
else:
	$kabupaten = 'Lainnya';
endif;
$kab = <<<EOD
<h5 class="font-weight-light">&emsp; &emsp; KAB &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &nbsp; &nbsp; &nbsp;: $kabupaten</h5>
EOD;
$pdf->writeHTMLCell(0, 0, '', '', $kab, 0, 1, 0, true, '', true);
$pdf->Ln(5);

// NO.HP
$no = $kartu['nohp'];
$nohp = <<<EOD
<h5 class="font-weight-light">NO. HP &emsp; &emsp; &emsp; &emsp; &emsp; &ensp; &ensp; &nbsp; &nbsp;: $no</h5>
EOD;
$pdf->writeHTMLCell(0, 0, '', '', $nohp, 0, 1, 0, true, '', true);
$pdf->Ln(5);

// NO IDENTITAS
$noid = $kartu['nik'];
$nik = <<<EOD
<h5 class="font-weight-light">NO. IDENTITAS &emsp; &emsp; &ensp; &ensp; &nbsp; &nbsp;: $noid</h5>
EOD;
$pdf->writeHTMLCell(0, 0, '', '', $nik, 0, 1, 0, true, '', true);
$pdf->Ln(5);

// PEKERJAAN
$kerjaan = $kartu['pekerjaan'];
$pekerjaan = <<<EOD
<h5 class="font-weight-light">PEKERJAAN &emsp; &emsp; &emsp; &emsp; &ensp; &nbsp; &nbsp;: $kerjaan</h5>
EOD;
// Print text using writeHTMLCell()
$pdf->writeHTMLCell(0, 0, '', '', $pekerjaan, 0, 1, 0, true, '', true);
$pdf->Ln(5);

// INSTANSI
$inst = $kartu['instansi'];
$instansi = <<<EOD
<h5 class="font-weight-light">INSTANSI/SEKOLAH/PT &ensp; : $inst</h5>
EOD;
$pdf->writeHTMLCell(0, 0, '', '', $instansi, 0, 1, 0, true, '', true);
$pdf->Ln(5);

// PENDIDIKAN TERAKHIR
$pterakhir = $kartu['pendidikan'];
$pendidikan = <<<EOD
<h5 class="font-weight-light">PENDIDIKAN TERAKHIR &ensp;: $pterakhir</h5>
EOD;
$pdf->writeHTMLCell(0, 0, '', '', $pendidikan, 0, 1, 0, true, '', true);
$pdf->Ln(5);

// NAMA IBU
$ibu = $kartu['namaibu'];
$nama_ibu = <<<EOD
<h5 class="font-weight-light">NAMA IBU &emsp; &emsp; &emsp; &emsp; &emsp; &ensp; &nbsp;: $ibu</h5>
EOD;
$pdf->writeHTMLCell(0, 0, '', '', $nama_ibu, 0, 1, 0, true, '', true);
$pdf->Ln(5);

endforeach;
// ---------------------------------------------------------

// Close and output PDF document
// This method has several options, check the source code documentation for more information.
$pdf->Output('Pesanan_kartu.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
