<div class="card-body">
    <h5 class="card-title">GRAFIK <?= strtoupper($judul) ?></h5>

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