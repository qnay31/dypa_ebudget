<div class="card-body">
    <h5 class="card-title">FORM PENGAJUAN</h5>
</div>

<div id="form">
    <form action="" method="post" onsubmit="return validasi_input(this)" class="user">
        <div class="input-group mb-3">
            <input type="hidden" name="link" value="<?= $_SESSION["id_pengurus"] ?>">
            <span class="input-group-text" id="basic-addon1">Logistik</span>
            <input type="text" class="form-control" name="program" value="Logistik Gedung DYPA" readonly>
        </div>

        <div class="form-group mb-3">
            <div class="form-text mb-2">
                Cabang
            </div>
            <?php if ($_SESSION["id_pengurus"] == "kepala_income") { ?>
            <input type="text" class="form-control" name="cabang" value="Tajur" readonly>

            <?php } else { ?>
            <input type="text" class="form-control" name="cabang" value="Bogor" readonly>

            <?php } ?>
        </div>

        <div class="form-group mb-3">
            <div class="form-text mb-2">
                Tanggal Pengajuan
            </div>
            <input type="date" class="form-control" name="tanggal">
        </div>
        <div class="mb-3">
            <div id="disabledSelect" class="form-text mb-2">
                Deskripsi Perencanaan
            </div>
            <input type="text" class="form-control" name="deskripsi" placeholder="Contoh: Logistik Konsumtif"
                style="text-transform: capitalize;" autocomplete="off">
        </div>

        <div id="disabledSelect" class="form-text mb-2">
            Masukan Anggaran Kamu
        </div>
        <div class="input-group mb-4">
            <span class="input-group-text" id="basic-addon1"><b>Rp</b></span>
            <input type="text" class="form-control admin_rp" name="anggaran" maxlength="11" placeholder="100.000"
                onkeypress="return hanyaAngka(event)" autocomplete="off">
        </div>
        <div class="button">
            <input type="submit" name="input" class="btn btn-primary w-100" value="Ajukan">
        </div>
    </form>
</div>