<?php 
if ($id_management == "aset_yayasan") {
    $q = mysqli_query($conn, "SELECT * FROM 2022_data_$id_management");
    $i = 1;
    $sql = $q;
    while($r = mysqli_fetch_array($sql))
        {
            $i++;   
            $d_anggaran1 = $r['anggaran_pembangunan'];
            $total_anggaran1[$i] = $d_anggaran1;

            $hasil_anggaran1 = array_sum($total_anggaran1);

            $d_terpakai1 = $r['terpakai_pembangunan'];
            $total_terpakai1[$i] = $d_terpakai1;

            $hasil_terpakai1 = array_sum($total_terpakai1);

            $cashback1   = $hasil_anggaran1 - $hasil_terpakai1;

            $d_anggaran2 = $r['anggaran_pembelian'];
            $total_anggaran2[$i] = $d_anggaran2;

            $hasil_anggaran2 = array_sum($total_anggaran2);

            $d_terpakai2 = $r['terpakai_pembelian'];
            $total_terpakai2[$i] = $d_terpakai2;

            $hasil_terpakai2 = array_sum($total_terpakai2);

            $cashback2   = $hasil_anggaran2 - $hasil_terpakai2;

            $d_anggaran = $r['anggaran_global'];
            $total_anggaran[$i] = $d_anggaran;

            $hasil_anggaran = array_sum($total_anggaran);

            $d_terpakai = $r['terpakai_global'];
            $total_terpakai[$i] = $d_terpakai;

            $hasil_terpakai = array_sum($total_terpakai);

            $cashback   = $hasil_anggaran - $hasil_terpakai;
        }
} else {
    $q = mysqli_query($conn, "SELECT * FROM 2022_data_$id_management");
    $i = 1;
    $sql = $q;
    while($r = mysqli_fetch_array($sql))
        {
            $i++;   
            $d_anggaran = $r['anggaran_global'];
            $total_anggaran[$i] = $d_anggaran;

            $hasil_anggaran = array_sum($total_anggaran);

            $d_terpakai = $r['terpakai_global'];
            $total_terpakai[$i] = $d_terpakai;

            $hasil_terpakai = array_sum($total_terpakai);

            $cashback   = $hasil_anggaran - $hasil_terpakai;
        }
}

?>

<div class="card-body">
    <h5 class="card-title">GRAFIK <?= strtoupper($judul) ?></h5>
    <div class="row">
        <?php if ($id_management == "aset_yayasan") { ?>
        <!-- Card -->
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card sales-card">
                <div class="card-body">
                    <h5 class="card-title">Anggaran <span>| Pembangunan</span></h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-graph-up"></i>
                        </div>
                        <div class="ps-3">
                            <h6>Rp. <?= number_format($hasil_anggaran1,0,"." , ".") ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Card -->

        <!-- Card -->
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card revenue-card">
                <div class="card-body">
                    <h5 class="card-title">Terpakai <span>| Pembangunan</span></h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-graph-down"></i>
                        </div>
                        <div class="ps-3">
                            <h6>Rp. <?= number_format($hasil_terpakai1,0,"." , ".") ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Card -->

        <!-- Card -->
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card customers-card">
                <div class="card-body">
                    <h5 class="card-title">Cashback <span>| Pembangunan</span></h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-cash-coin"></i>
                        </div>
                        <div class="ps-3">
                            <h6>Rp. <?= number_format($cashback1,0,"." , ".") ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Card -->

        <!-- Card -->
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card sales-card">
                <div class="card-body">
                    <h5 class="card-title">Anggaran <span>| Pembelian Barang</span></h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-graph-up"></i>
                        </div>
                        <div class="ps-3">
                            <h6>Rp. <?= number_format($hasil_anggaran2,0,"." , ".") ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Card -->

        <!-- Card -->
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card revenue-card">
                <div class="card-body">
                    <h5 class="card-title">Terpakai <span>| Pembelian Barang</span></h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-graph-down"></i>
                        </div>
                        <div class="ps-3">
                            <h6>Rp. <?= number_format($hasil_terpakai2,0,"." , ".") ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Card -->

        <!-- Card -->
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card customers-card">
                <div class="card-body">
                    <h5 class="card-title">Cashback <span>| Pembelian Barang</span></h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-cash-coin"></i>
                        </div>
                        <div class="ps-3">
                            <h6>Rp. <?= number_format($cashback2,0,"." , ".") ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Card -->
        <?php } ?>

        <!-- Card -->
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card sales-card">
                <div class="card-body">
                    <h5 class="card-title">Anggaran <span>| Global</span></h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-graph-up"></i>
                        </div>
                        <div class="ps-3">
                            <h6>Rp. <?= number_format($hasil_anggaran,0,"." , ".") ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Card -->

        <!-- Card -->
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card revenue-card">
                <div class="card-body">
                    <h5 class="card-title">Terpakai <span>| Global</span></h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-graph-down"></i>
                        </div>
                        <div class="ps-3">
                            <h6>Rp. <?= number_format($hasil_terpakai,0,"." , ".") ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Card -->

        <!-- Card -->
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card customers-card">
                <div class="card-body">
                    <h5 class="card-title">Cashback <span>| Global</span></h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-cash-coin"></i>
                        </div>
                        <div class="ps-3">
                            <h6>Rp. <?= number_format($cashback,0,"." , ".") ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Card -->

    </div>

    <!-- Bar Chart -->
    <h5 class="card-title text-center"><?= strtoupper($judul) ?></h5>
    <div class="chart-bar">
        <canvas id="chartBar_global_<?= $id_management ?>"></canvas>
    </div>

    <?php if ($id_management == "aset_yayasan") { ?>
    <div class="row mt-5">
        <div class="col-xl-6 col-md-12">
            <div class="card">
                <h5 class="card-title text-center">PEMBELIAN BARANG</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_pembelian_<?= $id_management ?>"></canvas>
                </div>
            </div>
        </div>

        <div class="col-xl-6 col-md-12">
            <div class="card">
                <h5 class="card-title text-center">PEMBANGUNAN</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_pembangunan_<?= $id_management ?>"></canvas>
                </div>
            </div>
        </div>
    </div>
    <?php } ?>
    <!-- End Bar Chart -->
</div>