<?php
    if ($_GET["id_periode"] == "") {
        $bulan      = date("Y-m-d");
        $bln        = substr($bulan, 5,-3);
        $conv       = convertDateDBtoIndo($bulan);
        $sBulan     = substr($conv, 3, -5);

    } else {
        $bln        = $_GET["id_periode"];
        $query      = mysqli_query($conn, "SELECT * FROM income_media WHERE MONTH(tanggal_tf) = '$bln' LIMIT 1");
        $data       = mysqli_fetch_assoc($query);
        $conv       = convertDateDBtoIndo($data["tanggal_tf"]);
        $sBulan     = substr($conv, 3, -5);
    }
    $i = 1;

    if ($_GET["id_periode"] == "") {
            // fb tajur
        $qfpBulan   = mysqli_query($conn, "SELECT data_akun.id_pengurus, data_akun.nama_akun, data_akun.team, income_media.jumlah_tf, income_media.pemegang 
        FROM data_akun JOIN income_media ON income_media.nama_akun = data_akun.nama_akun WHERE data_akun.team = 'Facebook Tajur' AND MONTH(tanggal_tf)= '$bln' AND income_media.status = 'OK'");
        
        while ($ifpBulan = mysqli_fetch_array($qfpBulan)) {
            $i++;
            $incfpBulan      = $ifpBulan["jumlah_tf"];
            $totfpBulan[$i]  = $incfpBulan;
            $hifpBulan       = array_sum($totfpBulan);
        }

        $qfp   = mysqli_query($conn, "SELECT data_akun.id_pengurus, data_akun.nama_akun, data_akun.team, income_media.jumlah_tf, income_media.pemegang 
        FROM data_akun JOIN income_media ON income_media.nama_akun = data_akun.nama_akun WHERE data_akun.team = 'Facebook Tajur' AND income_media.status = 'OK'");
        
        while ($ifp = mysqli_fetch_array($qfp)) {
            $i++;
            $incfp      = $ifp["jumlah_tf"];
            $totfp[$i]  = $incfp;
            $hifp       = array_sum($totfp);
        }

        // fb bogor
        $qftBulan   = mysqli_query($conn, "SELECT data_akun.id_pengurus, data_akun.nama_akun, data_akun.team, income_media.jumlah_tf 
        FROM data_akun JOIN income_media ON income_media.nama_akun = data_akun.nama_akun WHERE data_akun.team = 'Facebook Bogor' AND MONTH(tanggal_tf)= '$bln' AND income_media.status = 'OK'");

        while ($iftBulan = mysqli_fetch_array($qftBulan)) {
            $i++;
            $incftBulan      = $iftBulan["jumlah_tf"];
            $totftBulan[$i]  = $incftBulan;
            $hiftBulan       = array_sum($totftBulan);

        }

        $qft   = mysqli_query($conn, "SELECT data_akun.id_pengurus, data_akun.nama_akun, data_akun.team, income_media.jumlah_tf 
        FROM data_akun JOIN income_media ON income_media.nama_akun = data_akun.nama_akun WHERE data_akun.team = 'Facebook Bogor' AND income_media.status = 'OK'");

        while ($ift = mysqli_fetch_array($qft)) {
            $i++;
            $incft      = $ift["jumlah_tf"];
            $totft[$i]  = $incft;
            $hift       = array_sum($totft);

        }

    } else {
            // fb tajur
        $qfpBulan   = mysqli_query($conn, "SELECT data_akun.id_pengurus, data_akun.nama_akun, data_akun.team, income_media.jumlah_tf, income_media.pemegang 
        FROM data_akun JOIN income_media ON income_media.nama_akun = data_akun.nama_akun WHERE data_akun.team = 'Facebook Tajur' AND MONTH(tanggal_tf)= '$bln' AND income_media.status = 'OK'");
        
        while ($ifpBulan = mysqli_fetch_array($qfpBulan)) {
            $i++;
            $incfpBulan      = $ifpBulan["jumlah_tf"];
            $totfpBulan[$i]  = $incfpBulan;
            $hifpBulan       = array_sum($totfpBulan);
        }

        $qfp   = mysqli_query($conn, "SELECT data_akun.id_pengurus, data_akun.nama_akun, data_akun.team, income_media.jumlah_tf, income_media.pemegang 
        FROM data_akun JOIN income_media ON income_media.nama_akun = data_akun.nama_akun WHERE data_akun.team = 'Facebook Tajur' AND income_media.status = 'OK'");
        
        while ($ifp = mysqli_fetch_array($qfp)) {
            $i++;
            $incfp      = $ifp["jumlah_tf"];
            $totfp[$i]  = $incfp;
            $hifp       = array_sum($totfp);
        }

        // fb bogor
        $qftBulan   = mysqli_query($conn, "SELECT data_akun.id_pengurus, data_akun.nama_akun, data_akun.team, income_media.jumlah_tf 
        FROM data_akun JOIN income_media ON income_media.nama_akun = data_akun.nama_akun WHERE data_akun.team = 'Facebook Bogor' AND MONTH(tanggal_tf)= '$bln' AND income_media.status = 'OK'");

        while ($iftBulan = mysqli_fetch_array($qftBulan)) {
            $i++;
            $incftBulan      = $iftBulan["jumlah_tf"];
            $totftBulan[$i]  = $incftBulan;
            $hiftBulan       = array_sum($totftBulan);

        }

        $qft   = mysqli_query($conn, "SELECT data_akun.id_pengurus, data_akun.nama_akun, data_akun.team, income_media.jumlah_tf 
        FROM data_akun JOIN income_media ON income_media.nama_akun = data_akun.nama_akun WHERE data_akun.team = 'Facebook Bogor' AND income_media.status = 'OK'");

        while ($ift = mysqli_fetch_array($qft)) {
            $i++;
            $incft      = $ift["jumlah_tf"];
            $totft[$i]  = $incft;
            $hift       = array_sum($totft);

        }
    }
    

?>

<div class="row pt-4">

    <?php
    include 'teamPeriode.php';
?>
    <div class="col-xxl-6 col-md-6">
        <div class="card info-card customers-card">
            <div class="card-body">
                <h5 class="card-title">
                    FACEBOOK TAJUR
                </h5>

                <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                        <i class="bi bi-credit-card"></i>
                    </div>
                    <div class="ps-3">
                        <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="<?= $sBulan; ?>">
                            Rp. <?= number_format($hifpBulan, 0,"." , "."); ?> <i class="bi bi-info-circle"></i>
                        </h6>
                        <?php if ($_GET["id_periode"] == "") { ?>
                        <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Tahunan">
                            Rp. <?= number_format($hifp, 0,"." , "."); ?> <i class="bi bi-info-circle"></i>
                        </h6>

                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xxl-6 col-md-6">
        <div class="card info-card customers-card">
            <div class="card-body">
                <h5 class="card-title">
                    FACEBOOK BOGOR
                </h5>

                <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                        <i class="bi bi-credit-card"></i>
                    </div>
                    <div class="ps-3">
                        <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="<?= $sBulan; ?>">
                            Rp. <?= number_format($hiftBulan, 0,"." , "."); ?> <i class="bi bi-info-circle"></i>
                        </h6>
                        <?php if ($_GET["id_periode"] == "") { ?>
                        <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Tahunan">
                            Rp. <?= number_format($hift, 0,"." , "."); ?> <i class="bi bi-info-circle"></i>
                        </h6>

                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>