<?php 
session_start();

error_reporting(0);
require '../../function.php';

$unik     = $_GET["id_unik"];

$query      = mysqli_query($conn, "SELECT * FROM income_media WHERE id = '$unik'");
$data       = mysqli_fetch_assoc($query);
$tanggal_tf = $data["tanggal_tf"];
$status     = $data["status"];
$verif      = $data["verif"];

$qData      = mysqli_query($conn, "SELECT * FROM 2022_income WHERE tgl_pemasukan = '$tanggal_tf'");
$hData      = mysqli_fetch_assoc($qData);
$iStatus    = $hData["status"];

if ($verif == "Verif" && $iStatus == "Terverifikasi" ) {
    $incQuery   = mysqli_query($conn, "SELECT * FROM income_media WHERE tanggal_tf = '$tanggal_tf' AND status = 'OK'");
    $i = 1;
    while($Inc = mysqli_fetch_array($incQuery))
    {   
        $IncMedia   = $Inc['jumlah_tf'];
        $i++;
        $total_IncMedia[$i] = $IncMedia;
        
        $hasil_IncMedia = array_sum($total_IncMedia);
    }

    $convert    = convertDateDBtoIndo($tanggal_tf);
    $bulan      = substr($convert, 3, -5); 

    $query2     = mysqli_query($conn, "SELECT * FROM 2022_data_income WHERE bulan = '$bulan'");
    $data2      = mysqli_fetch_assoc($query2);
    $income     = $data2["income_global"];

    if ($income > 0) {
        $new_income = $income - $hasil_IncMedia;

        $upToIncome = mysqli_query($conn, "UPDATE 2022_data_income SET 
                    `income_global` = '$new_income'
                        WHERE bulan = '$bulan'
                    ");
    }
    
}

$query3 = mysqli_query($conn, "DELETE FROM `income_media` WHERE id = '$unik' ");

$queryIncome = mysqli_query($conn, "SELECT * FROM income_media WHERE tanggal_tf = '$tanggal_tf' AND status = 'OK'"); 
$numsIncome  = $queryIncome->num_rows;
// die(var_dump($numsIncome));
if ($numsIncome === 0) {
    mysqli_query($conn, "DELETE FROM `2022_income` WHERE tgl_pemasukan = '$tanggal_tf' ");

} else {
    $i = 1;
    while($r = mysqli_fetch_array($queryIncome))
    {   
        $tanggal    = $r["tanggal_tf"]; 
        $status     = $r["status"];
        $d_income   = $r['jumlah_tf'];
        $i++;
        $total_income[$i] = $d_income;
        
        $hasil_income = array_sum($total_income);
    }

    $upIncome = mysqli_query($conn, "UPDATE `2022_income` SET 
                    `id_pengurus`   ='$_SESSION[id_pengurus]',
                    `kategori`      ='Media Sosial',
                    `posisi`        ='$_SESSION[posisi]',
                    `gedung`        ='Fecebook Depok',
                    `tgl_pemasukan` ='$tanggal',
                    `income`        ='$hasil_income',
                    `status`        ='Pending'
                    WHERE 
                    tgl_pemasukan   = '$tanggal' "); 
    // die(var_dump($upIncome));
}

if ($query3 == true) {
    echo "<script>
    alert('Data Berhasil Dihapus');
    document.location.href = '../../admin/$_SESSION[username].php?id_database=database_crossCheck';
    </script>";
}  else {
    echo "<script>
    alert('Data Tidak Berhasil Dihapus');
    document.location.href = '../../admin/$_SESSION[username].php?id_database=database_crossCheck';
    </script>";
}




?>