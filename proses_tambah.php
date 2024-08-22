<?php
if ($_POST) {
    include_once("connection.php");

    // Ambil data dari form
    $id_paket_wisata = $_POST['nama_paket'];
    $nama_pemesan = $_POST['nama_pemesan'];
    $no_tlp = $_POST['no_tlp'];

    // Pastikan format tanggal sesuai dengan format yang diterima database
    $tgl_pesan = date('Y-m-d', strtotime($_POST['tgl_pesan'])); // Konversi ke format YYYY-MM-DD
    $jumlah_hari = $_POST['jumlah_hari'];

    // Layanan penginapan
    $layanan_penginapan = isset($_POST['layanan_penginapan']) ? "Y" : "N";

    // Layanan transportasi
    $layanan_transportasi = isset($_POST['layanan_transportasi']) ? "Y" : "N";

    // Layanan makan
    $layanan_makan = isset($_POST['layanan_makan']) ? "Y" : "N";

    // Ambil jumlah peserta dan harga paket dari form
    $jumlah_peserta = $_POST['jumlah_peserta'];
    $harga_paket_str = $_POST['harga_paket'];
    $harga_paket = str_replace(".", "", $harga_paket_str); // Hilangkan titik jika ada
    $harga_paket = (int)$harga_paket;

    // Hitung total tagihan
    $total_tagihan = $harga_paket * $jumlah_hari * $jumlah_peserta;

    // Query untuk menyimpan data ke database
    $sql = "INSERT INTO daftar_pesanan
            (id_paket_wisata, nama_pemesan, no_tlp, tanggal_pemesanan, jumlah_peserta, jumlah_hari, akomodasi, transportasi, makanan, harga_paket, total_tagihan)
            VALUES ('$id_paket_wisata', '$nama_pemesan', '$no_tlp', '$tgl_pesan', '$jumlah_peserta', '$jumlah_hari', '$layanan_penginapan', '$layanan_transportasi', '$layanan_makan', '$harga_paket', '$total_tagihan')";

    // Eksekusi query
    if (mysqli_query($conn, $sql)) {
        header("location: list_pemesanan.php");
    } else {
        echo "Error: " . mysqli_error($conn);
    }

    // Tutup koneksi
    mysqli_close($conn);
}
?>


