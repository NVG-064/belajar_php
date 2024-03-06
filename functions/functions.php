<?php

// Function untuk mendapatkan koneksi ke database
function connection()
{
    return mysqli_connect('localhost', 'root', '', 'belajar_php');
}

// Function untuk melakukan query beserta hasilnya
function query($query)
{
    // Dapatkan koneksi database nya terlebih dahulu
    $conn = connection();

    // Jalankan query nya
    $result = mysqli_query($conn, $query);

    // Variabel untuk simpan datanya
    $data = [];

    // Agar data ditangkap semua, gunakan looping
    while ($assoc = mysqli_fetch_assoc($result)) {
        // Karena ingin menyimpan data ke dalam array yang bernama data[], maka gunakan cara berikut:
        $data[] = $assoc;
    }

    return $data;
}
