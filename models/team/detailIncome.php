<?php
    $bulan      = date("Y-m-d");
    $bln        = substr($bulan, 5,-3);

    $hariIni = date('y-m-d');
    $bulanIni = substr($hariIni, 3, -3);
    if ($bulanIni <= $_GET["id_periode"]) {
        $tanggalIni = substr($hariIni, 6);
    }

    $i = 1;
    
    $kemarin = $tanggalIni - 1;

    // fb tajur
    // Kemarin
    $qfpKemarin   = mysqli_query($conn, "SELECT * FROM income_media WHERE team = 'Facebook Tajur' AND MONTH(tanggal_tf)= '$_GET[id_periode]' AND DAY(tanggal_tf) = '$kemarin' AND status = 'OK'");
    
    while ($ifpKemarin = mysqli_fetch_array($qfpKemarin)) {
        $i++;
        $incfpKemarin      = $ifpKemarin["jumlah_tf"];
        $totfpKemarin[$i]  = $incfpKemarin;
        $hifpKemarin       = array_sum($totfpKemarin);

    }
    // Hari ini
    $qfpHariIni   = mysqli_query($conn, "SELECT * FROM income_media WHERE team = 'Facebook Tajur' AND MONTH(tanggal_tf)= '$_GET[id_periode]' AND DAY(tanggal_tf) = '$tanggalIni' AND status = 'OK'");
    
    while ($ifpHariIni = mysqli_fetch_array($qfpHariIni)) {
        $i++;
        $incfpHariIni      = $ifpHariIni["jumlah_tf"];
        $totfpHariIni[$i]  = $incfpHariIni;
        $hifpHariIni       = array_sum($totfpHariIni);
    }

    // perbulan
    $qfpBulan   = mysqli_query($conn, "SELECT * FROM income_media WHERE team = 'Facebook Tajur' AND MONTH(tanggal_tf)= '$_GET[id_periode]' AND status = 'OK'");
    
    while ($ifpBulan = mysqli_fetch_array($qfpBulan)) {
        $i++;
        $incfpBulan      = $ifpBulan["jumlah_tf"];
        $totfpBulan[$i]  = $incfpBulan;
        $hifpBulan       = array_sum($totfpBulan);
    }

    $qfp   = mysqli_query($conn, "SELECT * FROM income_media WHERE team = 'Facebook Tajur' AND status = 'OK'");
    
    while ($ifp = mysqli_fetch_array($qfp)) {
        $i++;
        $incfp      = $ifp["jumlah_tf"];
        $totfp[$i]  = $incfp;
        $hifp       = array_sum($totfp);
    }

    // ========================================================================================================================================= //

    // fb bogor
    // Kemarin
    $qftKemarin   = mysqli_query($conn, "SELECT * FROM income_media WHERE team = 'Facebook Bogor' AND MONTH(tanggal_tf)= '$_GET[id_periode]' AND DAY(tanggal_tf) = '$kemarin' AND status = 'OK'");
    
    while ($iftKemarin = mysqli_fetch_array($qftKemarin)) {
        $i++;
        $incftKemarin      = $iftKemarin["jumlah_tf"];
        $totftKemarin[$i]  = $incftKemarin;
        $hiftKemarin       = array_sum($totftKemarin);
    }

    // Hari ini
    $qftHariIni   = mysqli_query($conn, "SELECT * FROM income_media WHERE team = 'Facebook Bogor' AND MONTH(tanggal_tf)= '$_GET[id_periode]' AND DAY(tanggal_tf) = '$tanggalIni' AND status = 'OK'");
    
    while ($iftHariIni = mysqli_fetch_array($qftHariIni)) {
        $i++;
        $incftHariIni      = $iftHariIni["jumlah_tf"];
        $totftHariIni[$i]  = $incftHariIni;
        $hiftHariIni       = array_sum($totftHariIni);
    }

    // bulan ini
    $qftBulan   = mysqli_query($conn, "SELECT * FROM income_media WHERE team = 'Facebook Bogor' AND MONTH(tanggal_tf)= '$_GET[id_periode]' AND status = 'OK'");

    while ($iftBulan = mysqli_fetch_array($qftBulan)) {
        $i++;
        $incftBulan      = $iftBulan["jumlah_tf"];
        $totftBulan[$i]  = $incftBulan;
        $hiftBulan       = array_sum($totftBulan);

    }

    // tahun ini
    $qft   = mysqli_query($conn, "SELECT * FROM income_media WHERE team = 'Facebook Bogor' AND status = 'OK'");

    while ($ift = mysqli_fetch_array($qft)) {
        $i++;
        $incft      = $ift["jumlah_tf"];
        $totft[$i]  = $incft;
        $hift       = array_sum($totft);

    }
    
?>

<div class="row pt-4">

    <?php
    include 'teamPeriode.php';
?>

    <div class="income-tim">
        <span class="detail-box">
            <span class="kotak bg-secondary"></span>
            <span class="text-box">Kemarin</span>
            <span class="kotak bg-hariIni"></span>
            <span class="text-box">Hari Ini</span>
            <span class="kotak bg-danger"></span>
            <span class="text-box">Bulan Ini</span>
            <br>
            <span class="kotak bg-success"></span>
            <span class="text-box">Tahun Ini</span>
            <span class="kotak bg-arrow-right"><i class="bi bi-arrow-right"></i></span>
            <span class="text-box">Lihat Detail</span>
        </span>
    </div>

    <?php if ($_GET['id_table'] == "") { ?>

    <div class="col-xxl-6 col-md-6">
        <div class="card info-card revenue-card">
            <div class="card-body">
                <h5 class="card-title">
                    FACEBOOK TAJUR
                </h5>

                <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                        <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                        <?php if ($_GET["id_periode"] == "") { ?>

                        <?php } elseif ($_GET["id_periode"] == $bln) { ?>
                        <h6 class="text-secondary">
                            Rp. <?= number_format($hifpKemarin, 0,"." , "."); ?>
                            <span data-bs-toggle="tooltip" data-bs-placement="right" title="Kemarin">
                                <?php if (
                                    $_SESSION["id_pengurus"] == "ketua_yayasan" ||
                                    $_SESSION["id_pengurus"] == "management_keuangan" ||
                                    $_SESSION["id_pengurus"] == "kepala_income" ||
                                    $_SESSION["username"] == "leader_fb"
                                    ) { ?>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_periode=<?= $_GET["id_periode"]; ?>&id_date=<?= $kemarin; ?>&id_table=fbTajur"><i
                                        class="bi bi-arrow-right"></i></a>
                                <?php } ?>
                            </span>
                        </h6>
                        <h6>
                            Rp. <?= number_format($hifpHariIni, 0,"." , "."); ?>
                            <span data-bs-toggle="tooltip" data-bs-placement="right" title="Hari Ini">
                                <?php if (
                                    $_SESSION["id_pengurus"] == "ketua_yayasan" ||
                                    $_SESSION["id_pengurus"] == "management_keuangan" ||
                                    $_SESSION["id_pengurus"] == "kepala_income" ||
                                    $_SESSION["username"] == "leader_fb"
                                ) { ?>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_periode=<?= $_GET["id_periode"]; ?>&id_date=<?= $tanggalIni; ?>&id_table=fbTajur"><i
                                        class="bi bi-arrow-right"></i></a>
                                <?php } ?>
                            </span>
                        </h6>
                        <h6 class="text-danger">
                            Rp. <?= number_format($hifpBulan, 0,"." , "."); ?>
                            <span data-bs-toggle="tooltip" data-bs-placement="right" title="Bulan Ini">
                                <?php if (
                                    $_SESSION["id_pengurus"] == "ketua_yayasan" ||
                                    $_SESSION["id_pengurus"] == "management_keuangan" ||
                                    $_SESSION["id_pengurus"] == "kepala_income" ||
                                    $_SESSION["username"] == "leader_fb") { ?>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_periode=<?= $_GET['id_periode']; ?>&id_table=fbTajur"><i
                                        class="bi bi-arrow-right"></i></a>
                                <?php } ?>
                            </span>
                        </h6>

                        <?php } else {
                            ?>
                        <?php if ($_GET["id_periode"] < $bln) { ?>
                        <h6 class="text-danger">
                            Rp. <?= number_format($hifpBulan, 0,"." , "."); ?>
                            <span data-bs-toggle="tooltip" data-bs-placement="right" title="Bulan Ini">
                                <?php if (
                                    $_SESSION["id_pengurus"] == "ketua_yayasan" ||
                                    $_SESSION["id_pengurus"] == "management_keuangan" ||
                                    $_SESSION["id_pengurus"] == "kepala_income" ||
                                    $_SESSION["username"] == "leader_fb") { ?>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_periode=<?= $_GET['id_periode']; ?>&id_table=fbTajur"><i
                                        class="bi bi-arrow-right"></i></a>
                                <?php } ?>
                            </span>
                        </h6>
                        <?php } ?>
                        <?php } ?>
                        <h6 class="text-success">
                            Rp. <?= number_format($hifp, 0,"." , "."); ?>
                            <span data-bs-toggle="tooltip" data-bs-placement="right" title="Tahun Ini">
                                <?php if (
                                    $_SESSION["id_pengurus"] == "ketua_yayasan" ||
                                    $_SESSION["id_pengurus"] == "management_keuangan" ||
                                    $_SESSION["id_pengurus"] == "kepala_income" ||
                                    $_SESSION["username"] == "leader_fb") { ?>
                                <a href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_table=fbTajur"><i
                                        class="bi bi-arrow-right"></i></a>
                                <?php } ?>
                            </span>
                        </h6>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xxl-6 col-md-6">
        <div class="card info-card revenue-card">
            <div class="card-body">
                <h5 class="card-title">
                    FACEBOOK BOGOR
                </h5>

                <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                        <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                        <?php if ($_GET["id_periode"] == "") { ?>

                        <?php } elseif ($_GET["id_periode"] == $bln) { ?>
                        <h6 class="text-secondary">
                            Rp. <?= number_format($hiftKemarin, 0,"." , "."); ?>
                            <span data-bs-toggle="tooltip" data-bs-placement="right" title="Kemarin">
                                <?php if (
                                    $_SESSION["id_pengurus"] == "ketua_yayasan" ||
                                    $_SESSION["id_pengurus"] == "management_keuangan" ||
                                    $_SESSION["id_pengurus"] == "kepala_income" ||
                                    $_SESSION["username"] == "leader_2"
                                ) { ?>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_periode=<?= $_GET["id_periode"]; ?>&id_date=<?= $kemarin; ?>&id_table=fbBogor"><i
                                        class="bi bi-arrow-right"></i></a>
                                <?php } ?>
                            </span>
                        </h6>
                        <h6>
                            Rp. <?= number_format($hiftHariIni, 0,"." , "."); ?>
                            <span data-bs-toggle="tooltip" data-bs-placement="right" title="Hari Ini">
                                <?php if (
                                    $_SESSION["id_pengurus"] == "ketua_yayasan" ||
                                    $_SESSION["id_pengurus"] == "management_keuangan" ||
                                    $_SESSION["id_pengurus"] == "kepala_income" ||
                                    $_SESSION["username"] == "leader_2"
                                ) { ?>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_periode=<?= $_GET["id_periode"]; ?>&id_date=<?= $tanggalIni; ?>&id_table=fbBogor"><i
                                        class="bi bi-arrow-right"></i></a>
                                <?php } ?>
                            </span>
                        </h6>
                        <h6 class="text-danger">
                            Rp. <?= number_format($hiftBulan, 0,"." , "."); ?>
                            <span data-bs-toggle="tooltip" data-bs-placement="right" title="Bulan Ini">
                                <?php if (
                                    $_SESSION["id_pengurus"] == "ketua_yayasan" ||
                                    $_SESSION["id_pengurus"] == "management_keuangan" ||
                                    $_SESSION["id_pengurus"] == "kepala_income" ||
                                    $_SESSION["username"] == "leader_2"
                                ) { ?>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_periode=<?= $_GET['id_periode']; ?>&id_table=fbBogor"><i
                                        class="bi bi-arrow-right"></i></a>
                                <?php } ?>
                            </span>
                        </h6>

                        <?php } else { ?>
                        <?php if ($_GET["id_periode"] < $bln) { ?>
                        <h6 class="text-danger">
                            Rp. <?= number_format($hiftBulan, 0,"." , "."); ?>
                            <span data-bs-toggle="tooltip" data-bs-placement="right" title="Bulan Ini">
                                <?php if (
                                    $_SESSION["id_pengurus"] == "ketua_yayasan" ||
                                    $_SESSION["id_pengurus"] == "management_keuangan" ||
                                    $_SESSION["id_pengurus"] == "kepala_income" ||
                                    $_SESSION["username"] == "leader_2"
                                ) { ?>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_periode=<?= $_GET['id_periode']; ?>&id_table=fbBogor"><i
                                        class="bi bi-arrow-right"></i></a>
                                <?php } ?>
                            </span>
                        </h6>
                        <?php } ?>
                        <?php } ?>
                        <h6 class="text-success">
                            Rp. <?= number_format($hift, 0,"." , "."); ?>
                            <span data-bs-toggle="tooltip" data-bs-placement="right" title="Tahun Ini">
                                <?php if (
                                    $_SESSION["id_pengurus"] == "ketua_yayasan" ||
                                    $_SESSION["id_pengurus"] == "management_keuangan" ||
                                    $_SESSION["id_pengurus"] == "kepala_income" ||
                                    $_SESSION["username"] == "leader_2"
                                ) { ?>
                                <a href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_table=fbBogor"><i
                                        class="bi bi-arrow-right"></i></a>
                                <?php } ?>
                            </span>
                        </h6>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php } else {
        if ($_GET["id_table"] == "fbTajur") {
            $team = 'Facebook Tajur';
        } else {
            $team = 'Facebook Bogor';
        }

        $qInTeam = mysqli_query($conn, "SELECT * FROM income_media WHERE MONTH(tanggal_tf) = '$_GET[id_periode]' AND status = 'OK'");
        $dInTeam = mysqli_fetch_assoc($qInTeam);
        $bInTeam = convertDateDBtoIndo($dInTeam["tanggal_tf"]);

        $inTeamT = substr($bInTeam, 3, -5);
        
        ?>
    <div class="table-responsive">

        <?php if ($_GET["id_periode"] == "") { ?>
        <h5 class="card-title text-center">Team <?= $team; ?> 2022 ( Per Tahun)</h5>

        <?php } else { ?>
        <?php if ($_GET["id_date"] == "") { ?>
        <h5 class="card-title text-center">Team <?= $team; ?> <?= $inTeamT; ?> (Per Bulan)</h5>

        <?php } else { ?>
        <?php if ($tanggalIni == $_GET["id_date"]) { ?>
        <h5 class="card-title text-center">Team <?= $team; ?> <?= $tanggalIni; ?> <?= $inTeamT; ?> (Hari ini)</h5>

        <?php } elseif ($kemarin == $tanggalIni - 1) { ?>
        <h5 class="card-title text-center">Team <?= $team; ?> <?= $kemarin; ?> <?= $inTeamT; ?> (Kemarin)</h5>

        <?php } else { ?>
        <h5 class="card-title text-center">Tidak ada data</h5>
        <?php } ?>

        <?php } ?>
        <?php } ?>

        <?php if ($_GET["id_table"] == true) { ?>
        <div class="row">
            <!-- Card -->
            <?php if ($_GET["id_table"] == "fbTajur") { ?>
            <div class="col-xxl-6 col-md-6">
                <div class="card info-card revenue-card">
                    <div class="card-body">
                        <h5 class="card-title">
                            <a href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_periode=<?= $bulanIni; ?>"
                                class="btn-back"><i class="bi bi-arrow-left-short"></i> Kembali</a>&ensp;
                            FACEBOOK TAJUR
                        </h5>

                        <div class="d-flex align-items-center">
                            <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                <i class="bi bi-currency-dollar"></i>
                            </div>
                            <div class="ps-3">
                                <?php if ($_GET["id_periode"] == "") { ?>

                                <?php } elseif ($_GET["id_periode"] == $bln) { ?>
                                <h6 class="text-secondary">
                                    Rp. <?= number_format($hifpKemarin, 0,"." , "."); ?>
                                    <span data-bs-toggle="tooltip" data-bs-placement="right" title="Kemarin">
                                        <a
                                            href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_periode=<?= $_GET["id_periode"]; ?>&id_date=<?= $kemarin; ?>&id_table=fbTajur"><i
                                                class="bi bi-arrow-right"></i></a>
                                    </span>
                                </h6>
                                <h6>
                                    Rp. <?= number_format($hifpHariIni, 0,"." , "."); ?>
                                    <span data-bs-toggle="tooltip" data-bs-placement="right" title="Hari Ini">
                                        <a
                                            href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_periode=<?= $_GET["id_periode"]; ?>&id_date=<?= $tanggalIni; ?>&id_table=fbTajur"><i
                                                class="bi bi-arrow-right"></i></a>
                                    </span>
                                </h6>
                                <h6 class="text-danger">
                                    Rp. <?= number_format($hifpBulan, 0,"." , "."); ?>
                                    <span data-bs-toggle="tooltip" data-bs-placement="right" title="Bulan Ini">
                                        <a
                                            href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_periode=<?= $_GET['id_periode']; ?>&id_table=fbTajur"><i
                                                class="bi bi-arrow-right"></i></a>
                                    </span>
                                </h6>

                                <?php } else {
                            ?>
                                <?php if ($_GET["id_periode"] < $bln) { ?>
                                <h6 class="text-danger">
                                    Rp. <?= number_format($hifpBulan, 0,"." , "."); ?>
                                    <span data-bs-toggle="tooltip" data-bs-placement="right" title="Bulan Ini">
                                        <a
                                            href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_periode=<?= $_GET['id_periode']; ?>&id_table=fbTajur"><i
                                                class="bi bi-arrow-right"></i></a>
                                    </span>
                                </h6>
                                <?php } ?>
                                <?php } ?>
                                <h6 class="text-success">
                                    Rp. <?= number_format($hifp, 0,"." , "."); ?>
                                    <span data-bs-toggle="tooltip" data-bs-placement="right" title="Tahun Ini">
                                        <a href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_table=fbTajur"><i
                                                class="bi bi-arrow-right"></i></a>
                                    </span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <?php } else { ?>
            <div class="col-xxl-6 col-md-6">
                <div class="card info-card revenue-card">
                    <div class="card-body">
                        <h5 class="card-title">
                            FACEBOOK BOGOR
                        </h5>

                        <div class="d-flex align-items-center">
                            <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                <i class="bi bi-currency-dollar"></i>
                            </div>
                            <div class="ps-3">
                                <?php if ($_GET["id_periode"] == "") { ?>

                                <?php } elseif ($_GET["id_periode"] == $bln) { ?>
                                <h6 class="text-secondary">
                                    Rp. <?= number_format($hiftKemarin, 0,"." , "."); ?>
                                    <span data-bs-toggle="tooltip" data-bs-placement="right" title="Kemarin">
                                        <a
                                            href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_periode=<?= $_GET["id_periode"]; ?>&id_date=<?= $kemarin; ?>&id_table=fbBogor"><i
                                                class="bi bi-arrow-right"></i></a>
                                    </span>
                                </h6>
                                <h6>
                                    Rp. <?= number_format($hiftHariIni, 0,"." , "."); ?>
                                    <span data-bs-toggle="tooltip" data-bs-placement="right" title="Hari Ini">
                                        <a
                                            href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_periode=<?= $_GET["id_periode"]; ?>&id_date=<?= $tanggalIni; ?>&id_table=fbBogor"><i
                                                class="bi bi-arrow-right"></i></a>
                                    </span>
                                </h6>
                                <h6 class="text-danger">
                                    Rp. <?= number_format($hiftBulan, 0,"." , "."); ?>
                                    <span data-bs-toggle="tooltip" data-bs-placement="right" title="Bulan Ini">
                                        <a
                                            href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_periode=<?= $_GET['id_periode']; ?>&id_table=fbBogor"><i
                                                class="bi bi-arrow-right"></i></a>
                                    </span>
                                </h6>

                                <?php } else { ?>
                                <?php if ($_GET["id_periode"] < $bln) { ?>
                                <h6 class="text-danger">
                                    Rp. <?= number_format($hiftBulan, 0,"." , "."); ?>
                                    <span data-bs-toggle="tooltip" data-bs-placement="right" title="Bulan Ini">
                                        <a
                                            href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_periode=<?= $_GET['id_periode']; ?>&id_table=fbBogor"><i
                                                class="bi bi-arrow-right"></i></a>
                                    </span>
                                </h6>
                                <?php } ?>
                                <?php } ?>
                                <h6 class="text-success">
                                    Rp. <?= number_format($hift, 0,"." , "."); ?>
                                    <span data-bs-toggle="tooltip" data-bs-placement="right" title="Tahun Ini">
                                        <a href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia&id_table=fbBogor"><i
                                                class="bi bi-arrow-right"></i></a>
                                    </span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php } ?>

            <!-- End Card -->
        </div>

        <table id="tabel-data_databaseTimIncome" class="table table-bordered table-income">
            <thead>
                <tr style="text-align: center;">
                    <th scope="col">No</th>
                    <th scope="col">Dipegang Oleh</th>
                    <th scope="col">Team</th>
                    <th scope="col">Nama Akun</th>
                    <th scope="col">Cabang</th>
                    <th scope="col">Periode</th>
                    <th scope="col">Nama Donatur</th>
                    <th scope="col">Tanggal Transfer</th>
                    <th scope="col">Bank</th>
                    <th scope="col">Jumlah Income</th>
                </tr>
            </thead>
            <tbody>

            </tbody>
            <tfoot>
                <tr style="text-align: center;">
                    <th colspan="9">Total</th>
                    <th></th>
                </tr>
            </tfoot>
        </table>
        <?php } ?>
    </div>
    <?php } ?>
</div>