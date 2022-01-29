<?php 
$q = mysqli_query($conn, "SELECT * FROM 2022_data_logistik");
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
?>

<div class="card-body">
    <h5 class="card-title">GRAFIK LOGISTIK</h5>
    <div class="row">
        <!-- Card -->
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card sales-card">
                <div class="card-body">
                    <h5 class="card-title">Anggaran <span>| Logistik</span></h5>
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
                    <h5 class="card-title">Terpakai <span>| Logistik</span></h5>
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
                    <h5 class="card-title">Cashback <span>| Logistik</span></h5>
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
    <h5 class="card-title text-center">LOGISTIK GLOBAL</h5>
    <div class="chart-bar">
        <canvas id="chartBar_global_logistik"></canvas>
    </div>
    <!-- End Bar Chart -->
</div>