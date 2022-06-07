<div class="tab-pane fade show active profile-overview" id="createTeam">
    <?php if ($_SESSION["id_pengurus"] == "manager_facebook") { ?>
    <form action="" method="post">
        <div class="input-group mt-3">
            <input type="hidden" name="link" value="<?= $_SESSION["id_pengurus"] ?>">
            <input type="hidden" name="posisi" value="<?= $_SESSION["posisi"] ?>">
            <span class="input-group-text" id="basic-addon1">Team</span>
            <?php if ($_SESSION["username"] == "leader_fb") { ?>
            <input type="text" class="form-control" name="team" value="Facebook Tajur" readonly>

            <?php } else { ?>
            <input type="text" class="form-control" name="team" value="Facebook Bogor" readonly>
            <?php } ?>
        </div>
        <div class="form-group mb-3">
            <div class="form-text mb-2">
                Daftar Pengurus
            </div>
            <select class="form-select" id="namaPengurus" name="namaList[]" required
                oninvalid="this.setCustomValidity('Daftar tim tidak boleh kosong')" oninput="this.setCustomValidity('')"
                multiple>
                <?php
                    $fetchData = mysqli_query($conn, "SELECT * FROM data_akun WHERE team = '' GROUP BY pemegang ORDER BY `posisi` ASC, pemegang ASC");
                ?>
                <?php
                    while ($data = mysqli_fetch_array($fetchData)) { 
                        $nama = strtolower($data['pemegang']) ?>
                <option value="<?= $data['pemegang'];?>">
                    <?= ucwords($nama) ?> - Facebook
                </option>

                <?php } ?>
            </select>
        </div>
        <div class="button">
            <input type="submit" name="createTeam" class="btn btn-primary w-100" value="Buat Tim">
        </div>
    </form>
    <?php } ?>

    <?php include '../models/team/detailIncome.php'; ?>

</div>