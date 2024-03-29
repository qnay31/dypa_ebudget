<?php if ($_SESSION["id_pengurus"] == "ketua_yayasan") { ?>
<div class="tab-pane fade profile-edit pt-3" id="profile-logistik">

    <?php } else { ?>
    <div class="tab-pane fade show active profile-edit pt-3" id="profile-logistik">
        <?php } ?>
        <section class="section dashboard">
            <div class="row">
                <div class="container">
                    <h5 class="card-title">Pengurus
                        <?php if ($akun_depok > 0) { ?>
                        | <?= $akun_depok ?> Akun
                        <?php } ?>
                    </h5>
                </div>
                <div class="row">
                    <?php
                $no = 1;
                while ($data_AFB_depok = $AFB_depok->fetch_assoc()) { ?>
                    <!-- Card -->
                    <div class="col-xxl-4 col-md-4">
                        <div class="card info-card revenue-card">
                            <div class="card-body bg">
                                <h5 class="card-title">Facebook</h5>
                                <div class="d-flex align-items-center">
                                    <div
                                        class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi bi-person-circle"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6><?= ucwords($data_AFB_depok["nama"]) ?></h6>

                                        <?php
                                $query   = mysqli_query($conn, "SELECT * FROM data_akun WHERE pemegang = '$data_AFB_depok[nama]' ORDER BY `nama_akun` ASC ");
                                ?>

                                        <?php
                                $no = 1;
                                while ($data = mysqli_fetch_array($query)) { ?>
                                        <span class="akun"><b>Akun <?= $no++ ?>:</b>
                                            <span class="akun"><?= ucwords($data["nama_akun"]) ?></span>
                                        </span>
                                        <br>

                                        <?php } ?>

                                    </div>
                                </div>
                            </div>
                            <div class="incomeMedia">
                                <div class="row">
                                    <div class="col-xxl-6 bulanan">
                                        <?php
                                            $bulan     = date("Y-m-d");
                                            $bln       = substr($bulan, 5,-3);
                                            $qIncomeBulanan = mysqli_query($conn, "SELECT pemegang, SUM(jumlah_tf) AS total_tf FROM income_media WHERE pemegang = '$data_AFB_depok[nama]' AND MONTH(tanggal_tf) = '$bln' AND status = 'OK' GROUP BY pemegang ");

                                            $qIncome = mysqli_query($conn, "SELECT pemegang, SUM(jumlah_tf) AS total_tf FROM income_media WHERE pemegang = '$data_AFB_depok[nama]' AND status = 'OK' GROUP BY pemegang "); ?>

                                        <?php
                                            $no = 1;
                                            while ($data = mysqli_fetch_array($qIncomeBulanan)) { 
                                                ?>
                                        <a
                                            href="<?= $_SESSION["username"] ?>.php?id_accountKey=<?= $data_AFB_depok["id"] ?>&id_bulan=<?= $bln; ?>&idLaporan=Akun">
                                            Bulan Ini : <?= number_format($data["total_tf"],0,"." , ".") ?></a>
                                        <?php } ?>
                                    </div>



                                    <div class="col-xxl-6 tahunan">
                                        <?php
                                            $no = 1;
                                            while ($data = mysqli_fetch_array($qIncome)) { 
                                                ?>
                                        <a
                                            href="<?= $_SESSION["username"] ?>.php?id_accountKey=<?= $data_AFB_depok["id"] ?>">Per
                                            Tahun : <?= number_format($data["total_tf"],0,"." , ".") ?></a>
                                        <?php } ?>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div><!-- End Card -->
                    <?php } ?>
                </div>
        </section>
    </div>