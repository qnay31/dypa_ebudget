<?php 
if ($_SESSION["username"] == "leader_2") {
    $pengurus   = mysqli_query($conn, "SELECT * FROM data_akun WHERE id_pengurus = 'facebook_depok' AND team = 'Facebook Bogor' GROUP BY pemegang ORDER BY `pemegang` ASC");

} elseif ($_SESSION["username"] == "leader_fb") {
    $pengurus   = mysqli_query($conn, "SELECT * FROM data_akun WHERE id_pengurus = 'facebook_depok' AND team = 'Facebook Tajur' GROUP BY pemegang ORDER BY `pemegang` ASC");
    
} else {
    $pengurus   = mysqli_query($conn, "SELECT * FROM akun_pengurus WHERE id_pengurus = 'facebook_depok' ORDER BY `nama` ASC");
}
    $nPengurus  = $pengurus->num_rows;
?>
<!-- Card -->
<div class="col-xxl-12">
    <div class="card info-card customers-card">
        <div class="card-body">
            <?php if ($nPengurus > 0) { ?>
            <h5 class="card-title">Data Pengurus & Akun (<?= $nPengurus; ?>)</h5>

            <?php } else { ?>
            <h5 class="card-title">Harap daftarkan tim mu segera!</h5>
            <?php } ?>
            <div class="row">
                <!-- Card -->
                <?php 
                $no = 1;
                while ($data = $pengurus -> fetch_assoc()) { ?>
                <div class="col-xxl-4 col-md-6">
                    <?php if (
                        $_SESSION["username"] == "leader_fb" ||
                        $_SESSION["username"] == "leader_2"
                    ) { ?>
                    <div class="card info-card customers-card">
                        <span class="card1">
                            <div class="card-body">
                                <h5 class="card-title"><?= ucwords($data["pemegang"]) ?>
                                </h5>

                                <div class="d-flex align-items-center">
                                    <div
                                        class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi bi-person"></i>
                                    </div>
                                    <div class="ps-3">
                                        <?php

                                        if ($_SESSION["username"] == "leader_fb") {
                                            $query   = mysqli_query($conn, "SELECT * FROM data_akun WHERE pemegang = '$data[pemegang]' AND team = 'Facebook Tajur' ORDER BY `nama_akun` ASC ");
                                            
                                        } elseif ($_SESSION["username"] == "leader_2") {
                                            $query   = mysqli_query($conn, "SELECT * FROM data_akun WHERE pemegang = '$data[pemegang]' AND team = 'Facebook Bogor' ORDER BY `nama_akun` ASC ");
                                            
                                        } else {
                                            $query   = mysqli_query($conn, "SELECT * FROM data_akun WHERE pemegang = '$data[pemegang]' ORDER BY `nama_akun` ASC ");
                                        }

                                        ?>
                                        <?php
                                        $no = 1;
                                        while ($data2 = mysqli_fetch_array($query)) { ?>
                                        <span class="akun"><b>Akun <?= $no++ ?>:</b>
                                            <span><?= ucwords($data2["nama_akun"]) ?></span>
                                        </span>
                                        <br>

                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                            <div class="go-corner">
                                <div class="go-arrow">
                                    →
                                </div>
                            </div>
                        </span>
                        <div class="incomeMedia">
                            <div class="row">
                                <div class="col-6 bulanan">
                                    <?php
                                        $bulan     = date("Y-m-d");
                                        $bln       = substr($bulan, 5,-3);
                                        $qIncomeBulanan = mysqli_query($conn, "SELECT pemegang, SUM(jumlah_tf) AS total_tf FROM income_media WHERE pemegang = '$data[pemegang]' AND MONTH(tanggal_tf) = '$bln' AND status = 'OK' GROUP BY pemegang ");

                                        $qIncome = mysqli_query($conn, "SELECT pemegang, SUM(jumlah_tf) AS total_tf FROM income_media WHERE pemegang = '$data[pemegang]' AND status = 'OK' GROUP BY pemegang "); ?>

                                    <?php
                                $no = 1;
                                while ($dataIncome = mysqli_fetch_array($qIncomeBulanan)) { 
                                    ?>
                                    <a
                                        href="<?= $_SESSION["username"] ?>.php?id_accountKey=<?= $data['nomor_id'] ?>&id_bulan=<?= $bln ?>">
                                        Bulan Ini : <?= number_format($dataIncome["total_tf"],0,"." , ".") ?> →</a>
                                    <?php } ?>
                                </div>

                                <div class="col-6 tahunan">
                                    <?php
                                $no = 1;
                                while ($dataIncome = mysqli_fetch_array($qIncome)) { 
                                    ?>
                                    <a href="<?= $_SESSION["username"] ?>.php?id_accountKey=<?= $data['nomor_id'] ?>">
                                        Per Tahun : <?= number_format($dataIncome["total_tf"],0,"." , ".") ?> →
                                    </a>
                                    <?php } ?><span class="badge badge-danger badge-counter">New</span>
                                </div>

                            </div>
                        </div>
                    </div>

                    <?php } else { ?>
                    <div class="card info-card customers-card">
                        <span class="card1">
                            <div class="card-body">
                                <h5 class="card-title"><?= ucwords($data["nama"]) ?>
                                </h5>

                                <div class="d-flex align-items-center">
                                    <div
                                        class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi bi-person"></i>
                                    </div>
                                    <div class="ps-3">
                                        <?php
                                            $query   = mysqli_query($conn, "SELECT * FROM data_akun WHERE pemegang = '$data[nama]' ORDER BY `nama_akun` ASC ");
                                        ?>
                                        <?php
                                        $no = 1;
                                        while ($data2 = mysqli_fetch_array($query)) { ?>
                                        <span class="akun"><b>Akun <?= $no++ ?>:</b>
                                            <span><?= ucwords($data2["nama_akun"]) ?></span>
                                        </span>
                                        <br>

                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                            <div class="go-corner">
                                <div class="go-arrow">
                                    →
                                </div>
                            </div>
                        </span>
                        <div class="incomeMedia">
                            <div class="row">
                                <div class="col-6 bulanan">
                                    <?php
                                        $bulan     = date("Y-m-d");
                                        $bln       = substr($bulan, 5,-3);
                                        $qIncomeBulanan = mysqli_query($conn, "SELECT pemegang, SUM(jumlah_tf) AS total_tf FROM income_media WHERE pemegang = '$data[nama]' AND MONTH(tanggal_tf) = '$bln' AND status = 'OK' GROUP BY pemegang ");

                                        $qIncome = mysqli_query($conn, "SELECT pemegang, SUM(jumlah_tf) AS total_tf FROM income_media WHERE pemegang = '$data[nama]' AND status = 'OK' GROUP BY pemegang "); ?>

                                    <?php
                                $no = 1;
                                while ($dataIncome = mysqli_fetch_array($qIncomeBulanan)) { 
                                    ?>
                                    <a
                                        href="<?= $_SESSION["username"] ?>.php?id_accountKey=<?= $data['id'] ?>&id_bulan=<?= $bln ?>">
                                        Bulan Ini : <?= number_format($dataIncome["total_tf"],0,"." , ".") ?> →</a>
                                    <?php } ?>
                                </div>

                                <div class="col-6 tahunan">
                                    <?php
                                $no = 1;
                                while ($dataIncome = mysqli_fetch_array($qIncome)) { 
                                    ?>
                                    <a href="<?= $_SESSION["username"] ?>.php?id_accountKey=<?= $data['id'] ?>">
                                        Per Tahun : <?= number_format($dataIncome["total_tf"],0,"." , ".") ?> →
                                    </a>
                                    <?php } ?><span class="badge badge-danger badge-counter">New</span>
                                </div>

                            </div>
                        </div>
                    </div>

                    <?php } ?>
                </div>
                <?php } ?>
                <!-- End Card -->
            </div>
        </div>
    </div>
</div><!-- End Card -->