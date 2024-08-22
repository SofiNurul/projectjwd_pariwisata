<?php
    include_once("connection.php");

    $aktif_menu = "list_pendaftaran";

    include_once("header.php");
?>

<div class="list-container"> 

</div>

<h2>Daftar Pesanan</h2>

<div class="table-container">
    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>Paket Wisata</th>
                <th>Nama Pemesan</th>
                <th>Phone</th>
                <th>Jumlah Peserta</th>
                <th>Jumlah Hari</th>
                <th>Akomodasi</th>
                <th>Transportasi</th>
                <th>Makanan</th>
                <th>Harga Paket</th>
                <th>Total Tagihan</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php 
            $sql = "SELECT dp.*, pw.nama_paket 
                    FROM daftar_pesanan dp 
                    JOIN paket_wisata pw ON dp.id_paket_wisata = pw.id_paket_wisata";
            $result = mysqli_query($conn, $sql);
            $no = 1; // Inisialisasi nomor urut

            while ($data_pesanan = mysqli_fetch_array($result)) {
            ?>    
            <tr>
                <td><?php echo $no++; ?></td>
                <td><?php echo $data_pesanan['nama_paket']; ?></td>
                <td><?php echo $data_pesanan['nama_pemesan']; ?></td>
                <td><?php echo $data_pesanan['no_tlp']; ?></td>
                <td><?php echo $data_pesanan['jumlah_peserta']; ?></td>
                <td><?php echo $data_pesanan['jumlah_hari']; ?></td>
                <td><?php echo $data_pesanan['akomodasi']; ?></td>
                <td><?php echo $data_pesanan['transportasi']; ?></td>
                <td><?php echo $data_pesanan['makanan']; ?></td>
                <td><?php echo number_format($data_pesanan['harga_paket'], 0, ',', '.'); ?></td>
                <td><?php echo number_format($data_pesanan['total_tagihan'], 0, ',', '.'); ?></td>
                <td>
                   <div class="btn-link">
                    <a href="form_edit.php?id_daftar_pesanan=<?php echo $data_pesanan['id_daftar_pesanan'];?>">edit</a>
                    <a href='javascript:void(0);' onclick="KonfirmasiPenghapusan(<?php echo $data_pesanan['id_daftar_pesanan']; ?>)">Delete</a>
                   </div>
                </td>
            </tr>
            <?php 
            }
            ?>
        </tbody>
    </table>
</div>

<?php
    include_once("footer.php");
?>

<script type="text/javascript">
    function KonfirmasiPenghapusan(id_daftar_pesanan){
        var konfirmasi = confirm("Anda yakin ingin menghapus data ini?");

        if(konfirmasi) {
            window.location.href = "proses_hapus.php?id_daftar_pesanan=" + id_daftar_pesanan;
        }
    }
</script>
