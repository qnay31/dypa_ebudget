<div class="card-body">
    <ul class="nav nav-tabs nav-tabs-bordered">
        <?php if ($_SESSION["id_pengurus"] == "manager_facebook") { ?>
        <?php if ($_GET["idTeam"] == "teamMedia") { ?>
        <li class="nav-item">
            <a class="nav-link active" href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia">Buat Tim</a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="<?= $_SESSION["username"] ?>.php?idTeam=changeMedia">Ubah Tim</a>
        </li>

        <?php } else { ?>
        <li class="nav-item">
            <a class="nav-link" href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia">Buat Tim</a>
        </li>

        <li class="nav-item">
            <a class="nav-link active" href="<?= $_SESSION["username"] ?>.php?idTeam=changeMedia">Ubah Tim</a>
        </li>
        <?php } ?>

        <?php } else { ?>
        <?php if ($_GET["idTeam"] == "teamMedia") { ?>
        <li class="nav-item">
            <a class="nav-link active" href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia">Income Tim</a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="<?= $_SESSION["username"] ?>.php?idTeam=changeMedia">Data Tim</a>
        </li>

        <?php } else { ?>
        <li class="nav-item">
            <a class="nav-link" href="<?= $_SESSION["username"] ?>.php?idTeam=teamMedia">Income Tim</a>
        </li>

        <li class="nav-item">
            <a class="nav-link active" href="<?= $_SESSION["username"] ?>.php?idTeam=changeMedia">Data Tim</a>
        </li>
        <?php } ?>
        <?php } ?>
    </ul>

    <div class="tab-content">
        <?php if ($_GET["idTeam"] == "teamMedia") { ?>
        <?php include '../models/team/sub/sub-createNewTeam.php' ?>

        <?php } else { ?>
        <?php include '../models/team/sub/sub-changeNewTeam.php'; ?>
        <?php } ?>
    </div><!-- End Bordered Tabs -->
</div>