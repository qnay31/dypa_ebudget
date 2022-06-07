<?php

    if ($_SESSION["username"] == "leader_fb") {
        $fbTajur = 'Facebook Tajur';

    } elseif ($_SESSION["username"] == "leader_2") {
        $fbBogor = 'Facebook Bogor';

    } else {
        $fbTajur = 'Facebook Tajur';
        $fbBogor = 'Facebook Bogor';

    }

if ($_SESSION["id_pengurus"] == "manager_facebook") {
    if ($_SESSION["username"] == "leader_fb") {
        $qGroup = mysqli_query($conn, "SELECT team FROM data_akun WHERE team = '$fbTajur'");

    } else {
        $qGroup = mysqli_query($conn, "SELECT team FROM data_akun WHERE team = '$fbBogor'");
    }
    
    $nGroup = $qGroup -> num_rows;  
    
} else {
    $qGroup = mysqli_query($conn, "SELECT team FROM data_akun WHERE team = '$fbTajur' OR team = '$fbBogor'");
    $nGroup = $qGroup -> num_rows;
}



?>
<div class="tab-pane fade show active pt-3" id="changeTeam">
    <div class="card-body">
        <?php if ($nGroup > 0) { ?>
        <h5 class="card-title">DATA TEAM MEDIA SOSIAL</h5>
        <div class="table-responsive">
            <table id="tabel-dataTeamMedia" class="table table-bordered">
                <thead>
                    <tr style="text-align: center;">
                        <th scope="col">No</th>
                        <th scope="col">Nama Pengurus</th>
                        <th scope="col">Cabang</th>
                        <th scope="col">Posisi</th>
                        <th scope="col">Team</th>
                        <?php if ($_SESSION["id_pengurus"] == "manager_facebook") { ?>
                        <th scope="col"><input type="checkbox" class="form-check-input check_all" /></th>

                        <?php } ?>
                    </tr>
                </thead>
                <tbody>
                    <!-- server data -->
                </tbody>
            </table>

            <?php if ($_SESSION["id_pengurus"] == "manager_facebook") { ?>
            <div align="left">
                <button type="button" name="btn_delete" id="btn_delete" class="btn btn-danger mb-4">Delete
                    Selected</button>

                <button type="button" class="btn btn-primary mb-4" onClick="history.go(0);"><i
                        class="bi bi-snow3"></i></button>
            </div>
            <?php } ?>
        </div>
        <?php } else { ?>
        <h5 class="card-title">TIDAK ADA TEAM SAAT INI</h5>
        <?php } ?>
    </div>
</div>