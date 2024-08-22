<?php
include_once("connection.php");

if (isset($_GET['id_daftar_pesanan'])) {
    $id_daftar_pesanan = intval($_GET['id_daftar_pesanan']); // Gunakan intval untuk memastikan ID adalah integer

    // Perintah SQL untuk menghapus
    $sql = "DELETE FROM daftar_pesanan WHERE id_daftar_pesanan = $id_daftar_pesanan";

    // Mengeksekusi query
    if (mysqli_query($conn, $sql)) {
        // Redirect ke halaman list_pemesanan.php setelah berhasil dihapus
        header("Location: list_pemesanan.php");
        exit(); // Pastikan exit() dipanggil setelah redirect
    } else {
        // Menampilkan pesan kesalahan jika query gagal
        echo "Error: " . mysqli_error($conn);
    }
} else {
    echo "ID tidak ditemukan.";
}
?>
