<!DOCTYPE html>
<html>
<head>
	<title>Data Pesanan Buku</title>
</head>
<body>
	<table>
		<tr>
            <th scope="col">Judul Buku</th>
            <th scope="col">Penulis</th>
            <th scope="col">Pemesan</th>
            <th scope="col">ID Anggota</th>
            <th scope="col">Tanggal Pesan</th>
            <th scope="col">Tanggal Terima</th>
            <th scope="col">Status</th>
		</tr>
		<?php foreach ($pesanan_buku as $pb):?>
		<tr>
            <td><?= $pb['judul']; ?></td>
            <td><?= $pb['penulis']; ?></td>
            <td><?= $pb['nama']; ?></td>
            <td><?= $pb['id_anggota']; ?></td>
            <td><?= $pb['tanggal_pesan']; ?></td>
            <td><?= date('d F Y', $pb['tanggal_action']); ?></td>
            <td><?= $pb['status']; ?></td>
		</tr>
		<?php endforeach;?>
	</table>

	<script type="text/javascript">
		window.print();
	</script>
</body>
</html>