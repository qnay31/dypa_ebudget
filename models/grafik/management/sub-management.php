<div class="card-body">
    <h5 class="card-title">GRAFIK <?= strtoupper($judul) ?></h5>

    <!-- Bar Chart -->
    <h5 class="card-title text-center"><?= strtoupper($judul) ?></h5>
    <?php if ($id_management == "aset_yayasan" && $_SESSION["id_pengurus"] == "kepala_income" || $id_management == "aset_yayasan" && $_SESSION["id_pengurus"] == "kepala_pengajuan") { ?>
    <?php } else { ?>
    <?php if ($_SESSION["id_pengurus"] == "kepala_pengajuan") { ?>
    <div class="chart-bar">
        <canvas id="chartBar_bogor_<?= $id_management ?>"></canvas>
    </div>

    <?php } elseif ($_SESSION["id_pengurus"] == "kepala_income") { ?>
    <div class="chart-bar">
        <canvas id="chartBar_tajur_<?= $id_management ?>"></canvas>
    </div>

    <?php } else { ?>
    <div class="chart-bar">
        <canvas id="chartBar_global_<?= $id_management ?>"></canvas>
    </div>
    <?php } ?>
    <?php } ?>

    <?php if ($id_management == "aset_yayasan") { ?>
    <?php if ($_SESSION["id_pengurus"] == "ketua_yayasan" || $_SESSION["id_pengurus"] == "management_keuangan") { ?>
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

    <?php } elseif ($_SESSION["id_pengurus"] == "kepala_income") { ?>
    <div class="row mt-5">
        <div class="col-xl-6 col-md-12">
            <div class="card">
                <h5 class="card-title text-center">PEMBANGUNAN</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_pembangunan_<?= $id_management ?>_tajur"></canvas>
                </div>
            </div>
        </div>

        <div class="col-xl-6 col-md-12">
            <div class="card">
                <h5 class="card-title text-center">PEMBELIAN BARANG</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_pembelian_<?= $id_management ?>_tajur"></canvas>
                </div>
            </div>
        </div>

    </div>

    <?php } else { ?>
    <div class="row mt-5">
        <div class="col-xl-6 col-md-12">
            <div class="card">
                <h5 class="card-title text-center">PEMBANGUNAN</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_pembangunan_<?= $id_management ?>_bogor"></canvas>
                </div>
            </div>
        </div>

        <div class="col-xl-6 col-md-12">
            <div class="card">
                <h5 class="card-title text-center">PEMBELIAN BARANG</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_pembelian_<?= $id_management ?>_bogor"></canvas>
                </div>
            </div>
        </div>
    </div>
    <?php } ?>

    <?php } else { ?>
    <?php if ($id_management == "maintenance" && $_SESSION["id_pengurus"] == "ketua_yayasan" || $id_management == "maintenance" && $_SESSION["id_pengurus"] == "management_keuangan") { ?>
    <div class="row mt-5">
        <div class="col-xl-6 col-md-12">
            <div class="card">
                <h5 class="card-title text-center"><?= strtoupper($judul) ?> GEDUNG</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_gedung_<?= $id_management ?>"></canvas>
                </div>
            </div>
        </div>

        <div class="col-xl-6 col-md-12">
            <div class="card">
                <h5 class="card-title text-center"><?= strtoupper($judul) ?> ASET</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_aset_<?= $id_management ?>"></canvas>
                </div>
            </div>
        </div>
    </div>
    <?php } else { ?>
    <?php if ($_SESSION["id_pengurus"] == "ketua_yayasan" || $_SESSION["id_pengurus"] == "management_keuangan") { ?>
    <div class="row mt-5">
        <div class="col-xl-6 col-md-12">
            <div class="card">
                <h5 class="card-title text-center"><?= strtoupper($judul) ?> TAJUR</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_tajur_<?= $id_management ?>"></canvas>
                </div>
            </div>
        </div>

        <div class="col-xl-6 col-md-12">
            <div class="card">
                <h5 class="card-title text-center"><?= strtoupper($judul) ?> BOGOR</h5>
                <div class="chart-bar">
                    <canvas id="chartBar_bogor_<?= $id_management ?>"></canvas>
                </div>
            </div>
        </div>
    </div>
    <?php } ?>
    <?php } ?>

    <?php } ?>
    <!-- End Bar Chart -->
</div>