<?php 
$bulan     = date("Y-m-d");
$bln       = substr($bulan, 5,-3);
$convert   = convertDateDBtoIndo($bulan);
$bulanan   = substr($convert, 3, -5);

if ($_SESSION["id_pengurus"] == "ketua_yayasan" || $_SESSION["id_pengurus"] == "management_keuangan" || $_SESSION["id_pengurus"] == "kepala_income") {
    // program
    $q = mysqli_query($conn, "SELECT * FROM 2022_data_program");
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
    }

    // logistik
    $q2 = mysqli_query($conn, "SELECT * FROM 2022_data_logistik");
    $sql2 = $q2;
    while($r2 = mysqli_fetch_array($sql2))
    {
        $i++;   
        $d_anggaran2 = $r2['anggaran_global'];
        $total_anggaran2[$i] = $d_anggaran2;

        $hasil_anggaran2 = array_sum($total_anggaran2);

        $d_terpakai2 = $r2['terpakai_global'];
        $total_terpakai2[$i] = $d_terpakai2;

        $hasil_terpakai2 = array_sum($total_terpakai2);
    }

    // humas
    $q3 = mysqli_query($conn, "SELECT * FROM 2022_data_aset_yayasan");
    $sql3 = $q3;
    while($r3 = mysqli_fetch_array($sql3))
    {
        $i++;   
        $d_anggaran3 = $r3['anggaran_global'];
        $total_anggaran3[$i] = $d_anggaran3;

        $hasil_anggaran3 = array_sum($total_anggaran3);

        $d_terpakai3 = $r3['terpakai_global'];
        $total_terpakai3[$i] = $d_terpakai3;

        $hasil_terpakai3 = array_sum($total_terpakai3);
    }

    // aset yayasan
    $q4 = mysqli_query($conn, "SELECT * FROM 2022_data_uang_makan");
    $sql4 = $q4;
    while($r4 = mysqli_fetch_array($sql4))
    {
        $i++;   
        $d_anggaran4 = $r4['anggaran_global'];
        $total_anggaran4[$i] = $d_anggaran4;

        $hasil_anggaran4 = array_sum($total_anggaran4);

        $d_terpakai4 = $r4['terpakai_global'];
        $total_terpakai4[$i] = $d_terpakai4;

        $hasil_terpakai4 = array_sum($total_terpakai4);
    }

    $q5 = mysqli_query($conn, "SELECT * FROM 2022_data_gaji_karyawan");
    $sql5 = $q5;
    while($r5 = mysqli_fetch_array($sql5))
    {
        $i++;   
        $d_anggaran5 = $r5['anggaran_global'];
        $total_anggaran5[$i] = $d_anggaran5;

        $hasil_anggaran5 = array_sum($total_anggaran5);

        $d_terpakai5 = $r5['terpakai_global'];
        $total_terpakai5[$i] = $d_terpakai5;

        $hasil_terpakai5 = array_sum($total_terpakai5);
    }

    $q6 = mysqli_query($conn, "SELECT * FROM 2022_data_anggaran_lain");
    $sql6 = $q6;
    while($r6 = mysqli_fetch_array($sql6))
    {
        $i++;   
        $d_anggaran6 = $r6['anggaran_global'];
        $total_anggaran6[$i] = $d_anggaran6;

        $hasil_anggaran6 = array_sum($total_anggaran6);

        $d_terpakai6 = $r6['terpakai_global'];
        $total_terpakai6[$i] = $d_terpakai6;

        $hasil_terpakai6 = array_sum($total_terpakai6);
    }

    $q7 = mysqli_query($conn, "SELECT * FROM 2022_data_maintenance");
    $sql7 = $q7;
    while($r7 = mysqli_fetch_array($sql7))
    {
        $i++;   
        $d_anggaran7 = $r7['anggaran_global'];
        $total_anggaran7[$i] = $d_anggaran7;

        $hasil_anggaran7 = array_sum($total_anggaran7);

        $d_terpakai7 = $r7['terpakai_global'];
        $total_terpakai7[$i] = $d_terpakai7;

        $hasil_terpakai7 = array_sum($total_terpakai7);
    }

    $q8 = mysqli_query($conn, "SELECT * FROM 2022_data_operasional_yayasan");
    $sql8 = $q8;
    while($r8 = mysqli_fetch_array($sql8))
    {
        $i++;   
        $d_anggaran8 = $r8['anggaran_global'];
        $total_anggaran8[$i] = $d_anggaran8;

        $hasil_anggaran8 = array_sum($total_anggaran8);

        $d_terpakai8 = $r8['terpakai_global'];
        $total_terpakai8[$i] = $d_terpakai8;

        $hasil_terpakai8 = array_sum($total_terpakai8);
    }


    $anggaran_global = $hasil_anggaran+$hasil_anggaran2+$hasil_anggaran3+$hasil_anggaran4+$hasil_anggaran5+$hasil_anggaran6+$hasil_anggaran7+$hasil_anggaran8;

    $terpakai_global = $hasil_terpakai+$hasil_terpakai2+$hasil_terpakai3+$hasil_terpakai4+$hasil_terpakai5+$hasil_terpakai6+$hasil_terpakai7+$hasil_terpakai8;

    $cashback_global = $anggaran_global-$terpakai_global;
    // die(var_dump($terpakai_global));
    
    // bulanan
    // program
    $k = mysqli_query($conn, "SELECT * FROM 2022_data_program WHERE bulan = '$bulanan'");
    $skl = $k;
    while($dBulanan = mysqli_fetch_array($skl))
    {
        $i++;   
        $d_anggaranBulanan = $dBulanan['anggaran_global'];
        $total_anggaranBulanan[$i] = $d_anggaranBulanan;

        $hasil_anggaranBulanan = array_sum($total_anggaranBulanan);

        $d_terpakaiBulanan = $dBulanan['terpakai_global'];
        $total_terpakaiBulanan[$i] = $d_terpakaiBulanan;

        $hasil_terpakaiBulanan = array_sum($total_terpakaiBulanan);
        // die(var_dump($d_anggaranBulanan));
        $cashbackBulanan = $hasil_anggaranBulanan-$hasil_terpakaiBulanan;
    }

    // logistik
    $k2 = mysqli_query($conn, "SELECT * FROM 2022_data_logistik WHERE bulan = '$bulanan'");
    $skl2 = $k2;
    while($dBulanan2 = mysqli_fetch_array($skl2))
    {
        $i++;   
        $d_anggaranBulanan2 = $dBulanan2['anggaran_global'];
        $total_anggaranBulanan2[$i] = $d_anggaranBulanan2;

        $hasil_anggaranBulanan2 = array_sum($total_anggaranBulanan2);

        $d_terpakaiBulanan2 = $dBulanan2['terpakai_global'];
        $total_terpakaiBulanan2[$i] = $d_terpakaiBulanan2;

        $hasil_terpakaiBulanan2 = array_sum($total_terpakaiBulanan2);
        $cashbackBulanan2 = $hasil_anggaranBulanan2-$hasil_terpakaiBulanan2;
    }

    // aset
    $k3 = mysqli_query($conn, "SELECT * FROM 2022_data_aset_yayasan WHERE bulan = '$bulanan'");
    $skl3 = $k3;
    while($dBulanan3 = mysqli_fetch_array($skl3))
    {
        $i++;   
        $d_anggaranBulanan3 = $dBulanan3['anggaran_global'];
        $total_anggaranBulanan3[$i] = $d_anggaranBulanan3;

        $hasil_anggaranBulanan3 = array_sum($total_anggaranBulanan3);

        $d_terpakaiBulanan3 = $dBulanan3['terpakai_global'];
        $total_terpakaiBulanan3[$i] = $d_terpakaiBulanan3;

        $hasil_terpakaiBulanan3 = array_sum($total_terpakaiBulanan3);
        $cashbackBulanan3 = $hasil_anggaranBulanan3-$hasil_terpakaiBulanan3;
    }

    // uang makan
    $k4 = mysqli_query($conn, "SELECT * FROM 2022_data_uang_makan WHERE bulan = '$bulanan'");
    $skl4 = $k4;
    while($dBulanan4 = mysqli_fetch_array($skl4))
    {
        $i++;   
        $d_anggaranBulanan4 = $dBulanan4['anggaran_global'];
        $total_anggaranBulanan4[$i] = $d_anggaranBulanan4;

        $hasil_anggaranBulanan4 = array_sum($total_anggaranBulanan4);

        $d_terpakaiBulanan4 = $dBulanan4['terpakai_global'];
        $total_terpakaiBulanan4[$i] = $d_terpakaiBulanan4;

        $hasil_terpakaiBulanan4 = array_sum($total_terpakaiBulanan4);
        $cashbackBulanan4 = $hasil_anggaranBulanan4-$hasil_terpakaiBulanan4;
    }

    // gaji karyawan
    $k5 = mysqli_query($conn, "SELECT * FROM 2022_data_gaji_karyawan WHERE bulan = '$bulanan'");
    $skl5 = $k5;
    while($dBulanan5 = mysqli_fetch_array($skl5))
    {
        $i++;   
        $d_anggaranBulanan5 = $dBulanan5['anggaran_global'];
        $total_anggaranBulanan5[$i] = $d_anggaranBulanan5;

        $hasil_anggaranBulanan5 = array_sum($total_anggaranBulanan5);

        $d_terpakaiBulanan5 = $dBulanan5['terpakai_global'];
        $total_terpakaiBulanan5[$i] = $d_terpakaiBulanan5;

        $hasil_terpakaiBulanan5 = array_sum($total_terpakaiBulanan5);
        $cashbackBulanan5 = $hasil_anggaranBulanan5-$hasil_terpakaiBulanan5;
    }

    $k6 = mysqli_query($conn, "SELECT * FROM 2022_data_anggaran_lain WHERE bulan = '$bulanan'");
    $skl6 = $k6;
    while($dBulanan6 = mysqli_fetch_array($skl6))
    {
        $i++;   
        $d_anggaranBulanan6 = $dBulanan6['anggaran_global'];
        $total_anggaranBulanan6[$i] = $d_anggaranBulanan6;

        $hasil_anggaranBulanan6 = array_sum($total_anggaranBulanan6);

        $d_terpakaiBulanan6 = $dBulanan6['terpakai_global'];
        $total_terpakaiBulanan6[$i] = $d_terpakaiBulanan6;

        $hasil_terpakaiBulanan6 = array_sum($total_terpakaiBulanan6);
        $cashbackBulanan6 = $hasil_anggaranBulanan6-$hasil_terpakaiBulanan6;
    }

    $k7 = mysqli_query($conn, "SELECT * FROM 2022_data_maintenance WHERE bulan = '$bulanan'");
    $skl7 = $k7;
    while($dBulanan7 = mysqli_fetch_array($skl7))
    {
        $i++;   
        $d_anggaranBulanan7 = $dBulanan7['anggaran_global'];
        $total_anggaranBulanan7[$i] = $d_anggaranBulanan7;

        $hasil_anggaranBulanan7 = array_sum($total_anggaranBulanan7);

        $d_terpakaiBulanan7 = $dBulanan7['terpakai_global'];
        $total_terpakaiBulanan7[$i] = $d_terpakaiBulanan7;

        $hasil_terpakaiBulanan7 = array_sum($total_terpakaiBulanan7);
        $cashbackBulanan7 = $hasil_anggaranBulanan7-$hasil_terpakaiBulanan7;
    }

    $k8 = mysqli_query($conn, "SELECT * FROM 2022_data_operasional_yayasan WHERE bulan = '$bulanan'");
    $skl8 = $k8;
    while($dBulanan8 = mysqli_fetch_array($skl8))
    {
        $i++;   
        $d_anggaranBulanan8 = $dBulanan8['anggaran_global'];
        $total_anggaranBulanan8[$i] = $d_anggaranBulanan8;

        $hasil_anggaranBulanan8 = array_sum($total_anggaranBulanan8);

        $d_terpakaiBulanan8 = $dBulanan8['terpakai_global'];
        $total_terpakaiBulanan8[$i] = $d_terpakaiBulanan8;

        $hasil_terpakaiBulanan8 = array_sum($total_terpakaiBulanan8);
        $cashbackBulanan8 = $hasil_anggaranBulanan8-$hasil_terpakaiBulanan8;
    }

    $anggaran_globalBulanan = $hasil_anggaranBulanan+$hasil_anggaranBulanan2+$hasil_anggaranBulanan3+$hasil_anggaranBulanan4+$hasil_anggaranBulanan5+$hasil_anggaranBulanan6+$hasil_anggaranBulanan7+$hasil_anggaranBulanan8;

    $terpakai_globalBulanan = $hasil_terpakaiBulanan+$hasil_terpakaiBulanan2+$hasil_terpakaiBulanan3+$hasil_terpakaiBulanan4+$hasil_terpakaiBulanan5+$hasil_terpakaiBulanan6+$hasil_terpakaiBulanan7+$hasil_terpakaiBulanan8;

    $cashback_globalBulananan = $anggaran_globalBulanan-$terpakai_globalBulanan;
    
    // PEMASUKAN

    // media sosial
    $incBulanan = mysqli_query($conn, "SELECT * FROM income_media WHERE MONTH(tanggal_tf) = '$bln' AND status = 'OK'");
    while($data_incBulanan = mysqli_fetch_array($incBulanan))
    {
        $i++;   
        $d_incomeBulanan = $data_incBulanan['jumlah_tf'];
        $total_incomeBulanan[$i] = $d_incomeBulanan;
        $hasil_incomeBulanan = array_sum($total_incomeBulanan);
    }

    $incB = mysqli_query($conn, "SELECT * FROM 2022_data_income WHERE bulan = '$bulanan'");
    while($data_incB = mysqli_fetch_array($incB))
    {
        $i++;   
        $d_resiB = $data_incB['income_tanpaResi'];
        $total_resiB[$i] = $d_resiB;

        $hasil_resiB = array_sum($total_resiB);
        
    }

    $inc = mysqli_query($conn, "SELECT * FROM income_media WHERE status = 'OK'");
    while($data_inc = mysqli_fetch_array($inc))
    {
        $i++;   
        $d_income = $data_inc['jumlah_tf'];
        $total_income[$i] = $d_income;
        $hasil_income = array_sum($total_income);
    }

    $inc1 = mysqli_query($conn, "SELECT * FROM 2022_data_income");
    while($data_inc1 = mysqli_fetch_array($inc1))
    {
        $i++;   
        $d_resi1 = $data_inc1['income_tanpaResi'];
        $total_resi1[$i] = $d_resi1;

        $hasil_resi1 = array_sum($total_resi1);
    }

    $pemasukanMedia     = $hasil_incomeBulanan+$hasil_resiB;

    $pemasukanYayasanBulanan = $hasil_incomeBulanan+$hasil_resiB+$cashback_globalBulananan;
    // tahun
    $pemasukanMediaT = $hasil_income+$hasil_resi1;
    $pemasukanYayasanGlobal = $pemasukanMediaT+$cashback_global;

} elseif ($_SESSION["id_pengurus"] == "manager_facebook") {
    $i = 1;
    
    $incBulanan = mysqli_query($conn, "SELECT * FROM income_media WHERE status = 'OK' AND MONTH(tanggal_tf) = '$bln'");
    while($data_incBulanan = mysqli_fetch_array($incBulanan))
    {
        $i++;   
        $d_incomeBulanan = $data_incBulanan['jumlah_tf'];
        $total_incomeBulanan[$i] = $d_incomeBulanan;

        $hasil_incomeBulanan = array_sum($total_incomeBulanan);
        // die(var_dump($hasil_incomeBulanan));
    }

    // die(var_dump($akun));
    $inc = mysqli_query($conn, "SELECT * FROM income_media WHERE status = 'OK'");
    while($data_inc = mysqli_fetch_array($inc))
    {
        $i++;   
        $d_income = $data_inc['jumlah_tf'];
        $total_income[$i] = $d_income;

        $hasil_income = array_sum($total_income);

    }

} else {
    $bulan     = date("Y-m-d");
    $bln       = substr($bulan, 5,-3);
    $i = 1;
    
    $incBulanan = mysqli_query($conn, "SELECT * FROM income_media WHERE pemegang = '$_SESSION[nama]' AND status = 'OK' AND MONTH(tanggal_tf) = '$bln'");
    while($data_incBulanan = mysqli_fetch_array($incBulanan))
    {
        $i++;   
        $d_incomeBulanan = $data_incBulanan['jumlah_tf'];
        $total_incomeBulanan[$i] = $d_incomeBulanan;

        $hasil_incomeBulanan = array_sum($total_incomeBulanan);
        // die(var_dump($hasil_incomeBulanan));
    }

    // die(var_dump($akun));
    $inc = mysqli_query($conn, "SELECT * FROM income_media WHERE pemegang = '$_SESSION[nama]' AND status = 'OK'");
    while($data_inc = mysqli_fetch_array($inc))
    {
        $i++;   
        $d_income = $data_inc['jumlah_tf'];
        $total_income[$i] = $d_income;

        $hasil_income = array_sum($total_income);

    }
}

?>

<?php if ($_SESSION["id_pengurus"] == "ketua_yayasan" || $_SESSION["id_pengurus"] == "management_keuangan") { ?>
<!-- Card -->
<div class="col-xxl-12">
    <div class="splide" id="splide">
        <div class="splide__track">
            <ul class="splide__list">
                <!-- Program -->
                <li class="splide__slide">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Program <span>| Bulan <?= $bulanan; ?></span>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?id_database=database_program&id_periode=<?= $bln; ?>">
                                    <i class="bi bi-folder-symlink-fill text-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="right" title="Lihat detail laporan">
                                        <i class="text-danger"></i>
                                    </i>
                                </a>
                            </h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-arrow-down-up"></i>
                                </div>
                                <div class="ps-3">
                                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Anggaran">Rp.
                                        <?= number_format($hasil_anggaranBulanan,0,"." , ".") ?></h6>
                                    <h6 class="text-danger" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Terpakai">Rp.
                                        <?= number_format($hasil_terpakaiBulanan,0,"." , ".") ?> - </h6>
                                    <h6 class="text-success" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Cashback">Rp.
                                        <?= number_format($cashbackBulanan,0,"." , ".") ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <!-- Logistik -->
                <li class="splide__slide">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Logistik <span>| Bulan <?= $bulanan; ?></span>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?id_database=database_logistik&id_periode=<?= $bln; ?>">
                                    <i class="bi bi-folder-symlink-fill text-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="right" title="Lihat detail laporan">
                                        <i class="text-danger"></i>
                                    </i>
                                </a>
                            </h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-arrow-down-up"></i>
                                </div>
                                <div class="ps-3">
                                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Anggaran">Rp.
                                        <?= number_format($hasil_anggaranBulanan2,0,"." , ".") ?></h6>
                                    <h6 class="text-danger" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Terpakai">Rp.
                                        <?= number_format($hasil_terpakaiBulanan2,0,"." , ".") ?> - </h6>
                                    <h6 class="text-success" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Cashback">Rp.
                                        <?= number_format($cashbackBulanan2,0,"." , ".") ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <!-- Aset Yayasan -->
                <li class="splide__slide">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Aset <span>| Bulan <?= $bulanan; ?></span>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?id_dataManagement=aset_yayasan&id_database=database_aset_yayasan&id_periode=<?= $bln; ?>">
                                    <i class="bi bi-folder-symlink-fill text-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="right" title="Lihat detail laporan">
                                        <i class="text-danger"></i>
                                    </i>
                                </a>
                            </h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-arrow-down-up"></i>
                                </div>
                                <div class="ps-3">
                                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Anggaran">Rp.
                                        <?= number_format($hasil_anggaranBulanan3,0,"." , ".") ?></h6>
                                    <h6 class="text-danger" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Terpakai">Rp.
                                        <?= number_format($hasil_terpakaiBulanan3,0,"." , ".") ?> - </h6>
                                    <h6 class="text-success" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Cashback">Rp.
                                        <?= number_format($cashbackBulanan3,0,"." , ".") ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <!-- Uang Makan -->
                <li class="splide__slide">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Uang Makan <span>| Bulan <?= $bulanan; ?></span>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?id_dataManagement=uang_makan&id_database=database_uang_makan&id_periode=<?= $bln; ?>">
                                    <i class="bi bi-folder-symlink-fill text-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="right" title="Lihat detail laporan">
                                        <i class="text-danger"></i>
                                    </i>
                                </a>
                            </h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-arrow-down-up"></i>
                                </div>
                                <div class="ps-3">
                                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Anggaran">Rp.
                                        <?= number_format($hasil_anggaranBulanan4,0,"." , ".") ?></h6>
                                    <h6 class="text-danger" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Terpakai">Rp.
                                        <?= number_format($hasil_terpakaiBulanan4,0,"." , ".") ?> - </h6>
                                    <h6 class="text-success" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Cashback">Rp.
                                        <?= number_format($cashbackBulanan4,0,"." , ".") ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <!-- Gajj Karyawan -->
                <li class="splide__slide">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Gaji <span>| Bulan <?= $bulanan; ?></span>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?id_dataManagement=gaji_karyawan&id_database=database_gaji_karyawan&id_periode=<?= $bln; ?>">
                                    <i class="bi bi-folder-symlink-fill text-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="right" title="Lihat detail laporan">
                                        <i class="text-danger"></i>
                                    </i>
                                </a>
                            </h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-arrow-down-up"></i>
                                </div>
                                <div class="ps-3">
                                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Anggaran">Rp.
                                        <?= number_format($hasil_anggaranBulanan5,0,"." , ".") ?></h6>
                                    <h6 class="text-danger" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Terpakai">Rp.
                                        <?= number_format($hasil_terpakaiBulanan5,0,"." , ".") ?> - </h6>
                                    <h6 class="text-success" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Cashback">Rp.
                                        <?= number_format($cashbackBulanan5,0,"." , ".") ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <!-- Biaya Lainnya -->
                <li class="splide__slide">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Biaya Lainnya <span>| Bulan <?= $bulanan; ?></span>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?id_dataManagement=anggaran_lain&id_database=database_anggaran_lain&id_periode=<?= $bln; ?>">
                                    <i class="bi bi-folder-symlink-fill text-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="right" title="Lihat detail laporan">
                                        <i class="text-danger"></i>
                                    </i>
                                </a>
                            </h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-arrow-down-up"></i>
                                </div>
                                <div class="ps-3">
                                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Anggaran">Rp.
                                        <?= number_format($hasil_anggaranBulanan6,0,"." , ".") ?></h6>
                                    <h6 class="text-danger" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Terpakai">Rp.
                                        <?= number_format($hasil_terpakaiBulanan6,0,"." , ".") ?> - </h6>
                                    <h6 class="text-success" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Cashback">Rp.
                                        <?= number_format($cashbackBulanan6,0,"." , ".") ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <!-- Maintenance -->
                <li class="splide__slide">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Maintenance <span>| Bulan <?= $bulanan; ?></span>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?id_dataManagement=maintenance&id_database=database_maintenance&id_periode=<?= $bln; ?>">
                                    <i class="bi bi-folder-symlink-fill text-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="right" title="Lihat detail laporan">
                                        <i class="text-danger"></i>
                                    </i>
                                </a>
                            </h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-arrow-down-up"></i>
                                </div>
                                <div class="ps-3">
                                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Anggaran">Rp.
                                        <?= number_format($hasil_anggaranBulanan7,0,"." , ".") ?></h6>
                                    <h6 class="text-danger" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Terpakai">Rp.
                                        <?= number_format($hasil_terpakaiBulanan7,0,"." , ".") ?> - </h6>
                                    <h6 class="text-success" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Cashback">Rp.
                                        <?= number_format($cashbackBulanan7,0,"." , ".") ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <!-- Operasional -->
                <li class="splide__slide">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Operasional <span>| Bulan <?= $bulanan; ?></span>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?id_dataManagement=operasional_yayasan&id_database=database_operasional_yayasan&id_periode=<?= $bln; ?>">
                                    <i class="bi bi-folder-symlink-fill text-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="right" title="Lihat detail laporan">
                                        <i class="text-danger"></i>
                                    </i>
                                </a>
                            </h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-arrow-down-up"></i>
                                </div>
                                <div class="ps-3">
                                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Anggaran">Rp.
                                        <?= number_format($hasil_anggaranBulanan8,0,"." , ".") ?></h6>
                                    <h6 class="text-danger" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Terpakai">Rp.
                                        <?= number_format($hasil_terpakaiBulanan8,0,"." , ".") ?> - </h6>
                                    <h6 class="text-success" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Cashback">Rp.
                                        <?= number_format($cashbackBulanan8,0,"." , ".") ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

            </ul>
        </div>
    </div>
</div>

<div class="col-xxl-6 col-md-6">
    <div class="card info-card sales-card">
        <div class="card-body">
            <h5 class="card-title">Kegiatan Yayasan <span>| Bulan <?= $bulanan; ?></span></h5>
            <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-receipt-cutoff"></i>
                </div>
                <div class="ps-3">
                    <h6>Rp.
                        <?= number_format($anggaran_globalBulanan,0,"." , ".") ?> <i
                            class="bi bi-info-circle text-black" data-bs-toggle="tooltip" data-bs-placement="right"
                            title="Anggaran"></i>
                    </h6>
                    <h6 class="text-danger">Rp.
                        <?= number_format($terpakai_globalBulanan,0,"." , ".") ?>- <i
                            class="bi bi-info-circle text-black" data-bs-toggle="tooltip" data-bs-placement="right"
                            title="Terpakai"></i></h6>
                    <h6 class="text-success">Rp.
                        <?= number_format($cashback_globalBulananan,0,"." , ".") ?> <i
                            class="bi bi-info-circle text-black" data-bs-toggle="tooltip" data-bs-placement="right"
                            title="Cashback"></i>
                    </h6>
                </div>
            </div>
        </div>
    </div>
</div><!-- End Card -->

<!-- Card -->
<div class="col-xxl-6 col-md-6">
    <div class="card info-card sales-card">
        <div class="card-body">
            <h5 class="card-title">Kegiatan Yayasan <span>| Global</span></h5>
            <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-receipt-cutoff"></i>
                </div>
                <div class="ps-3">
                    <h6>Rp.
                        <?= number_format($anggaran_global,0,"." , ".") ?> <i class="bi bi-info-circle text-black"
                            data-bs-toggle="tooltip" data-bs-placement="right" title="Anggaran"></i>
                    </h6>
                    <h6 class="text-danger">Rp.
                        <?= number_format($terpakai_global,0,"." , ".") ?>- <i class="bi bi-info-circle text-black"
                            data-bs-toggle="tooltip" data-bs-placement="right" title="Terpakai"></i></h6>
                    <h6 class="text-success">Rp.
                        <?= number_format($cashback_global,0,"." , ".") ?> <i class="bi bi-info-circle text-black"
                            data-bs-toggle="tooltip" data-bs-placement="right" title="Cashback"></i>
                    </h6>
                </div>
            </div>
        </div>
    </div>
</div><!-- End Card -->

<!-- Card -->
<div class="col-xxl-4 col-md-4">
    <div class="card info-card customers-card">
        <div class="card-body">
            <h5 class="card-title">Pemasukan Media <span>| <?= $bulanan; ?></span></h5>
            <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-cash-coin"></i>
                </div>
                <div class="ps-3">
                    <h6>Rp.
                        <?= number_format($pemasukanMedia,0,"." , ".") ?> <i class="bi bi-info-circle text-black"
                            data-bs-toggle="tooltip" data-bs-placement="right" data-bs-html="true"
                            title="Media Sosial : <?= number_format($hasil_incomeBulanan,0,"." , ".") ?> <br> Tanpa Resi : <?= number_format($hasil_resiB,0,"." , ".") ?> "></i>
                    </h6>
                </div>
            </div>
        </div>
    </div>
</div><!-- End Card -->

<!-- Card -->
<div class="col-xxl-4 col-md-4">
    <div class="card info-card customers-card">
        <div class="card-body">
            <h5 class="card-title">Pemasukan Cashback <span>| <?= $bulanan; ?></span></h5>
            <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-cash-coin"></i>
                </div>
                <div class="ps-3">
                    <h6>Rp.
                        <?= number_format($cashback_globalBulananan,0,"." , ".") ?> <i
                            class="bi bi-info-circle text-black" data-bs-toggle="tooltip" data-bs-placement="right"
                            title="Cashback Kegiatan Yayasan"></i>
                    </h6>
                </div>
            </div>
        </div>
    </div>
</div><!-- End Card -->

<!-- Card -->
<div class="col-xxl-4 col-md-4">
    <div class="card info-card customers-card">
        <div class="card-body">
            <h5 class="card-title">Pemasukan Global <span>| <?= $bulanan; ?></span></h5>
            <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-cash-coin"></i>
                </div>
                <div class="ps-3">
                    <h6>Rp.
                        <?= number_format($pemasukanYayasanBulanan,0,"." , ".") ?> <i
                            class="bi bi-info-circle text-black" data-bs-toggle="tooltip" data-bs-placement="right"
                            title="Total dari pemasukan media + cashback"></i>
                    </h6>
                </div>
            </div>
        </div>
    </div>
</div><!-- End Card -->

<!-- Card -->
<div class="col-xxl-4 col-md-4">
    <div class="card info-card customers-card">
        <div class="card-body">
            <h5 class="card-title">Pemasukan Tahunan <span>| Media</span></h5>
            <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-cash-coin"></i>
                </div>
                <div class="ps-3">
                    <h6>Rp.
                        <?= number_format($pemasukanMediaT,0,"." , ".") ?> <i class="bi bi-info-circle text-black"
                            data-bs-toggle="tooltip" data-bs-placement="right" data-bs-html="true"
                            title="Media Sosial : <?= number_format($hasil_income,0,"." , ".") ?> <br> Tanpa Resi : <?= number_format($hasil_resi1,0,"." , ".") ?> "></i>
                    </h6>
                </div>
            </div>
        </div>
    </div>
</div><!-- End Card -->

<!-- Card -->
<div class="col-xxl-4 col-md-4">
    <div class="card info-card customers-card">
        <div class="card-body">
            <h5 class="card-title">Pemasukan Tahunan <span>| Cashback</span></h5>
            <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-cash-coin"></i>
                </div>
                <div class="ps-3">
                    <h6>Rp.
                        <?= number_format($cashback_global,0,"." , ".") ?> <i class="bi bi-info-circle text-black"
                            data-bs-toggle="tooltip" data-bs-placement="right" title="Cashback Kegiatan Yayasan"></i>
                    </h6>
                </div>
            </div>
        </div>
    </div>
</div><!-- End Card -->

<!-- Card -->
<div class="col-xxl-4 col-md-4">
    <div class="card info-card customers-card">
        <div class="card-body">
            <h5 class="card-title">Pemasukan Tahunan <span>| Global</span></h5>
            <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-cash-coin"></i>
                </div>
                <div class="ps-3">
                    <h6>Rp.
                        <?= number_format($pemasukanYayasanGlobal,0,"." , ".") ?> <i
                            class="bi bi-info-circle text-black" data-bs-toggle="tooltip" data-bs-placement="right"
                            title="Total dari pemasukan media + cashback"></i>
                    </h6>
                </div>
            </div>
        </div>
    </div>
</div><!-- End Card -->

<?php } elseif ($_SESSION["id_pengurus"] == "kepala_income") { ?>
<!-- Card -->
<div class="col-xxl-12">
    <div class="splide" id="splide">
        <div class="splide__track">
            <ul class="splide__list">
                <!-- Program -->
                <li class="splide__slide">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Program <span>| Bulan <?= $bulanan; ?></span>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?id_database=database_program&id_periode=<?= $bln; ?>">
                                    <i class="bi bi-folder-symlink-fill text-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="right" title="Lihat detail laporan">
                                        <i class="text-danger"></i>
                                    </i>
                                </a>
                            </h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-arrow-down-up"></i>
                                </div>
                                <div class="ps-3">
                                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Anggaran">Rp.
                                        <?= number_format($hasil_anggaranBulanan,0,"." , ".") ?></h6>
                                    <h6 class="text-danger" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Terpakai">Rp.
                                        <?= number_format($hasil_terpakaiBulanan,0,"." , ".") ?> - </h6>
                                    <h6 class="text-success" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Cashback">Rp.
                                        <?= number_format($cashbackBulanan,0,"." , ".") ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <!-- Logistik -->
                <li class="splide__slide">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Logistik <span>| Bulan <?= $bulanan; ?></span>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?id_database=database_logistik&id_periode=<?= $bln; ?>">
                                    <i class="bi bi-folder-symlink-fill text-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="right" title="Lihat detail laporan">
                                        <i class="text-danger"></i>
                                    </i>
                                </a>
                            </h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-arrow-down-up"></i>
                                </div>
                                <div class="ps-3">
                                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Anggaran">Rp.
                                        <?= number_format($hasil_anggaranBulanan2,0,"." , ".") ?></h6>
                                    <h6 class="text-danger" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Terpakai">Rp.
                                        <?= number_format($hasil_terpakaiBulanan2,0,"." , ".") ?> - </h6>
                                    <h6 class="text-success" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Cashback">Rp.
                                        <?= number_format($cashbackBulanan2,0,"." , ".") ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <!-- Aset Yayasan -->
                <li class="splide__slide">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Aset <span>| Bulan <?= $bulanan; ?></span>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?id_dataManagement=aset_yayasan&id_database=database_aset_yayasan&id_periode=<?= $bln; ?>">
                                    <i class="bi bi-folder-symlink-fill text-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="right" title="Lihat detail laporan">
                                        <i class="text-danger"></i>
                                    </i>
                                </a>
                            </h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-arrow-down-up"></i>
                                </div>
                                <div class="ps-3">
                                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Anggaran">Rp.
                                        <?= number_format($hasil_anggaranBulanan3,0,"." , ".") ?></h6>
                                    <h6 class="text-danger" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Terpakai">Rp.
                                        <?= number_format($hasil_terpakaiBulanan3,0,"." , ".") ?> - </h6>
                                    <h6 class="text-success" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Cashback">Rp.
                                        <?= number_format($cashbackBulanan3,0,"." , ".") ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <!-- Uang Makan -->
                <li class="splide__slide">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Uang Makan <span>| Bulan <?= $bulanan; ?></span>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?id_dataManagement=uang_makan&id_database=database_uang_makan&id_periode=<?= $bln; ?>">
                                    <i class="bi bi-folder-symlink-fill text-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="right" title="Lihat detail laporan">
                                        <i class="text-danger"></i>
                                    </i>
                                </a>
                            </h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-arrow-down-up"></i>
                                </div>
                                <div class="ps-3">
                                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Anggaran">Rp.
                                        <?= number_format($hasil_anggaranBulanan4,0,"." , ".") ?></h6>
                                    <h6 class="text-danger" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Terpakai">Rp.
                                        <?= number_format($hasil_terpakaiBulanan4,0,"." , ".") ?> - </h6>
                                    <h6 class="text-success" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Cashback">Rp.
                                        <?= number_format($cashbackBulanan4,0,"." , ".") ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <!-- Gajj Karyawan -->
                <li class="splide__slide">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Gaji <span>| Bulan <?= $bulanan; ?></span>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?id_dataManagement=gaji_karyawan&id_database=database_gaji_karyawan&id_periode=<?= $bln; ?>">
                                    <i class="bi bi-folder-symlink-fill text-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="right" title="Lihat detail laporan">
                                        <i class="text-danger"></i>
                                    </i>
                                </a>
                            </h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-arrow-down-up"></i>
                                </div>
                                <div class="ps-3">
                                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Anggaran">Rp.
                                        <?= number_format($hasil_anggaranBulanan5,0,"." , ".") ?></h6>
                                    <h6 class="text-danger" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Terpakai">Rp.
                                        <?= number_format($hasil_terpakaiBulanan5,0,"." , ".") ?> - </h6>
                                    <h6 class="text-success" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Cashback">Rp.
                                        <?= number_format($cashbackBulanan5,0,"." , ".") ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <!-- Biaya Lainnya -->
                <li class="splide__slide">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Biaya Lainnya <span>| Bulan <?= $bulanan; ?></span>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?id_dataManagement=anggaran_lain&id_database=database_anggaran_lain&id_periode=<?= $bln; ?>">
                                    <i class="bi bi-folder-symlink-fill text-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="right" title="Lihat detail laporan">
                                        <i class="text-danger"></i>
                                    </i>
                                </a>
                            </h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-arrow-down-up"></i>
                                </div>
                                <div class="ps-3">
                                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Anggaran">Rp.
                                        <?= number_format($hasil_anggaranBulanan6,0,"." , ".") ?></h6>
                                    <h6 class="text-danger" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Terpakai">Rp.
                                        <?= number_format($hasil_terpakaiBulanan6,0,"." , ".") ?> - </h6>
                                    <h6 class="text-success" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Cashback">Rp.
                                        <?= number_format($cashbackBulanan6,0,"." , ".") ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <!-- Maintenance -->
                <li class="splide__slide">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Maintenance <span>| Bulan <?= $bulanan; ?></span>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?id_dataManagement=maintenance&id_database=database_maintenance&id_periode=<?= $bln; ?>">
                                    <i class="bi bi-folder-symlink-fill text-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="right" title="Lihat detail laporan">
                                        <i class="text-danger"></i>
                                    </i>
                                </a>
                            </h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-arrow-down-up"></i>
                                </div>
                                <div class="ps-3">
                                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Anggaran">Rp.
                                        <?= number_format($hasil_anggaranBulanan7,0,"." , ".") ?></h6>
                                    <h6 class="text-danger" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Terpakai">Rp.
                                        <?= number_format($hasil_terpakaiBulanan7,0,"." , ".") ?> - </h6>
                                    <h6 class="text-success" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Cashback">Rp.
                                        <?= number_format($cashbackBulanan7,0,"." , ".") ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <!-- Operasional -->
                <li class="splide__slide">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Operasional <span>| Bulan <?= $bulanan; ?></span>
                                <a
                                    href="<?= $_SESSION["username"] ?>.php?id_dataManagement=operasional_yayasan&id_database=database_operasional_yayasan&id_periode=<?= $bln; ?>">
                                    <i class="bi bi-folder-symlink-fill text-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="right" title="Lihat detail laporan">
                                        <i class="text-danger"></i>
                                    </i>
                                </a>
                            </h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-arrow-down-up"></i>
                                </div>
                                <div class="ps-3">
                                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" title="Anggaran">Rp.
                                        <?= number_format($hasil_anggaranBulanan8,0,"." , ".") ?></h6>
                                    <h6 class="text-danger" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Terpakai">Rp.
                                        <?= number_format($hasil_terpakaiBulanan8,0,"." , ".") ?> - </h6>
                                    <h6 class="text-success" data-bs-toggle="tooltip" data-bs-placement="right"
                                        title="Cashback">Rp.
                                        <?= number_format($cashbackBulanan8,0,"." , ".") ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

            </ul>
        </div>
    </div>
</div>
<!-- Card -->
<div class="col-xxl-6 col-md-6">
    <div class="card info-card customers-card">
        <div class="card-body">
            <h5 class="card-title">Pemasukan Bulan <?= $bulanan; ?> <span>| Media</span></h5>

            <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-credit-card"></i>
                </div>
                <div class="ps-3">
                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" data-bs-html="true"
                        title="Media Sosial : <?= number_format($hasil_incomeBulanan,0,"." , ".") ?> <br> Tanpa Resi : <?= number_format($hasil_resiB,0,"." , ".") ?> ">
                        Rp. <?= number_format($pemasukanMedia,0,"." , ".") ?> <i class="bi bi-info-circle"></i>
                    </h6>
                </div>
            </div>
        </div>
    </div>
</div><!-- End Card -->

<!-- Card -->
<div class="col-xxl-6 col-md-6">
    <div class="card info-card customers-card">
        <div class="card-body">
            <h5 class="card-title">Pemasukan Per Tahun <span>| Media</span></h5>

            <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-credit-card"></i>
                </div>
                <div class="ps-3">
                    <h6 data-bs-toggle="tooltip" data-bs-placement="right" data-bs-html="true"
                        title="Media Sosial : <?= number_format($hasil_income,0,"." , ".") ?> <br> Tanpa Resi : <?= number_format($hasil_resi1,0,"." , ".") ?> ">
                        Rp. <?= number_format($pemasukanMediaT,0,"." , ".") ?> <i class="bi bi-info-circle"></i></h6>
                </div>
            </div>
        </div>
    </div>
</div><!-- End Card -->

<?php } else { ?>
<!-- Card -->
<div class="col-xxl-6 col-md-6">
    <div class="card info-card revenue-card">
        <div class="card-body">
            <h5 class="card-title">Total Income Bulan <?= $bulanan; ?></h5>
            <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-credit-card"></i>
                </div>
                <div class="ps-3">
                    <h6>Rp. <?= number_format($hasil_incomeBulanan,0,"." , ".") ?></h6>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="col-xxl-6 col-md-6">
    <div class="card info-card revenue-card">
        <div class="card-body">
            <h5 class="card-title">Total Income Keseluruhan</h5>
            <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-credit-card"></i>
                </div>
                <div class="ps-3">
                    <h6>Rp. <?= number_format($hasil_income,0,"." , ".") ?></h6>
                </div>
            </div>
        </div>
    </div>
</div><!-- End Card -->

<?php } ?>