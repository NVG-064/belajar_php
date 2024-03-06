<?php

// Wajib
require 'functions/functions.php';

$nama = $_POST['nama'];
$nis = $_POST['nis'];
$kelas = $_POST['kelas'];
$email = $_POST['email'];
$jurusan = $_POST['jurusan'];
$gambar = $_POST['gambar'];

$siswa = query("SELECT * FROM siswa");

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Belajar PHP</title>
</head>

<body>

    <table border="1" cellpadding="10" cellspacing="0">
        <tr>
            <th>No.</th>
            <th>Gambar</th>
            <th>Nama</th>
        </tr>

        <?php foreach ($siswa as $siswa) : ?>
            <tr>
                <td><?= $siswa['id']; ?></td>
                <td><img src="image/<?= $siswa['gambar']; ?>" height="60"></td>
                <td><a href="detail/index.php?id=<?= $siswa['id']; ?>"><?= $siswa['nama']; ?></a></td>
            </tr>
        <?php endforeach; ?>
    </table>

    <br>

    <h3><?= $nama; ?></h3>
    <h3><?= $nis; ?></h3>
    <h3><?= $kelas; ?></h3>
    <h3><?= $email; ?></h3>
    <h3><?= $jurusan; ?></h3>
    <h3><?= $gambar; ?></h3>

    <br>

    <button type="button" onclick="location.href = 'http://localhost/belajar_php/add/';">Tambah Data Baru</button>

</body>

</html>