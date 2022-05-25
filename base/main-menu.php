<main id="main" class="main">
    <div class="pagetitle">


        <?php if ($_SESSION["id_pengurus"] == "facebook_depok") { ?>

        <h1>Dashboard Laporan Media Sosial</h1>
        <?php
        $bulan      = date("Y-m-d");
        $bln       = substr($bulan, 5,-3);
        
        $q  = mysqli_query($conn, "SELECT * FROM laporan_media WHERE pemegang = '$nama' AND MONTH(tgl_laporan) = '$bln' ORDER BY `tgl_laporan` DESC");
        ?>

        <?php } else { ?>
        <h1>Dashboard <?= $_SESSION["posisi"] ?></h1>
        <?php } ?>

        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= $_SESSION["username"] ?>.php">Home</a></li>
                <?php if ($_GET["id_adminKey"] == "") { ?>
                <li class="breadcrumb-item">Dashboard</li>

                <?php } else { ?>
                <li class="breadcrumb-item active"><?= ucwords($_GET["id_adminKey"]); ?></li>
                <?php } ?>

                <?php if ($_GET["id_laporan"] == "laporan_media") { ?>
                <li class="breadcrumb-item active">Laporan Media</li>
                <?php } ?>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">

            <!-- Left side columns -->
            <div class="col-lg-12">
                <div class="row">

                    <?php if ($_SESSION["id_pengurus"] == "admin_web") { ?>
                    <?php if ($_GET["id_adminKey"] == "") { ?>
                    <?php
                        include '../models/base_menu/main-menu_admin.php';
                        ?>

                    <?php } elseif ($_GET["id_adminKey"] == "edit_income") { ?>
                    <?php
                        include '../models/base_admin/edit.php';
                        ?>

                    <?php } else { ?>
                    <div class="col-12">
                        <div class="card">
                            <?php include '../models/base_admin/admin_menu.php'; ?>
                        </div>
                    </div>

                    <?php } ?>

                    <?php } else { ?>
                    <?php if ($_GET["id_laporan"] == "") { ?>
                    <?php
                        include '../models/base_menu/sub_main-menu-cardList.php';
                    ?>

                    <?php
                        include '../models/base_menu/sub_main-menu-chart.php';
                    ?>
                    <?php } else { ?>
                    <?php
                        include '../models/base_menu/sub_main-menu-listAkun.php';
                    ?>
                    <?php } ?>

                    <?php } ?>

                    <?php if ($_SESSION["id_pengurus"] == "facebook_depok") { ?>
                    <!-- Laporan  -->
                    <div class="col-12">
                        <div class="card">
                            <?php include '../models/database/pemasukan/sub-lapAkun.php'; ?>
                        </div>
                    </div><!-- End Laporan  -->
                    <?php } ?>

                    <?php if ($_SESSION["id_pengurus"] == "manager_facebook") { ?>
                    <?php
                        include '../models/base_menu/sub_main-menu-listAkun.php';
                    ?>
                    <?php } ?>

                </div>
            </div><!-- End Left side columns -->

        </div>
    </section>

</main><!-- End #main -->