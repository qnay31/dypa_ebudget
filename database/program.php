<?php

if ($_SESSION["id_pengurus"] == "ketua_yayasan" || $_SESSION["id_pengurus"] == "management_keuangan") {
    if ($_GET["id_periode"] == "") {
        $q  = mysqli_query($conn, "SELECT * FROM 2022_program WHERE laporan = 'Terverifikasi' ORDER BY `tgl_pengajuan` DESC");
        $pProgram = "Global";
        $nums = $q->num_rows;
        
    } else {
        $periode = $_GET["id_periode"];
        $q  = mysqli_query($conn, "SELECT * FROM 2022_program WHERE laporan = 'Terverifikasi' AND MONTH(tgl_pemakaian) = '$periode' ORDER BY `tgl_pengajuan` DESC");
    
        $q2  = mysqli_query($conn, "SELECT * FROM 2022_program WHERE laporan = 'Terverifikasi' AND MONTH(tgl_pemakaian) = '$periode' ORDER BY `tgl_pengajuan` DESC");
        
        $nums = $q->num_rows;
        $data = mysqli_fetch_assoc($q2);
        $convert    = convertDateDBtoIndo($data['tgl_pemakaian']);
        $pProgram     = substr($convert, 2, -5);
    }

} elseif ($_SESSION["id_pengurus"] == "kepala_pengajuan") {
    if ($_GET["id_periode"] == "") {
        $q  = mysqli_query($conn, "SELECT * FROM 2022_program WHERE laporan = 'Terverifikasi' AND cabang = 'Bogor' ORDER BY `tgl_pengajuan` DESC");
        $pProgram = "Global";
        $nums = $q->num_rows;
        
    } else {
        $periode = $_GET["id_periode"];
        $q  = mysqli_query($conn, "SELECT * FROM 2022_program WHERE laporan = 'Terverifikasi' AND MONTH(tgl_pemakaian) = '$periode' AND cabang = 'Bogor' ORDER BY `tgl_pengajuan` DESC");
    
        $q2  = mysqli_query($conn, "SELECT * FROM 2022_program WHERE laporan = 'Terverifikasi' AND MONTH(tgl_pemakaian) = '$periode' AND cabang = 'Bogor' ORDER BY `tgl_pengajuan` DESC");
        
        $nums = $q->num_rows;
        $data = mysqli_fetch_assoc($q2);
        $convert    = convertDateDBtoIndo($data['tgl_pemakaian']);
        $pProgram     = substr($convert, 2, -5);
    }
    
} else {
    if ($_GET["id_periode"] == "") {
        $q  = mysqli_query($conn, "SELECT * FROM 2022_program WHERE laporan = 'Terverifikasi' AND cabang = 'Tajur' ORDER BY `tgl_pengajuan` DESC");
        $pProgram = "Global";
        $nums = $q->num_rows;
        
    } else {
        $periode = $_GET["id_periode"];
        $q  = mysqli_query($conn, "SELECT * FROM 2022_program WHERE laporan = 'Terverifikasi' AND MONTH(tgl_pemakaian) = '$periode' AND cabang = 'Tajur' ORDER BY `tgl_pengajuan` DESC");
    
        $q2  = mysqli_query($conn, "SELECT * FROM 2022_program WHERE laporan = 'Terverifikasi' AND MONTH(tgl_pemakaian) = '$periode' AND cabang = 'Tajur' ORDER BY `tgl_pengajuan` DESC");
        
        $nums = $q->num_rows;
        $data = mysqli_fetch_assoc($q2);
        $convert    = convertDateDBtoIndo($data['tgl_pemakaian']);
        $pProgram     = substr($convert, 2, -5);
    }
}
// die(var_dump($s));
?>

<main id="main" class="main">
    <div class="pagetitle">
        <h1>Database</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= $_SESSION["username"] ?>.php">Dashboard</a></li>
                <li class="breadcrumb-item">Database</li>
                <li class="breadcrumb-item active">Program</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">
            <!-- Left side columns pengajuan-->
            <div class="col-lg-12" id="form-pengajuan">

                <!-- periode -->
                <div class="col-12">
                    <div class="card">
                        <?php include '../models/database/sub-periode.php'; ?>
                    </div>
                </div>

                <!-- Laporan  -->
                <div class="col-12">
                    <?php if ($nums > 0) { ?>
                    <div class="card">
                        <?php include '../models/database/program/sub-program.php'; ?>
                    </div>

                    <?php } else { ?>
                    <div class="card">
                        <h5 class="card-title text-center">
                            Tidak ada data laporan
                        </h5>
                    </div>
                    <?php } ?>
                </div><!-- End Laporan  -->
            </div><!-- End Left side columns -->
        </div>
    </section>
</main><!-- End #main -->