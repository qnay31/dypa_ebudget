<?php
if ($_SESSION["id_pengurus"] == "management_keuangan") {
    // program
    $q  = mysqli_query($conn, "SELECT * FROM 2022_program WHERE laporan = 'Belum Laporan' AND status = 'Pending' ORDER BY `tgl_pengajuan` DESC");
    $s = $q->num_rows;

    $q2  = mysqli_query($conn, "SELECT * FROM 2022_program WHERE laporan = 'Menunggu Verifikasi' ORDER BY `tgl_pengajuan` DESC");
    $s2 = $q2->num_rows;

    // logistik
    $n_log  = mysqli_query($conn, "SELECT * FROM 2022_logistik WHERE laporan = 'Belum Laporan' AND status = 'Pending' ORDER BY `tgl_pengajuan` DESC");
    $logistik = $n_log->num_rows;

    $n_log2  = mysqli_query($conn, "SELECT * FROM 2022_logistik WHERE laporan = 'Menunggu Verifikasi' ORDER BY `tgl_pengajuan` DESC");
    $logistik2 = $n_log2->num_rows;

    // aset yayasan
    $n_as   = mysqli_query($conn, "SELECT * FROM 2022_aset_yayasan WHERE laporan = 'Belum Laporan' AND status = 'Pending' ORDER BY `tgl_dibuat` DESC");
    $aset   = $n_as->num_rows;

    $n_as2  = mysqli_query($conn, "SELECT * FROM 2022_aset_yayasan WHERE laporan = 'Menunggu Verifikasi' ORDER BY `tgl_dibuat` DESC");
    $aset2  = $n_as2->num_rows;

    // uang makan
    $n_uang     = mysqli_query($conn, "SELECT * FROM 2022_uang_makan WHERE laporan = 'Belum Laporan' AND status = 'Pending' ORDER BY `tgl_dibuat` DESC");
    $uang_makan = $n_uang->num_rows;

    $n_uang2        = mysqli_query($conn, "SELECT * FROM 2022_uang_makan WHERE laporan = 'Menunggu Verifikasi' ORDER BY `tgl_dibuat` DESC");
    $uang_makan2    = $n_uang2->num_rows;

    // gaji karyawan
    $n_gaji         = mysqli_query($conn, "SELECT * FROM 2022_gaji_karyawan WHERE laporan = 'Belum Laporan' AND status = 'Pending' ORDER BY `tgl_dibuat` DESC");
    $gaji_karyawan  = $n_gaji->num_rows;

    $n_gaji2        = mysqli_query($conn, "SELECT * FROM 2022_gaji_karyawan WHERE laporan = 'Menunggu Verifikasi' ORDER BY `tgl_dibuat` DESC");
    $gaji_karyawan2 = $n_gaji2->num_rows;

    // biaya lainnya
    $n_lain         = mysqli_query($conn, "SELECT * FROM 2022_anggaran_lain WHERE laporan = 'Belum Laporan' AND status = 'Pending' ORDER BY `tgl_dibuat` DESC");
    $anggaran_lain  = $n_lain->num_rows;

    $n_lain2        = mysqli_query($conn, "SELECT * FROM 2022_anggaran_lain WHERE laporan = 'Menunggu Verifikasi' ORDER BY `tgl_dibuat` DESC");
    $anggaran_lain2 = $n_lain2->num_rows;

    // Maintenance
    $n_main         = mysqli_query($conn, "SELECT * FROM 2022_maintenance WHERE laporan = 'Belum Laporan' AND status = 'Pending' ORDER BY `tgl_dibuat` DESC");
    $maintenance    = $n_main->num_rows;

    $n_main2        = mysqli_query($conn, "SELECT * FROM 2022_maintenance WHERE laporan = 'Menunggu Verifikasi' ORDER BY `tgl_dibuat` DESC");
    $maintenance2   = $n_main2->num_rows;

    // operasional yayasan
    $n_oy         = mysqli_query($conn, "SELECT * FROM 2022_operasional_yayasan WHERE laporan = 'Belum Laporan' AND status = 'Pending' ORDER BY `tgl_dibuat` DESC");
    $operasional_yayasan    = $n_oy->num_rows;

    $n_oy2        = mysqli_query($conn, "SELECT * FROM 2022_operasional_yayasan WHERE laporan = 'Menunggu Verifikasi' ORDER BY `tgl_dibuat` DESC");
    $operasional_yayasan2   = $n_oy2->num_rows;
} else {
    // program
    $q  = mysqli_query($conn, "SELECT * FROM 2022_program WHERE laporan = 'Belum Laporan' AND status = 'OK' ORDER BY `tgl_pengajuan` DESC");
    $s = $q->num_rows;

    // logistik
    $n_log  = mysqli_query($conn, "SELECT * FROM 2022_logistik WHERE laporan = 'Belum Laporan' AND status = 'OK' ORDER BY `tgl_pengajuan` DESC");
    $logistik = $n_log->num_rows;

    // aset yayasan
    $n_as   = mysqli_query($conn, "SELECT * FROM 2022_aset_yayasan WHERE laporan = 'Belum Laporan' AND status = 'OK' ORDER BY `tgl_dibuat` DESC");
    $aset   = $n_as->num_rows;

    // uang makan
    $n_uang     = mysqli_query($conn, "SELECT * FROM 2022_uang_makan WHERE laporan = 'Belum Laporan' AND status = 'OK' ORDER BY `tgl_dibuat` DESC");
    $uang_makan = $n_uang->num_rows;

    // gaji karyawan
    $n_gaji         = mysqli_query($conn, "SELECT * FROM 2022_gaji_karyawan WHERE laporan = 'Belum Laporan' AND status = 'OK' ORDER BY `tgl_dibuat` DESC");
    $gaji_karyawan  = $n_gaji->num_rows;

    // biaya lainnya
    $n_lain         = mysqli_query($conn, "SELECT * FROM 2022_anggaran_lain WHERE laporan = 'Belum Laporan' AND status = 'OK' ORDER BY `tgl_dibuat` DESC");
    $anggaran_lain  = $n_lain->num_rows;

    // Maintenance
    $n_main         = mysqli_query($conn, "SELECT * FROM 2022_maintenance WHERE laporan = 'Belum Laporan' AND status = 'OK' ORDER BY `tgl_dibuat` DESC");
    $maintenance    = $n_main->num_rows;

    // operasional yayasan
    $n_oy         = mysqli_query($conn, "SELECT * FROM 2022_operasional_yayasan WHERE laporan = 'Belum Laporan' AND status = 'OK' ORDER BY `tgl_dibuat` DESC");
    $operasional_yayasan    = $n_oy->num_rows;

    $n_in      = mysqli_query($conn, "SELECT * FROM income_media WHERE status = 'Menunggu Verifikasi' ORDER BY `tanggal_tf` DESC");
    $income    = $n_in->num_rows;
    
}

?>

<?php if ($_SESSION["id_pengurus"] == "kepala_income") { ?>
<li class="nav-item dropdown">
    <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
        <i class="bi bi-bell"></i>
        <?php if ($s+$logistik+$aset+$uang_makan+$gaji_karyawan+$anggaran_lain+$maintenance+$operasional_yayasan+$income > 0) { ?>
        <span
            class="badge bg-primary badge-number"><?= $s+$logistik+$aset+$uang_makan+$gaji_karyawan+$anggaran_lain+$maintenance+$operasional_yayasan+$income ?></span>
        <?php } ?>
    </a><!-- End Notification Icon -->
    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications ketua-yayasan">
        <?php if ($s+$logistik+$aset+$uang_makan+$gaji_karyawan+$anggaran_lain+$maintenance+$operasional_yayasan+$income > 0) { ?>
        <li class="dropdown-header">
            Kamu mempunyai
            <?= $s+$logistik+$aset+$uang_makan+$gaji_karyawan+$anggaran_lain+$maintenance+$operasional_yayasan+$income ?>
            notifikasi baru
        </li>

        <?php if ($income > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>
        <a href="<?= $_SESSION["username"] ?>.php?id_forms=forms_check">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-credit-card text-warning"></i>
                <div>
                    <h4>Check Income</h4>
                    <p>Ada <?= $income ?> income yang perlu dicek</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($s > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>
        <a href="<?= $_SESSION["username"] ?>.php?id_forms=forms_verifikasi&id_dataManagement=program">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-up text-primary"></i>
                <div>
                    <h4>Pengajuan Program</h4>
                    <p>Ada <?= $s ?> pengajuan perlu dilaporkan</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($logistik > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>
        <a href="<?= $_SESSION["username"] ?>.php?id_forms=forms_verifikasi&id_dataManagement=logistik">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-up text-primary"></i>
                <div>
                    <h4>Pengajuan Logistik</h4>
                    <p>Ada <?= $logistik ?> pengajuan perlu dilaporkan</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($aset > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>
        <a href="<?= $_SESSION["username"] ?>.php?id_forms=forms_verifikasi&id_dataManagement=aset_yayasan">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-up text-primary"></i>
                <div>
                    <h4>Pengajuan Aset Yayasan</h4>
                    <p>Ada <?= $aset ?> pengajuan perlu dilaporkan</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($uang_makan > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>
        <a href="<?= $_SESSION["username"] ?>.php?id_forms=forms_verifikasi&id_dataManagement=uang_makan">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-up text-primary"></i>
                <div>
                    <h4>Pengajuan Uang Makan</h4>
                    <p>Ada <?= $uang_makan ?> pengajuan perlu dilaporkan</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($gaji_karyawan > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>
        <a href="<?= $_SESSION["username"] ?>.php?id_forms=forms_verifikasi&id_dataManagement=gaji_karyawan">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-up text-primary"></i>
                <div>
                    <h4>Pengajuan Gaji Karyawan</h4>
                    <p>Ada <?= $gaji_karyawan ?> pengajuan perlu dilaporkan</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($anggaran_lain > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>
        <a href="<?= $_SESSION["username"] ?>.php?id_forms=forms_verifikasi&id_dataManagement=anggaran_lain">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-up text-primary"></i>
                <div>
                    <h4>Pengajuan Biaya Lainnya</h4>
                    <p>Ada <?= $anggaran_lain ?> pengajuan perlu dilaporkan</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($maintenance > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>
        <a href="<?= $_SESSION["username"] ?>.php?id_forms=forms_verifikasi&id_dataManagement=maintenance">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-up text-primary"></i>
                <div>
                    <h4>Pengajuan Maintenance</h4>
                    <p>Ada <?= $maintenance ?> pengajuan perlu dilaporkan</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($operasional_yayasan > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>
        <a href="<?= $_SESSION["username"] ?>.php?id_forms=forms_verifikasi&id_dataManagement=operasional_yayasan">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-up text-primary"></i>
                <div>
                    <h4>Pengajuan Operasional</h4>
                    <p>Ada <?= $operasional_yayasan ?> pengajuan perlu dilaporkan</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php } else { ?>
        <li class="dropdown-header">
            Tidak ada notifikasi terbaru
        </li>
        <?php } ?>
    </ul><!-- End Notification Dropdown Items -->
</li><!-- End Notification Nav -->

<!-- End Notification Nav -->
<?php } elseif ($_SESSION["id_pengurus"] == "management_keuangan") { ?>
<li class="nav-item dropdown">
    <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
        <i class="bi bi-bell"></i>
        <?php if ($s+$s2+$logistik+$logistik2+$aset+$aset2+$uang_makan+$uang_makan2+$gaji_karyawan+$gaji_karyawan2+$anggaran_lain+$anggaran_lain2+$maintenance+$maintenance2+$operasional_yayasan+$operasional_yayasan2 > 0) { ?>
        <span
            class="badge bg-primary badge-number"><?= $s+$s2+$logistik+$logistik2+$aset+$aset2+$uang_makan+$uang_makan2+$gaji_karyawan+$gaji_karyawan2+$anggaran_lain+$anggaran_lain2+$maintenance+$maintenance2+$incomeHumas+$operasional_yayasan+$operasional_yayasan2 ?></span>
        <?php } ?>
    </a><!-- End Notification Icon -->
    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications ketua-yayasan">
        <?php if ($s+$s2+$logistik+$logistik2+$aset+$aset2+$uang_makan+$uang_makan2+$gaji_karyawan+$gaji_karyawan2+$anggaran_lain+$anggaran_lain2+$maintenance+$maintenance2+$operasional_yayasan+$operasional_yayasan2 > 0) { ?>
        <li class="dropdown-header">
            Kamu mempunyai
            <?= $s+$s2+$logistik+$logistik2+$aset+$aset2+$uang_makan+$uang_makan2+$gaji_karyawan+$gaji_karyawan2+$anggaran_lain+$anggaran_lain2+$maintenance+$maintenance2+$operasional_yayasan+$operasional_yayasan2 ?>
            notifikasi baru
        </li>

        <?php if ($s > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>
        <a href="<?= $_SESSION["username"] ?>.php?id_checklist=checklist_pengajuan">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-up text-primary"></i>
                <div>
                    <h4>Pengajuan Program</h4>
                    <p>Ada <?= $s ?> pengajuan perlu disetujui</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($logistik > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>
        <a href="<?= $_SESSION["username"] ?>.php?id_checklist=checklist_pengajuanLogistik">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-up text-primary"></i>
                <div>
                    <h4>Pengajuan Logistik</h4>
                    <p>Ada <?= $logistik ?> pengajuan perlu disetujui</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($aset > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>
        <a href="<?= $_SESSION["username"] ?>.php?id_checklist=checklist_pengajuanAset">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-up text-primary"></i>
                <div>
                    <h4>Pengajuan Aset Yayasan</h4>
                    <p>Ada <?= $aset ?> pengajuan perlu disetujui</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($uang_makan > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>
        <a href="<?= $_SESSION["username"] ?>.php?id_checklist=checklist_pengajuanUangmakan">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-up text-primary"></i>
                <div>
                    <h4>Pengajuan Uang Makan</h4>
                    <p>Ada <?= $uang_makan ?> pengajuan perlu disetujui</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($gaji_karyawan > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>
        <a href="<?= $_SESSION["username"] ?>.php?id_checklist=checklist_pengajuanGajikaryawan">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-up text-primary"></i>
                <div>
                    <h4>Pengajuan Gaji Karyawan</h4>
                    <p>Ada <?= $gaji_karyawan ?> pengajuan perlu disetujui</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($anggaran_lain > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>
        <a href="<?= $_SESSION["username"] ?>.php?id_checklist=checklist_pengajuanAnggaranlain">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-up text-primary"></i>
                <div>
                    <h4>Pengajuan Biaya Lainnya</h4>
                    <p>Ada <?= $anggaran_lain ?> pengajuan perlu disetujui</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($maintenance > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>
        <a href="<?= $_SESSION["username"] ?>.php?id_checklist=checklist_pengajuanMaintenance">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-up text-primary"></i>
                <div>
                    <h4>Pengajuan Maintenance</h4>
                    <p>Ada <?= $maintenance ?> pengajuan perlu disetujui</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($operasional_yayasan > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>
        <a href="<?= $_SESSION["username"] ?>.php?id_checklist=checklist_pengajuanOperasional">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-up text-primary"></i>
                <div>
                    <h4>Pengajuan Operasional</h4>
                    <p>Ada <?= $operasional_yayasan ?> pengajuan perlu disetujui</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($s2 > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>

        <a href="<?= $_SESSION["username"] ?>.php?id_checklist=checklist_laporan">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-down text-success"></i>
                <div>
                    <h4>Laporan Program</h4>
                    <p>Ada <?= $s2 ?> laporan perlu disutujui</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($logistik2 > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>

        <a href="<?= $_SESSION["username"] ?>.php?id_checklist=checklist_laporanLogistik">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-down text-success"></i>
                <div>
                    <h4>Laporan Logistik</h4>
                    <p>Ada <?= $logistik2 ?> laporan perlu disutujui</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($aset2 > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>

        <a href="<?= $_SESSION["username"] ?>.php?id_checklist=checklist_laporanAset">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-down text-success"></i>
                <div>
                    <h4>Laporan Aset Yayasan</h4>
                    <p>Ada <?= $aset2 ?> laporan perlu disutujui</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($uang_makan2 > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>

        <a href="<?= $_SESSION["username"] ?>.php?id_checklist=checklist_laporanUangmakan">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-down text-success"></i>
                <div>
                    <h4>Laporan Uang Makan</h4>
                    <p>Ada <?= $uang_makan2 ?> laporan perlu disutujui</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($gaji_karyawan2 > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>

        <a href="<?= $_SESSION["username"] ?>.php?id_checklist=checklist_laporanGajikaryawan">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-down text-success"></i>
                <div>
                    <h4>Laporan Gaji Karyawan</h4>
                    <p>Ada <?= $gaji_karyawan2 ?> laporan perlu disutujui</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($anggaran_lain2 > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>

        <a href="<?= $_SESSION["username"] ?>.php?id_checklist=checklist_laporanAnggaranlain">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-down text-success"></i>
                <div>
                    <h4>Laporan Biaya Lainnya</h4>
                    <p>Ada <?= $anggaran_lain2 ?> laporan perlu disutujui</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($maintenance2 > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>

        <a href="<?= $_SESSION["username"] ?>.php?id_checklist=checklist_laporanMaintenance">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-down text-success"></i>
                <div>
                    <h4>Laporan Maintenance</h4>
                    <p>Ada <?= $maintenance2 ?> laporan perlu disutujui</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php if ($operasional_yayasan2 > 0) { ?>
        <li>
            <hr class="dropdown-divider">
        </li>

        <a href="<?= $_SESSION["username"] ?>.php?id_checklist=checklist_laporanOperasional">
            <li class="notification-item"><span class="badge badge-danger badge-counter">New</span>
                <i class="bi bi-graph-down text-success"></i>
                <div>
                    <h4>Laporan Operasional</h4>
                    <p>Ada <?= $operasional_yayasan2 ?> laporan perlu disutujui</p>
                    <p><?= date("d-m-Y") ?></p>
                </div>
            </li>
        </a>
        <?php } ?>

        <?php } else { ?>
        <li class="dropdown-header">
            Tidak ada notifikasi terbaru
        </li>
        <?php } ?>
    </ul><!-- End Notification Dropdown Items -->
</li><!-- End Notification Nav -->
<?php } else { ?>
<?php } ?>