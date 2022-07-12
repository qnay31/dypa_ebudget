<div class="card-body">
    <h5 class="card-title">GRAFIK LOGISTIK</h5>

    <!-- Bar Chart -->
    <?php if ($_SESSION["id_pengurus"] == "ketua_yayasan" || $_SESSION["id_pengurus"] == "management_keuangan") { ?>
    <div class="row">
        <div class="col-xl-12 col-md-12">
            <div class="card">
                <h5 class="card-title text-center">LOGISTIK GLOBAL</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_global_logistik"></canvas>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xl-12 col-md-12">
            <div class="card">
                <h5 class="card-title text-center">LOGISTIK SUB CABANG</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_sub_logistik"></canvas>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xl-6 col-md-12">
            <div class="card">
                <h5 class="card-title text-center">LOGISTIK TAJUR</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_tajur_logistik"></canvas>
                </div>
            </div>
        </div>

        <div class="col-xl-6 col-md-12">
            <div class="card">
                <h5 class="card-title text-center">LOGISTIK BOGOR</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_bogor_logistik"></canvas>
                </div>
            </div>
        </div>
    </div>

    <?php } else { ?>
    <?php if ($_SESSION["id_pengurus"] == "kepala_income") { ?>
    <h5 class="card-title text-center mt-5">LOGISTIK TAJUR</h5>
    <div class="chart-bar">
        <canvas id="chartBar_tajur_logistik"></canvas>
    </div>

    <?php } else { ?>
    <h5 class="card-title text-center mt-5">LOGISTIK BOGOR</h5>
    <div class="chart-bar">
        <canvas id="chartBar_bogor_logistik"></canvas>
    </div>
    <?php } ?>

    <?php } ?>
    <!-- End Bar Chart -->
</div>