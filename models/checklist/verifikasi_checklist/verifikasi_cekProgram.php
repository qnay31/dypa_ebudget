<div class="card-body">
    <h5 class="card-title">CHECKLIST VERIFIKASI</h5>
    <div class="table-responsive">
        <div class="text-center">
            <label for=""><b style="color: black;">Verifikasi Program</b>
                <hr>
            </label>
        </div>
        <table id="tabel-data_verifikasi" class="table table-bordered">
            <thead>
                <tr style="text-align: center;">
                    <th scope="col">No</th>
                    <th scope="col">Program</th>
                    <th scope="col">Diajukan Oleh</th>
                    <th scope="col">Cabang</th>
                    <th scope="col">Tgl Pengajuan</th>
                    <th scope="col">Perencanaan</th>
                    <th scope="col">Status</th>
                    <th scope="col">Keterangan</th>
                    <th scope="col">Anggaran</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $no = 1;
                    while ($r = $q2->fetch_assoc()) {
                    $bln       = substr($r['tgl_pengajuan'], 5,-3);
                ?>

                <tr>
                    <td style="text-align: center;"><?= $no++ ?></td>
                    <td><?= ucwords($r['program']) ?></td>
                    <td>
                        <?php if ($r['posisi'] == "Kepala Income") { ?>
                        Fadhila Amelia Putri

                        <?php } else { ?>
                        Titi Sugianti
                        <?php } ?>
                    </td>
                    <td style="text-align: center;"><?= ucwords($r['cabang']) ?></td>
                    <td style="text-align: center;">
                        <?= date('d-m-Y', strtotime($r['tgl_pengajuan'])); ?></td>
                    <td><?= ucwords($r['deskripsi']) ?></td>
                    <td style="text-align: center;"><b><?= ucwords($r['status']) ?></b></td>
                    <td>
                        <?php if ($r["status"] == "OK") { ?>
                        <b>Belum Membuat Laporan</b>
                        <?php } else { ?>
                        Menunggu Konfirmasi Admin
                        <?php } ?>
                    </td>
                    <td>Rp. <?= number_format($r['dana_anggaran'],0,"." , ".") ?></td>
                </tr>

                <?php } ?>
            </tbody>
            <tfoot>
                <tr style="text-align: center;">
                    <th colspan="8">Total</th>
                    <th></th>
                </tr>
            </tfoot>
        </table>
    </div>
</div>