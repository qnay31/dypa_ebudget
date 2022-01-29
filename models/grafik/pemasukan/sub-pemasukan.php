<div class="card-body">
    <h5 class="card-title">GRAFIK <?= strtoupper($_SESSION["posisi"]) ?></h5>

    <?php if ($_GET["id_grafik"] == "grafik_pemasukanMedia") { ?>
    <?php if ($_SESSION["id_pengurus"] == "kepala_cabang") { ?>
    <h5 class="card-title text-center">INCOME MEDIA SOSIAL BOGOR</h5>
    <div class="chart-bar">
        <canvas id="chartBar_bogor_incMedia"></canvas>
    </div>

    <?php } else { ?>
    <h5 class="card-title text-center">INCOME MEDIA SOSIAL GLOBAL</h5>
    <div class="chart-bar">
        <canvas id="chartBar_global_incMedia"></canvas>
    </div>

    <div class="row mt-5">
        <div class="col-xl-6 col-md-12">
            <div class="card">
                <h5 class="card-title text-center">INCOME FACEBOOK DEPOK</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_a_incMedia"></canvas>
                </div>
            </div>
        </div>

        <div class="col-xl-6 col-md-12">
            <div class="card">
                <h5 class="card-title text-center">INCOME FACEBOOK BOGOR</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_bogor_incMedia"></canvas>
                </div>
            </div>
        </div>

        <div class="col-xl-6 col-md-12">
            <div class="card">
                <h5 class="card-title text-center">INCOME INSTAGRAM</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_instagram_incMedia"></canvas>
                </div>
            </div>
        </div>
    </div>
    <?php } ?>

    <?php } else { ?>
    <h5 class="card-title text-center">CASHBACK YAYASAN GLOBAL</h5>
    <div class="chart-bar">
        <canvas id="chartBar_global_cashback"></canvas>
    </div>
    <?php } ?>

    <!-- End Bar Chart -->
</div>