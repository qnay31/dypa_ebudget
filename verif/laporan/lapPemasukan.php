<?php 
session_start();

error_reporting(0);
require '../../function.php';

$id_verif = $_GET["id_verif"]; 
$unik     = $_GET["id_unik"];
$periode  = $_GET["id_p"]; 

    if ($id_verif == "NonResi") {
        $query          = mysqli_query($conn, "SELECT * FROM 2022_incometanparesi WHERE id = '$unik' AND MONTH(tgl_pemasukan) = '$periode' ");
        $data           = mysqli_fetch_assoc($query);
        $kategori       = $data["kategori"];
        $gedung         = $data["gedung"];
        $id_pengurus    = $data["id_pengurus"];
        $ip             = get_client_ip();
        $date           = date("Y-m-d H:i:s");

        // die(var_dump($result2));
        $update = mysqli_query($conn, "UPDATE `2022_incometanparesi` SET 
                    `status`   ='Terverifikasi'
                    WHERE id    = '$unik' "); 

        // pemasukan tanpa Resi
        $q  = mysqli_query($conn, "SELECT * FROM 2022_incometanparesi WHERE MONTH(tgl_pemasukan) = '$periode' AND status = 'Terverifikasi' AND gedung = 'Tanpa Resi' ");
        $i = 1;
        $sql = $q;
        while($r = mysqli_fetch_array($sql))
        {   
            $convert   = convertDateDBtoIndo($r['tgl_pemasukan']);
            $bulan     = substr($convert, 3, -5);
            $d_income = $r['income'];
            $i++;
            $total_income[$i] = $d_income;
            
            $hasil_income = array_sum($total_income);
        }
        
    } else {
        $query          = mysqli_query($conn, "SELECT * FROM 2022_income WHERE id = '$unik' AND MONTH(tgl_pemasukan) = '$periode' ");
        $data           = mysqli_fetch_assoc($query);
        $kategori       = $data["kategori"];
        $gedung         = $data["gedung"];
        $id_pengurus    = $data["id_pengurus"];
        $ip             = get_client_ip();
        $date           = date("Y-m-d H:i:s");

        // die(var_dump($result2));
        $update = mysqli_query($conn, "UPDATE `2022_income` SET 
                    `status`   ='Terverifikasi'
                    WHERE id    = '$unik' "); 

        // Global
        $q  = mysqli_query($conn, "SELECT * FROM 2022_income WHERE MONTH(tgl_pemasukan) = '$periode' AND status = 'Terverifikasi' ");

        $i = 1;
        $sql = $q;
        while($r = mysqli_fetch_array($sql))
        {
            $convert   = convertDateDBtoIndo($r['tgl_pemasukan']);
            $bulan     = substr($convert, 3, -5);

            $d_income = $r['income'];
            $i++;
            $total_income[$i] = $d_income;

            $hasil_income = array_sum($total_income);
        }
    }
    

    

    $result2 = mysqli_query($conn, "INSERT INTO 2022_log_aktivity VALUES('', '$_SESSION[nama]', '$_SESSION[posisi]', '$ip', '$date', '$_SESSION[nama] Divisi $_SESSION[posisi] Telah Mengkonfirmasi Laporan $kategori dengan income dari gedung $gedung')");
    
    // cek nama
    $c_query = mysqli_query($conn, "SELECT bulan FROM 2022_data_income WHERE bulan = '$bulan' ");
    
    // sub cabang pemasukan
    // celengan
    if ($id_pengurus == 'management_keuangan' && $gedung == 'Fecebook Depok') {
        if (mysqli_fetch_assoc($c_query)) {
                $update2 = mysqli_query($conn, "UPDATE `2022_data_income` SET 
                `income_global`  ='$hasil_income'
                WHERE bulan      = '$bulan' ");
                // die(var_dump($hasil_income));
            }
            
        } else {
            if (mysqli_fetch_assoc($c_query)) {
                mysqli_query($conn, "UPDATE `2022_data_income` SET 
                `income_tanpaResi`  ='$hasil_income'
                WHERE bulan         = '$bulan' ");
                // die(var_dump($update2));
            }
        }

    // die(var_dump($update));
    if ($update == false ) {
        echo "<script>
    alert('Data Tidak Berhasil Dikonfirmasi');
    document.location.href = '../../admin/$_SESSION[username].php?id_checklist=checklist_pemasukanMedia';
    </script>";
    } else {
    echo "<script>
    alert('Data Laporan Berhasil Dikonfirmasi');
    document.location.href = '../../admin/$_SESSION[username].php?id_checklist=checklist_pemasukanMedia';
    </script>";
    }


?>