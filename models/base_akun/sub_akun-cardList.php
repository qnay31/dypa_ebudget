<?php 
$bulan      = date("Y-m-d");
$bln        = substr($bulan, 5,-3);

$namaAkun   = mysqli_query($conn, "SELECT * FROM data_akun WHERE pemegang = '$data[pemegang]' ORDER BY nama_akun ASC");
$nums       = $namaAkun->num_rows;
// die(var_dump($nums));
?>

<!-- Card -->
<?php
    $no = 1;
    while ($r = $namaAkun->fetch_assoc()) {
?>
<div class="col-xxl-4 col-md-4">
    <div class="card info-card revenue-card">
        <div class="card-body">
            <h5 class="card-title">Income Bulan Ini <span>| <?= ucwords($r["nama_akun"]) ?></span></h5>

            <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-credit-card"></i>
                </div>
                <div class="ps-3">
                    <?php 
                    error_reporting(1);
                        $i = 1;

                        $inMediaBulanan = mysqli_query($conn, "SELECT * FROM income_media WHERE nama_akun = '$r[nama_akun]' AND status = 'OK' AND MONTH(tanggal_tf) = '$bln' ORDER BY nama_akun ASC ");
                        
                        while($queryData=mysqli_fetch_assoc($inMediaBulanan))
                        $array[]=$queryData;
                        
                        $dataAray = array();
                        foreach($array as $data) {
                            $dataAray[ $data["nama_akun"] ] = 0;
                        } 
                        
                        foreach($array as $data) {
                            $dataAray[ $data["nama_akun"] ] += $data["jumlah_tf"];
                        }
                        
                        // var_dump($data["nama_akun"]);
                        // die(var_dump($dataAray));
                        print_r($dataAray);
                    ?>
                    <h6>Rp. <?= number_format($dataAray,0,"." , ".") ?></h6>
                </div>
            </div>
        </div>
    </div>
</div>

<?php } ?>



<div class="col-xxl-6 col-md-6">
    <div class="card info-card revenue-card">
        <div class="card-body">
            <h5 class="card-title">Income Per Tahun <span>| <?= ucwords($acMedia["nama_akun"]) ?></span></h5>

            <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-credit-card"></i>
                </div>
                <div class="ps-3">
                    <h6>Rp. <?= number_format($hasil_inMedia,0,"." , ".") ?></h6>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Card -->