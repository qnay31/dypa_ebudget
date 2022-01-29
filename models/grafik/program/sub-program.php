<?php 
$q = mysqli_query($conn, "SELECT * FROM 2022_data_program");
$i = 1;
$sql = $q;
while($r = mysqli_fetch_array($sql))
    {
        $i++;   
        $d_anggaran = $r['anggaran_pendidikan'];
        $total_anggaran[$i] = $d_anggaran;

        $hasil_anggaran = array_sum($total_anggaran);

        $d_terpakai = $r['terpakai_pendidikan'];
        $total_terpakai[$i] = $d_terpakai;

        $hasil_terpakai = array_sum($total_terpakai);

        $cashback   = $hasil_anggaran - $hasil_terpakai;

        $d_anggaran2 = $r['anggaran_kesehatan'];
        $total_anggaran2[$i] = $d_anggaran2;

        $hasil_anggaran2 = array_sum($total_anggaran2);

        $d_terpakai2 = $r['terpakai_kesehatan'];
        $total_terpakai2[$i] = $d_terpakai2;

        $hasil_terpakai2 = array_sum($total_terpakai2);

        $cashback2   = $hasil_anggaran2 - $hasil_terpakai2;

        $d_anggaran3 = $r['anggaran_program_depok'];
        $total_anggaran3[$i] = $d_anggaran3;

        $hasil_anggaran3 = array_sum($total_anggaran3);

        $d_terpakai3 = $r['terpakai_program_depok'];
        $total_terpakai3[$i] = $d_terpakai3;

        $hasil_terpakai3 = array_sum($total_terpakai3);

        $cashback3   = $hasil_anggaran3 - $hasil_terpakai3;

        $d_anggaran4 = $r['anggaran_global'];
        $total_anggaran4[$i] = $d_anggaran4;

        $hasil_anggaran4 = array_sum($total_anggaran4);

        $d_terpakai4 = $r['terpakai_global'];
        $total_terpakai4[$i] = $d_terpakai4;

        $hasil_terpakai4 = array_sum($total_terpakai4);

        $cashback4   = $hasil_anggaran4 - $hasil_terpakai4;

    }
?>
<div class="card-body">
    <h5 class="card-title">GRAFIK PROGRAM</h5>

    <div class="row">
        <!-- Card -->
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card sales-card">
                <div class="card-body">
                    <h5 class="card-title">Anggaran <span>| Pendidikan</span></h5>
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
                    <h5 class="card-title">Terpakai <span>| Pendidikan</span></h5>
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
                    <h5 class="card-title">Cashback <span>| Pendidikan</span></h5>
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

        <!-- Card -->
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card sales-card">
                <div class="card-body">
                    <h5 class="card-title">Anggaran <span>| Kesehatan</span></h5>
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
                    <h5 class="card-title">Terpakai <span>| Kesehatan</span></h5>
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
                    <h5 class="card-title">Cashback <span>| Kesehatan</span></h5>
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

        <!-- Card -->
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card sales-card">
                <div class="card-body">
                    <h5 class="card-title">Anggaran <span>| Non Pend & Kshtan</span></h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-graph-up"></i>
                        </div>
                        <div class="ps-3">
                            <h6>Rp. <?= number_format($hasil_anggaran3,0,"." , ".") ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Card -->

        <!-- Card -->
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card revenue-card">
                <div class="card-body">
                    <h5 class="card-title">Terpakai <span>| Non Pend & Kshtan</span></h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-graph-down"></i>
                        </div>
                        <div class="ps-3">
                            <h6>Rp. <?= number_format($hasil_terpakai3,0,"." , ".") ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Card -->

        <!-- Card -->
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card customers-card">
                <div class="card-body">
                    <h5 class="card-title">Cashback <span>| Non Pend & Kshtan</span></h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-cash-coin"></i>
                        </div>
                        <div class="ps-3">
                            <h6>Rp. <?= number_format($cashback3,0,"." , ".") ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Card -->

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
                            <h6>Rp. <?= number_format($hasil_anggaran4,0,"." , ".") ?></h6>
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
                            <h6>Rp. <?= number_format($hasil_terpakai4,0,"." , ".") ?></h6>
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
                            <h6>Rp. <?= number_format($cashback4,0,"." , ".") ?></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Card -->
    </div>

    <!-- Bar Chart -->
    <h5 class="card-title text-center">GLOBAL PROGRAM</h5>
    <div class="chart-bar">
        <canvas id="chartBar_global_program"></canvas>
    </div>

    <h5 class="card-title text-center">PROGRAM NON PENDIDIKAN & KESEHATAN</h5>
    <div class="chart-bar">
        <canvas id="chartBar_depok_program"></canvas>
    </div>

    <div class="row mt-5">
        <div class="col-xl-6 col-md-12">
            <div class="card">
                <h5 class="card-title text-center">PROGRAM PENDIDIKAN</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_depok_progPendidikan"></canvas>
                </div>
            </div>
        </div>

        <div class="col-xl-6 col-md-12">
            <div class="card">
                <h5 class="card-title text-center">PROGRAM KESEHATAN</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_depok_progKesehatan"></canvas>
                </div>
            </div>
        </div>
    </div>
    <!-- End Bar Chart -->
</div>