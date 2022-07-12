<div class="card-body">
    <h5 class="card-title">FORM PENGAJUAN</h5>
</div>

<div id="form">
    <form action="" method="post" onsubmit="return validasi_input(this)" class="user">
        <div class="input-group mb-3">
            <input type="hidden" name="link" value="<?= $_SESSION["id_pengurus"] ?>">
            <input type="hidden" name="posisi" value="<?= $_SESSION["posisi"] ?>">
            <span class="input-group-text" id="basic-addon1">Program</span>
            <select class="form-select" name="program" aria-label="Default select example">
                <option selected value="">Pilih Salah Satu Program</option>
                <option value="Program Pendidikan Yatim">Pendidikan Yatim</option>
                <option value="Program Kesehatan Yatim">Kesehatan Yatim</option>
                <option value="Program Santunan Yatim">Santunan Yatim</option>
                <option value="Program Uang Saku Yatim">Uang Saku Yatim</option>
                <option value="Program Ceria Yatim">Ceria Yatim</option>
                <option value="Program Belanja Yatim">Belanja Yatim</option>
                <option value="Program Papan Yatim">Papan Yatim</option>
                <option value="Program Bakti Sosial">Bakti Sosial</option>
                <option value="Program Makan Sehat Yatim">Makan Sehat Yatim</option>
                <option value="Program Sembako Yatim">Sembako Yatim</option>
                <option value="Program Pesantren Yatim">Pesantren Yatim</option>
                <option value="Gaji Kepala Sekolah">Gaji Kepala Sekolah</option>
                <option value="Gaji Penjemput">Gaji Penjemput</option>
            </select>
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
        <div class="form-group mb-3">
            <div class="form-text mb-2">
                Perencanaan Program
            </div>
            <input type="text" class="form-control" name="deskripsi" placeholder="perencanaan program"
                style="text-transform: capitalize;" autocomplete="off">
        </div>

        <div class="form-text mb-2">
            Rencana Anggaran
        </div>
        <div class="input-group mb-4">
            <span class="input-group-text" id="basic-addon1"><b>Rp</b></span>
            <input type="text" class="form-control admin_rp" name="anggaran" maxlength="11"
                placeholder="Rencana Anggaran" onkeypress="return hanyaAngka(event)" autocomplete="off">
        </div>
        <div class="button">
            <input type="submit" name="input" class="btn btn-primary w-100" value="Ajukan">
        </div>
    </form>
</div>