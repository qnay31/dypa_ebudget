<?php 
session_start();

error_reporting(0);
require '../../function.php';

$id_verif       = $_GET["id_verif"];
$unik           = $_GET["id_unik"];
$periode        = $_GET["id_p"]; 
$query          = mysqli_query($conn, "SELECT * FROM 2022_$id_verif WHERE id = '$unik' AND MONTH(tgl_laporan) = '$periode' ");
$data           = mysqli_fetch_assoc($query);
$deskripsi      = mysqli_real_escape_string($conn, $data["pemakaian"]);
$kategori       = $data["kategori"];
$jenis          = $data["jenis"];
$cabang         = $data["cabang"];
$id_pengurus    = $data["id_pengurus"];
$ip             = get_client_ip();
$date           = date("Y-m-d H:i:s");

$result2 = mysqli_query($conn, "INSERT INTO 2022_log_aktivity VALUES('', '$_SESSION[nama]', '$_SESSION[posisi]', '$ip', '$date', '$_SESSION[nama] Divisi $_SESSION[posisi] Telah Mengkonfirmasi Laporan $kategori dengan deskripsi $deskripsi')");

// die(var_dump($result2));
$update = mysqli_query($conn, "UPDATE `2022_$id_verif` SET 
            `laporan`   ='Terverifikasi'
            WHERE id    = '$unik' "); 

// Global

    $q  = mysqli_query($conn, "SELECT * FROM 2022_$id_verif WHERE MONTH(tgl_laporan) = '$periode' AND laporan = 'Terverifikasi' ");

    $i = 1;
    $sql = $q;
    while($r = mysqli_fetch_array($sql))
    {
        $convert   = convertDateDBtoIndo($r['tgl_laporan']);
        $bulan     = substr($convert, 3, -5);

        $d_anggaran = $r['dana_anggaran'];
        $i++;
        $total_anggaran[$i] = $d_anggaran;

        $hasil_anggaran = array_sum($total_anggaran);

        $d_terpakai = $r['dana_terpakai'];
        $total_terpakai[$i] = $d_terpakai;

        $hasil_terpakai = array_sum($total_terpakai);

}

if ($id_verif == "aset_yayasan") {
    if ($cabang == "Tajur") {
        // pembangunan tajur
        $q2  = mysqli_query($conn, "SELECT * FROM 2022_$id_verif WHERE MONTH(tgl_laporan) = '$periode' AND laporan = 'Terverifikasi' AND jenis = 'Pembangunan' AND cabang = 'Tajur' ");

        $sql2 = $q2;
        while($r2 = mysqli_fetch_array($sql2))
        {
            $d_anggaran2 = $r2['dana_anggaran'];
            $i++;
            $total_anggaran2[$i] = $d_anggaran2;

            $hasil_anggaran2 = array_sum($total_anggaran2);

            $d_terpakai2 = $r2['dana_terpakai'];
            $total_terpakai2[$i] = $d_terpakai2;

            $hasil_terpakai2 = array_sum($total_terpakai2);
        }

        // pembelian tajur
        $q3  = mysqli_query($conn, "SELECT * FROM 2022_$id_verif WHERE MONTH(tgl_laporan) = '$periode' AND laporan = 'Terverifikasi' AND jenis = 'Pembelian Barang' AND cabang = 'Tajur' ");

        $sql3 = $q3;
        while($r3 = mysqli_fetch_array($sql3))
        {
            $d_anggaran3 = $r3['dana_anggaran'];
            $i++;
            $total_anggaran3[$i] = $d_anggaran3;

            $hasil_anggaran3 = array_sum($total_anggaran3);

            $d_terpakai3 = $r3['dana_terpakai'];
            $total_terpakai3[$i] = $d_terpakai3;

            $hasil_terpakai3 = array_sum($total_terpakai3);
        }

    } else {
        // pembangunan bogor
        $q2  = mysqli_query($conn, "SELECT * FROM 2022_$id_verif WHERE MONTH(tgl_laporan) = '$periode' AND laporan = 'Terverifikasi' AND jenis = 'Pembangunan' AND cabang = 'Bogor' ");

        $sql2 = $q2;
        while($r2 = mysqli_fetch_array($sql2))
        {
            $d_anggaran2 = $r2['dana_anggaran'];
            $i++;
            $total_anggaran2[$i] = $d_anggaran2;

            $hasil_anggaran2 = array_sum($total_anggaran2);

            $d_terpakai2 = $r2['dana_terpakai'];
            $total_terpakai2[$i] = $d_terpakai2;

            $hasil_terpakai2 = array_sum($total_terpakai2);
        }

        // pembelian bogor
        $q3  = mysqli_query($conn, "SELECT * FROM 2022_$id_verif WHERE MONTH(tgl_laporan) = '$periode' AND laporan = 'Terverifikasi' AND jenis = 'Pembelian Barang' AND cabang = 'Bogor' ");

        $sql3 = $q3;
        while($r3 = mysqli_fetch_array($sql3))
        {
            $d_anggaran3 = $r3['dana_anggaran'];
            $i++;
            $total_anggaran3[$i] = $d_anggaran3;

            $hasil_anggaran3 = array_sum($total_anggaran3);

            $d_terpakai3 = $r3['dana_terpakai'];
            $total_terpakai3[$i] = $d_terpakai3;

            $hasil_terpakai3 = array_sum($total_terpakai3);
        }
    }

    // pembangunan 
    $q4  = mysqli_query($conn, "SELECT * FROM 2022_$id_verif WHERE MONTH(tgl_laporan) = '$periode' AND laporan = 'Terverifikasi' AND jenis = 'Pembangunan' ");

    $sql4 = $q4;
    while($r4 = mysqli_fetch_array($sql4))
    {
        $d_anggaran4 = $r4['dana_anggaran'];
        $i++;
        $total_anggaran4[$i] = $d_anggaran4;

        $hasil_anggaran4 = array_sum($total_anggaran4);

        $d_terpakai4 = $r4['dana_terpakai'];
        $total_terpakai4[$i] = $d_terpakai4;

        $hasil_terpakai4 = array_sum($total_terpakai4);
    }

    // pembelian
    $q5  = mysqli_query($conn, "SELECT * FROM 2022_$id_verif WHERE MONTH(tgl_laporan) = '$periode' AND laporan = 'Terverifikasi' AND jenis = 'Pembelian Barang'");

    $sql5 = $q5;
    while($r5 = mysqli_fetch_array($sql5))
    {
        $d_anggaran5 = $r5['dana_anggaran'];
        $i++;
        $total_anggaran5[$i] = $d_anggaran5;

        $hasil_anggaran5 = array_sum($total_anggaran5);

        $d_terpakai5 = $r5['dana_terpakai'];
        $total_terpakai5[$i] = $d_terpakai5;

        $hasil_terpakai5 = array_sum($total_terpakai5);
    }

} elseif ($id_verif == "maintenance") {
    if ($cabang == "Tajur") {
        // maintenance gedung
        $q2  = mysqli_query($conn, "SELECT * FROM 2022_$id_verif WHERE MONTH(tgl_laporan) = '$periode' AND laporan = 'Terverifikasi' AND kategori = 'Maintenance Gedung' AND cabang = 'Tajur' ");

        $sql2 = $q2;
        while($r2 = mysqli_fetch_array($sql2))
        {
            $d_anggaran2 = $r2['dana_anggaran'];
            $i++;
            $total_anggaran2[$i] = $d_anggaran2;

            $hasil_anggaran2 = array_sum($total_anggaran2);

            $d_terpakai2 = $r2['dana_terpakai'];
            $total_terpakai2[$i] = $d_terpakai2;

            $hasil_terpakai2 = array_sum($total_terpakai2);
        }

        // maintenance aset
        $q3  = mysqli_query($conn, "SELECT * FROM 2022_$id_verif WHERE MONTH(tgl_laporan) = '$periode' AND laporan = 'Terverifikasi' AND kategori  = 'Maintenance Aset' AND cabang = 'Tajur' ");

        $sql3 = $q3;
        while($r3 = mysqli_fetch_array($sql3))
        {
            $d_anggaran3 = $r3['dana_anggaran'];
            $i++;
            $total_anggaran3[$i] = $d_anggaran3;

            $hasil_anggaran3 = array_sum($total_anggaran3);

            $d_terpakai3 = $r3['dana_terpakai'];
            $total_terpakai3[$i] = $d_terpakai3;

            $hasil_terpakai3 = array_sum($total_terpakai3);
        }
    } else {
        // maintenance gedung
        $q2  = mysqli_query($conn, "SELECT * FROM 2022_$id_verif WHERE MONTH(tgl_laporan) = '$periode' AND laporan = 'Terverifikasi' AND kategori = 'Maintenance Gedung' AND cabang = 'Bogor' ");

        $sql2 = $q2;
        while($r2 = mysqli_fetch_array($sql2))
        {
            $d_anggaran2 = $r2['dana_anggaran'];
            $i++;
            $total_anggaran2[$i] = $d_anggaran2;

            $hasil_anggaran2 = array_sum($total_anggaran2);

            $d_terpakai2 = $r2['dana_terpakai'];
            $total_terpakai2[$i] = $d_terpakai2;

            $hasil_terpakai2 = array_sum($total_terpakai2);
        }

        // maintenance aset
        $q3  = mysqli_query($conn, "SELECT * FROM 2022_$id_verif WHERE MONTH(tgl_laporan) = '$periode' AND laporan = 'Terverifikasi' AND kategori  = 'Maintenance Aset' AND cabang = 'Bogor' ");

        $sql3 = $q3;
        while($r3 = mysqli_fetch_array($sql3))
        {
            $d_anggaran3 = $r3['dana_anggaran'];
            $i++;
            $total_anggaran3[$i] = $d_anggaran3;

            $hasil_anggaran3 = array_sum($total_anggaran3);

            $d_terpakai3 = $r3['dana_terpakai'];
            $total_terpakai3[$i] = $d_terpakai3;

            $hasil_terpakai3 = array_sum($total_terpakai3);
        }
    }
    
    // maintenance gedung
    $q4  = mysqli_query($conn, "SELECT * FROM 2022_$id_verif WHERE MONTH(tgl_laporan) = '$periode' AND laporan = 'Terverifikasi' AND kategori = 'Maintenance Gedung' ");

    $sql4 = $q4;
    while($r4 = mysqli_fetch_array($sql4))
    {
        $d_anggaran4 = $r4['dana_anggaran'];
        $i++;
        $total_anggaran4[$i] = $d_anggaran4;

        $hasil_anggaran4 = array_sum($total_anggaran4);

        $d_terpakai4 = $r4['dana_terpakai'];
        $total_terpakai4[$i] = $d_terpakai4;

        $hasil_terpakai4 = array_sum($total_terpakai4);
    }

    // maintenance aset
    $q5  = mysqli_query($conn, "SELECT * FROM 2022_$id_verif WHERE MONTH(tgl_laporan) = '$periode' AND laporan = 'Terverifikasi' AND kategori  = 'Maintenance Aset' ");

    $sql5 = $q5;
    while($r5 = mysqli_fetch_array($sql5))
    {
        $d_anggaran5 = $r5['dana_anggaran'];
        $i++;
        $total_anggaran5[$i] = $d_anggaran5;

        $hasil_anggaran5 = array_sum($total_anggaran5);

        $d_terpakai5 = $r5['dana_terpakai'];
        $total_terpakai5[$i] = $d_terpakai5;

        $hasil_terpakai5 = array_sum($total_terpakai5);
    }


} else {
    // dan lain lain nya
    $q2  = mysqli_query($conn, "SELECT * FROM 2022_$id_verif WHERE MONTH(tgl_laporan) = '$periode' AND laporan = 'Terverifikasi' AND cabang = 'Tajur' ");

    $sql2 = $q2;
    while($r2 = mysqli_fetch_array($sql2))
    {
        $d_anggaran2 = $r2['dana_anggaran'];
        $i++;
        $total_anggaran2[$i] = $d_anggaran2;

        $hasil_anggaran2 = array_sum($total_anggaran2);

        $d_terpakai2 = $r2['dana_terpakai'];
        $total_terpakai2[$i] = $d_terpakai2;

        $hasil_terpakai2 = array_sum($total_terpakai2);
    }

    // dan lain lain nya
    $q3  = mysqli_query($conn, "SELECT * FROM 2022_$id_verif WHERE MONTH(tgl_laporan) = '$periode' AND laporan = 'Terverifikasi' AND cabang = 'Bogor' ");

    $sql3 = $q3;
    while($r3 = mysqli_fetch_array($sql3))
    {
        $d_anggaran3 = $r3['dana_anggaran'];
        $i++;
        $total_anggaran3[$i] = $d_anggaran3;

        $hasil_anggaran3 = array_sum($total_anggaran3);

        $d_terpakai3 = $r3['dana_terpakai'];
        $total_terpakai3[$i] = $d_terpakai3;

        $hasil_terpakai3 = array_sum($total_terpakai3);
    }
}



// cek nama
$c_query = mysqli_query($conn, "SELECT bulan FROM 2022_data_$id_verif WHERE bulan = '$bulan' ");

// sub cabang kategori
if ($id_verif == "aset_yayasan") {
    if ($cabang == "Tajur") {
        if ($jenis == 'Pembangunan') {
            if (mysqli_fetch_assoc($c_query)) {
                $tes = mysqli_query($conn, "UPDATE `2022_data_$id_verif` SET 
                    `anggaran_pembangunan_tajur`    ='$hasil_anggaran2',
                    `terpakai_pembangunan_tajur`    ='$hasil_terpakai2',
                    `anggaran_pembangunan`          ='$hasil_anggaran4',
                    `terpakai_pembangunan`          ='$hasil_terpakai4',
                    `anggaran_global`               ='$hasil_anggaran',
                    `terpakai_global`               ='$hasil_terpakai'
                    WHERE bulan = '$bulan' ");
                }
        
        } elseif ($jenis == 'Pembelian Barang') {
            if (mysqli_fetch_assoc($c_query)) {
                mysqli_query($conn, "UPDATE `2022_data_$id_verif` SET 
                `anggaran_pembelian_tajur`  ='$hasil_anggaran3',
                `terpakai_pembelian_tajur`  ='$hasil_terpakai3',
                `anggaran_pembelian`        ='$hasil_anggaran5',
                `terpakai_pembelian`        ='$hasil_terpakai5',
                `anggaran_global`           ='$hasil_anggaran',
                `terpakai_global`           ='$hasil_terpakai'
                WHERE bulan = '$bulan' ");   
            }
    
        }
    } else {
        if ($jenis == 'Pembangunan') {
            if (mysqli_fetch_assoc($c_query)) {
                $tes = mysqli_query($conn, "UPDATE `2022_data_$id_verif` SET 
                    `anggaran_pembangunan_bogor`    ='$hasil_anggaran2',
                    `terpakai_pembangunan_bogor`    ='$hasil_terpakai2',
                    `anggaran_pembangunan`          ='$hasil_anggaran4',
                    `terpakai_pembangunan`          ='$hasil_terpakai4',
                    `anggaran_global`               ='$hasil_anggaran',
                    `terpakai_global`               ='$hasil_terpakai'
                    WHERE bulan = '$bulan' ");
                }
        
        } elseif ($jenis == 'Pembelian Barang') {
            if (mysqli_fetch_assoc($c_query)) {
                mysqli_query($conn, "UPDATE `2022_data_$id_verif` SET 
                `anggaran_pembelian_bogor`  ='$hasil_anggaran3',
                `terpakai_pembelian_bogor`  ='$hasil_terpakai3',
                `anggaran_pembelian`        ='$hasil_anggaran5',
                `terpakai_pembelian`        ='$hasil_terpakai5',
                `anggaran_global`           ='$hasil_anggaran',
                `terpakai_global`           ='$hasil_terpakai'
                WHERE bulan = '$bulan' ");   
            }
    
        }
    }
    
    
} elseif ($id_verif == "maintenance") {
    if ($cabang == "Tajur") {
        if ($kategori == 'Maintenance Gedung') {
            if (mysqli_fetch_assoc($c_query)) {
                mysqli_query($conn, "UPDATE `2022_data_$id_verif` SET 
                `anggaran_{$id_verif}_gedung_tajur`    ='$hasil_anggaran2',
                `terpakai_{$id_verif}_gedung_tajur`    ='$hasil_terpakai2',
                `anggaran_{$id_verif}_gedung`    ='$hasil_anggaran4',
                `terpakai_{$id_verif}_gedung`    ='$hasil_terpakai4',
                `anggaran_global`               ='$hasil_anggaran',
                `terpakai_global`               ='$hasil_terpakai'
                WHERE bulan = '$bulan' ");
            }
            
        } else {
            if (mysqli_fetch_assoc($c_query)) {
                mysqli_query($conn, "UPDATE `2022_data_$id_verif` SET 
                `anggaran_{$id_verif}_aset_tajur`    ='$hasil_anggaran3',
                `terpakai_{$id_verif}_aset_tajur`    ='$hasil_terpakai3',
                `anggaran_{$id_verif}_aset`    ='$hasil_anggaran5',
                `terpakai_{$id_verif}_aset`    ='$hasil_terpakai5',
                `anggaran_global`               ='$hasil_anggaran',
                `terpakai_global`               ='$hasil_terpakai'
                WHERE bulan = '$bulan' ");   
            }
        }
    } else {
        if ($kategori == 'Maintenance Gedung') {
            if (mysqli_fetch_assoc($c_query)) {
                mysqli_query($conn, "UPDATE `2022_data_$id_verif` SET 
                `anggaran_{$id_verif}_gedung_bogor`    ='$hasil_anggaran2',
                `terpakai_{$id_verif}_gedung_bogor`    ='$hasil_terpakai2',
                `anggaran_{$id_verif}_gedung`    ='$hasil_anggaran4',
                `terpakai_{$id_verif}_gedung`    ='$hasil_terpakai4',
                `anggaran_global`               ='$hasil_anggaran',
                `terpakai_global`               ='$hasil_terpakai'
                WHERE bulan = '$bulan' ");
            }
            
        } else {
            if (mysqli_fetch_assoc($c_query)) {
                mysqli_query($conn, "UPDATE `2022_data_$id_verif` SET 
                `anggaran_{$id_verif}_aset_bogor`    ='$hasil_anggaran3',
                `terpakai_{$id_verif}_aset_bogor`    ='$hasil_terpakai3',
                `anggaran_{$id_verif}_aset`    ='$hasil_anggaran5',
                `terpakai_{$id_verif}_aset`    ='$hasil_terpakai5',
                `anggaran_global`               ='$hasil_anggaran',
                `terpakai_global`               ='$hasil_terpakai'
                WHERE bulan = '$bulan' ");   
            }
        }
    }
    

} else {
    if ($id_pengurus == 'kepala_income' && $cabang == 'Tajur') {
        if (mysqli_fetch_assoc($c_query)) {
            mysqli_query($conn, "UPDATE `2022_data_$id_verif` SET 
            `anggaran_{$id_verif}_tajur`    ='$hasil_anggaran2',
            `terpakai_{$id_verif}_tajur`    ='$hasil_terpakai2',
            `anggaran_global`               ='$hasil_anggaran',
            `terpakai_global`               ='$hasil_terpakai'
            WHERE bulan = '$bulan' ");
        }
        
    } else {
        if (mysqli_fetch_assoc($c_query)) {
            mysqli_query($conn, "UPDATE `2022_data_$id_verif` SET 
            `anggaran_{$id_verif}_bogor`    ='$hasil_anggaran3',
            `terpakai_{$id_verif}_bogor`    ='$hasil_terpakai3',
            `anggaran_global`               ='$hasil_anggaran',
            `terpakai_global`               ='$hasil_terpakai'
            WHERE bulan = '$bulan' ");   
        }
    }
}
    
    

// die(var_dump($update));
if ($update == false ) {
    if ($id_verif == "aset_yayasan") {
        echo "<script>
        alert('Data Tidak Berhasil Dikonfirmasi');
        document.location.href = '../../admin/$_SESSION[username].php?id_checklist=checklist_laporanAset';
        </script>";

    } elseif ($id_verif == "uang_makan") {
        echo "<script>
        alert('Data Tidak Berhasil Dikonfirmasi');
        document.location.href = '../../admin/$_SESSION[username].php?id_checklist=checklist_laporanUangmakan';
        </script>";

    } elseif ($id_verif == "gaji_karyawan") {
        echo "<script>
        alert('Data Tidak Berhasil Dikonfirmasi');
        document.location.href = '../../admin/$_SESSION[username].php?id_checklist=checklist_laporanGajikaryawan';
        </script>";

    } elseif ($id_verif == "maintenance") {
        echo "<script>
        alert('Data Tidak Berhasil Dikonfirmasi');
        document.location.href = '../../admin/$_SESSION[username].php?id_checklist=checklist_laporanMaintenance';
        </script>";

    } elseif ($id_verif == "operasional_yayasan") {
        echo "<script>
        alert('Data Tidak Berhasil Dikonfirmasi');
        document.location.href = '../../admin/$_SESSION[username].php?id_checklist=checklist_laporanOperasional';
        </script>";

    } else {
        echo "<script>
        alert('Data Tidak Berhasil Dikonfirmasi');
        document.location.href = '../../admin/$_SESSION[username].php?id_checklist=checklist_laporanAnggaranlain';
        </script>";
    }
    
} else {
    if ($id_verif == "aset_yayasan") {
        echo "<script>
        alert('Data Laporan Berhasil Dikonfirmasi');
        document.location.href = '../../admin/$_SESSION[username].php?id_checklist=checklist_laporanAset';
        </script>";
        
    } elseif ($id_verif == "uang_makan") {
        echo "<script>
        alert('Data Laporan Berhasil Dikonfirmasi');
        document.location.href = '../../admin/$_SESSION[username].php?id_checklist=checklist_laporanUangmakan';
        </script>";

    } elseif ($id_verif == "gaji_karyawan") {
        echo "<script>
        alert('Data Laporan Berhasil Dikonfirmasi');
        document.location.href = '../../admin/$_SESSION[username].php?id_checklist=checklist_laporanGajikaryawan';
        </script>";

    } elseif ($id_verif == "maintenance") {
        echo "<script>
        alert('Data Laporan Berhasil Dikonfirmasi');
        document.location.href = '../../admin/$_SESSION[username].php?id_checklist=checklist_laporanMaintenance';
        </script>";

    } elseif ($id_verif == "operasional_yayasan") {
        echo "<script>
        alert('Data Laporan Berhasil Dikonfirmasi');
        document.location.href = '../../admin/$_SESSION[username].php?id_checklist=checklist_laporanOperasional';
        </script>";

    } else {
        echo "<script>
        alert('Data Laporan Berhasil Dikonfirmasi');
        document.location.href = '../../admin/$_SESSION[username].php?id_checklist=checklist_laporanAnggaranlain';
        </script>";
    }

}


?>