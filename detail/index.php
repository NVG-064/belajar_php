<?php

// Wajib
require '../functions/functions.php';

// GET dan POST
$email = $_POST['email'];
$password = $_POST['password'];

$id = $_GET['id'];
$siswa = query("SELECT * FROM siswa WHERE id=$id");

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
            <th>Gambar</th>
            <th>NIS</th>
            <th>Nama</th>
            <th>Kelas</th>
            <th>Jurusan</th>
            <th>Email</th>
            <th>Aksi</th>
        </tr>

        <?php foreach ($siswa as $siswa) : ?>
            <tr>
                <td><img src="../image/<?= $siswa['gambar']; ?>" height="60"></td>
                <td><?= $siswa['nis']; ?></td>
                <td><?= $siswa['nama']; ?></td>
                <td><?= $siswa['kelas']; ?></td>
                <td><?= $siswa['jurusan']; ?></td>
                <td><?= $siswa['email']; ?></td>
                <td>
                    <a href="">ubah</a> | <a href="">hapus</a>
            </tr>
        <?php endforeach; ?>
    </table>

    <br>

    <button type="button" onclick="location.href = 'http://localhost/belajar_php/';">Kembali</button>

</body>

</html>