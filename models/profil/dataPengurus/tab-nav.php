<?php if ($_SESSION["id_pengurus"] == "ketua_yayasan") { ?>
<li class="nav-item">
    <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-program">Admin</button>
</li>

<li class="nav-item">
    <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-logistik">Facebook
        <?php if ($pengurus_depok > 0) { ?>
        (<?= $pengurus_depok ?>)
        <?php } ?>
    </button>
</li>

<?php } else { ?>

<li class="nav-item">
    <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-logistik">Facebook
        <?php if ($pengurus_depok > 0) { ?>
        (<?= $pengurus_depok ?>)
        <?php } ?>
    </button>
</li>
<?php } ?>