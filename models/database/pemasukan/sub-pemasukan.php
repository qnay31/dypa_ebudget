<?php 
$incFB = mysqli_query($conn, "SELECT * FROM 2022_data_income");
while($data_incFB = mysqli_fetch_array($incFB))
{
    $i++;   
    $d_incomeFB = $data_incFB['income_global'];
    $total_incomeFB[$i] = $d_incomeFB;

    $hasil_incomeFB = array_sum($total_incomeFB);
}

$incNR = mysqli_query($conn, "SELECT * FROM 2022_data_income");
while($data_incNR = mysqli_fetch_array($incNR))
{
    $i++;   
    $d_incomeNR = $data_incNR['income_tanpaResi'];
    $total_incomeNR[$i] = $d_incomeNR;

    $hasil_incomeNR = array_sum($total_incomeNR);
}

?>

<div class="row">
    <div class="col-xxl-6 col-md-6">
        <div class="card info-card customers-card">
            <div class="card-body">
                <h5 class="card-title">Pemasukan Facebook</span></h5>

                <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                        <i class="bi bi-credit-card"></i>
                    </div>
                    <div class="ps-3">
                        <h6>
                            <?php if ($_GET["id_income"] == "") { ?>
                            Rp. <?= number_format($hasil_incomeFB,0,"." , ".") ?>
                            <?php } else { ?>
                            <a href="<?= $_SESSION["username"] ?>.php?id_database=database_pemasukanMedia"
                                data-bs-toggle="tooltip" data-bs-placement="right" title="Lihat Income Facebook">Rp.
                                <?= number_format($hasil_incomeFB,0,"." , ".") ?>
                            </a>
                            <?php } ?>

                        </h6>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xxl-6 col-md-6">
        <div class="card info-card customers-card">
            <div class="card-body">
                <h5 class="card-title">Pemasukan Non Resi</span></h5>

                <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                        <i class="bi bi-credit-card"></i>
                    </div>
                    <div class="ps-3">
                        <?php if ($_GET["id_income"] == "") { ?>
                        <h6>
                            <a href="<?= $_SESSION["username"] ?>.php?id_database=database_pemasukanMedia&id_income=nonResi"
                                data-bs-toggle="tooltip" data-bs-placement="right" title="Lihat Income Non Resi">Rp.
                                <?= number_format($hasil_incomeNR,0,"." , ".") ?>
                            </a>
                        </h6>
                        <?php } else { ?>
                        <h6>Rp.
                            <?= number_format($hasil_incomeNR,0,"." , ".") ?>
                        </h6>
                        <?php } ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Card -->
<div class="card-body">
    <h5 class="card-title">DATABASE PEMASUKAN</h5>

    <?php if ($_GET["id_income"] == "") { ?>
    <div class="table-responsive">
        <h5 class="card-title text-center">Laporan Pemasukan Media Sosial</h5>
        <table id="tabel-data_databaseMedia" class="table table-bordered">
            <thead>
                <tr style="text-align: center;">
                    <th scope="col">No</th>
                    <th scope="col">Kategori</th>
                    <th scope="col">Dilaporkan Oleh</th>
                    <th scope="col">Income</th>
                    <th scope="col">Periode</th>
                    <th scope="col">Tgl Pemasukan</th>
                    <th scope="col">Status</th>
                    <th scope="col">Income</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $no = 1;
                    while ($r = $q->fetch_assoc()) {
                        $convert   = convertDateDBtoIndo($r['tgl_pemasukan']);
                        $bulan     = substr($convert, 2);
                ?>

                <tr>
                    <td style="text-align: center;"><?= $no++ ?></td>
                    <td style="text-align: center;">Income <?= ucwords($r['kategori']) ?></td>
                    <td style="text-align: center;"><?= ucwords($r['posisi']) ?></td>
                    <td>Income <?= ucwords($r['gedung']) ?></td>
                    <td style="text-align: center;"><?= $bulan ?></td>
                    <td style="text-align: center;">
                        <?= date('d-m-Y', strtotime($r['tgl_pemasukan'])); ?></td>
                    <td style="text-align: center;">
                        <span class="badge bg-success"><?= $r["status"] ?></span>
                    </td>
                    <td><?= number_format($r['income']) ?></td>
                </tr>

                <?php } ?>
            </tbody>
            <tfoot>
                <tr style="text-align: center;">
                    <th colspan="7">Total</th>
                    <th></th>
                </tr>
            </tfoot>
        </table>
    </div>

    <?php } else { ?>
    <div class="table-responsive">
        <h5 class="card-title text-center">Laporan Pemasukan Non Resi</h5>
        <table id="tabel-data_databaseMedia" class="table table-bordered">
            <thead>
                <tr style="text-align: center;">
                    <th scope="col">No</th>
                    <th scope="col">Kategori</th>
                    <th scope="col">Dilaporkan Oleh</th>
                    <th scope="col">Income</th>
                    <th scope="col">Periode</th>
                    <th scope="col">Tgl Pemasukan</th>
                    <th scope="col">Status</th>
                    <th scope="col">Income</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $no = 1;
                    while ($r = $q->fetch_assoc()) {
                        $convert   = convertDateDBtoIndo($r['tgl_pemasukan']);
                        $bulan     = substr($convert, 2);
                ?>

                <tr>
                    <td style="text-align: center;"><?= $no++ ?></td>
                    <td style="text-align: center;">Income <?= ucwords($r['kategori']) ?></td>
                    <td style="text-align: center;"><?= ucwords($r['posisi']) ?></td>
                    <td>Income <?= ucwords($r['gedung']) ?></td>
                    <td style="text-align: center;"><?= $bulan ?></td>
                    <td style="text-align: center;">
                        <?= date('d-m-Y', strtotime($r['tgl_pemasukan'])); ?></td>
                    <td style="text-align: center;">
                        <span class="badge bg-success"><?= $r["status"] ?></span>
                    </td>
                    <td><?= number_format($r['income']) ?></td>
                </tr>

                <?php } ?>
            </tbody>
            <tfoot>
                <tr style="text-align: center;">
                    <th colspan="7">Total</th>
                    <th></th>
                </tr>
            </tfoot>
        </table>
    </div>
    <?php } ?>

</div>