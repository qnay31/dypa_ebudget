<?php
include "function.php";
if (isset($_POST['management'])) {
    $divisi = $_POST["management"];
?>

<?php if ($divisi == "Pembelian Barang") { ?>
<div class="input-group mb-3">
    <span class="input-group-text" id="basic-addon1"><b>Qty</b></span>
    <input type="text" class="form-control admin_rp" name="qty" maxlength="11" placeholder="qty perencaan"
        onkeypress="return hanyaAngka(event)" autocomplete="off" required
        oninvalid="this.setCustomValidity('qty harus diisi')" oninput="this.setCustomValidity('')">
    <span class="input-group-text" id="basic-addon1"><b>Pcs</b></span>
</div>

<?php } else { ?>
<input type="hidden" class="form-control" name="qty">
<?php } ?>


<?php } ?>