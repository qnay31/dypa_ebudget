<?php 
session_start();

error_reporting(0);
require '../../function.php';

$unik     = $_GET["id_unik"];
$periode  = $_GET["id_p"]; 
$query  = mysqli_query($conn, "SELECT * FROM income_media WHERE id = '$unik' AND MONTH(tanggal_tf) = '$periode' ");
$data   = mysqli_fetch_assoc($query);
$nama_akun  = mysqli_real_escape_string($conn, $data["nama_akun"]);
$tanggal_tf = mysqli_real_escape_string($conn, $data["tanggal_tf"]);
$ip         = get_client_ip();
$date       = date("Y-m-d H:i:s");

// die(var_dump($posisi));

$result2 = mysqli_query($conn, "INSERT INTO 2022_log_aktivity VALUES('', '$_SESSION[nama]', '$_SESSION[posisi]', '$ip', '$date', '$_SESSION[nama] Divisi $_SESSION[posisi] Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun $nama_akun')");


$update = mysqli_query($conn, "UPDATE `income_media` SET 
            `status`  ='OK'
            WHERE id    = '$unik' "); 

$kuery      = mysqli_query($conn, "SELECT * FROM income_media WHERE tanggal_tf = '$tanggal_tf' AND status = 'OK' ");
$i = 1;
while($r = mysqli_fetch_array($kuery))
{   
    $tanggal    = $r["tanggal_tf"]; 
    $status     = $r["status"];
    $d_income   = $r['jumlah_tf'];
    $verif      = $r['verif'];
    $i++;
    $total_income[$i] = $d_income;
    
    $hasil_income = array_sum($total_income);
}

$income2022 = mysqli_query($conn, "SELECT * FROM 2022_income WHERE tgl_pemasukan = '$tanggal' ");
$numIncome  = $income2022->num_rows;
$hData      = mysqli_fetch_assoc($income2022);
$iStatus    = $hData["status"];

if ($iStatus == "Terverifikasi") {
    $convert    = convertDateDBtoIndo($tanggal);
    $bulan      = substr($convert, 3, -5); 

    $query2     = mysqli_query($conn, "SELECT * FROM 2022_data_income WHERE bulan = '$bulan'");
    $data2      = mysqli_fetch_assoc($query2);
    $income     = $data2["income_global"];

    if ($income > 0) {
        $new_income = $income - $hasil_income + $d_income;

        $upToIncome = mysqli_query($conn, "UPDATE 2022_data_income SET 
                    `income_global` = '$new_income'
                        WHERE bulan = '$bulan'
                    ");
    }
}
// die(var_dump($tIncome));

if ($numIncome === 1 && $status == "OK") {
    $upIncome = mysqli_query($conn, "UPDATE `2022_income` SET 
                `id_pengurus`   ='kepala_income',
                `kategori`      ='Media Sosial',
                `posisi`        ='Kepala Income',
                `gedung`        ='Facebook Depok',
                `tgl_pemasukan` ='$tanggal',
                `income`        ='$hasil_income',
                `status`        ='Pending'
                WHERE 
                tgl_pemasukan   = '$tanggal' ");

    $upMedia = mysqli_query($conn, "UPDATE income_media SET 
                verif = 'Pending'
                WHERE
                tanggal_tf = '$tanggal' "); 
    
    // die(var_dump($tIncome));
} else {
    $inpIncome  = mysqli_query($conn, "INSERT INTO 2022_income VALUES('', '$_SESSION[id_pengurus]', 'Media Sosial', '$_SESSION[posisi]',
    'Fecebook Depok', '$tanggal', '$d_income', 'Pending')");
    // die(var_dump($inpIncome));
}

// die(var_dump($update));
if ($update !== true) {
    echo "<script>
alert('Income Tidak Berhasil Dikonfirmasi');
document.location.href = '../../admin/$_SESSION[username].php?id_forms=forms_check';
</script>";

} else {
echo "<script>
alert('Income Berhasil Dikonfirmasi');
document.location.href = '../../admin/$_SESSION[username].php?id_forms=forms_check';
</script>";
}


?>