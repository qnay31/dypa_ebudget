$("#management").change(function() {
    // variabel dari nilai combo box 
    var management = $("#management").val();
    // console.log(id_kendaraan);
    // Menggunakan ajax untuk mengirim dan dan menerima data dari server
    $.ajax({
        type: "POST",
        dataType: "html",
        url: "../list_management.php",
        data: "management=" + management,
        success: function(data) {
            $("#bagian").html(data);
            // $("#tanggal").html(data);
        }
    });
});

$("#logistikGedung").change(function() {
    // variabel dari nilai combo box 
    var logistikGedung = $("#logistikGedung").val();
    // console.log(id_kendaraan);
    // Menggunakan ajax untuk mengirim dan dan menerima data dari server
    $.ajax({
        type: "POST",
        dataType: "html",
        url: "../list_logistik.php",
        data: "logistikGedung=" + logistikGedung,
        success: function(data) {
            $("#cabang").html(data);
            // $("#tanggal").html(data);
        }
    });
});

$("#akun").change(function() {
    // variabel dari nilai combo box 
    var akun = $("#akun").val();
    // console.log(id_kendaraan);
    // Menggunakan ajax untuk mengirim dan dan menerima data dari server
    $.ajax({
        type: "POST",
        dataType: "html",
        url: "../list_pertemanan.php",
        data: "akun=" + akun,
        success: function(data) {
            $("#teman").html(data);
            // $("#keterangan").html(data);
            // $("#tanggal").html(data);
        }
    });
});

$("#kTeman").change(function() {
    // variabel dari nilai combo box 
    var kTeman = $("#kTeman").val();
    // console.log(id_kendaraan);
    // Menggunakan ajax untuk mengirim dan dan menerima data dari server
    $.ajax({
        type: "POST",
        dataType: "html",
        url: "../list_keteranganTeman.php",
        data: "kTeman=" + kTeman,
        success: function(data) {
            $("#keterangan").html(data);
            // $("#tanggal").html(data);
        }
    });
});

$(document).on('change', '.file-input', function() {

    var filesCount = $(this)[0].files.length;

    var textbox = $(this).prev();

    if (filesCount === 1) {
        var fileName = $(this).val().split('\\').pop();
        textbox.text(fileName);
    } else {
        textbox.text(filesCount + ' files selected');
    }



    if (typeof(FileReader) != "undefined") {
        var dvPreview = $("#divImageMediaPreview");
        dvPreview.html("");
        $($(this)[0].files).each(function() {
            var file = $(this);
            var reader = new FileReader();
            reader.onload = function(e) {
                var img = $("<img />");
                img.attr("style", "width: 100%; padding: 10px");
                img.attr("src", e.target.result);
                dvPreview.append(img);
            }
            reader.readAsDataURL(file[0]);
        });
    } else {
        alert("This browser does not support HTML5 FileReader.");
    }
});

$(document).ready(function() {

    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
                $('.profile-pic').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $(".file-upload").on('change', function() {
        readURL(this);
    });

    $(".upload-button").on('click', function() {
        $(".file-upload").click();
    });
});

$(".toggle-password").click(function () {

    $(this).toggleClass("fa-eye fa-eye-slash");
    var input = $($(this).attr("toggle"));
    if (input.attr("type") == "password") {
        input.attr("type", "text");
    } else {
        input.attr("type", "password");
    }
});

// validasi program, logistik, humas, edit
function validasi_input(form) {

    //validasi dimulai
    if (form.program.value == "") {
        alert("Pilihan ini tidak boleh kosong!");
        form.program.focus();
        return (false);

    } else if (form.tanggal.value == "") {
        alert("Tanggal Pengajuan Harus Diisi!");
        form.tanggal.focus();
        return (false);
    } else if (form.deskripsi.value == "") {
        alert("Perencanaan Harus Diisi!");
        form.deskripsi.focus();
        return (false);
    } else if (form.anggaran.value == "") {
        alert("Alokasi Dana Harus Diisi!");
        form.anggaran.focus();
        return (false);
    }
}

// validasi laporan program, logistik, humas, edit
function validasi_input2(form) {

    //validasi dimulai
    if (form.tanggal_laporan.value == "") {
        alert("Tanggal Laporan Harus Diisi!");
        form.tanggal_laporan.focus();
        return (false);
    } else if (form.deskripsi_laporan.value == "") {
        alert("Deskripsi Laporan Harus Diisi!");
        form.deskripsi_laporan.focus();
        return (false);
    } else if (form.dana_laporan.value == "") {
        alert("Pemakaian Dana Harus Diisi!");
        form.dana_laporan.focus();
        return (false);
    }
}

// validasi daily
function validasi_input3(form) {
    var minchars = 5;
    //validasi dimulai
    if (form.tanggal.value == "") {
        alert("Tanggal Aktivitas Harus Diisi!");
        form.tanggal.focus();
        return (false);
    } else if (form.aktivitas.value == "") {
        alert("Aktivitas Harus Diisi!");
        form.aktivitas.focus();
        return (false);
    } else if (form.aktivitas.value.length < minchars) {
        alert("Aktivitas Minimal 5 Huruf!");
        form.aktivitas.focus();
        return (false);
    } else if (form.deskripsi.value == "") {
        alert("Deskripsi Harus Diisi!");
        form.deskripsi.focus();
        return (false);
    }
}

// validasi input
function validasi_user(form) {
    var minchars = 5;
    //validasi dimulai
    if (form.username.value == "") {
        alert("Username TIdak Boleh Kosong!");
        form.username.focus();
        return (false);
    } else if (form.username.value.length < minchars) {
        alert("Username Minimal 5 Karakter!");
        form.username.focus();
        return (false);
    }
}

function validasi_ubahpw(form) {
    var minchars = 5;
    //validasi dimulai
    if (form.password_lama.value == "") {
        alert("Password Lama Harus Diisi!");
        form.password_lama.focus();
        return (false);
    } else if (form.password_baru.value == "") {
        alert("Password Baru Harus Diisi!");
        form.password_baru.focus();
        return (false);
    } else if (form.password_baru.value.length < minchars) {
        alert("Password Baru Minimal 5 Huruf!");
        form.password_baru.focus();
        return (false);
    } else if (form.konfirmasi_password.value == "") {
        alert("Konfirmasi Password Harus Diisi!");
        form.konfirmasi_password.focus();
        return (false);
    }

}

// validasi profil
function validasi_profil(form) {
    //validasi dimulai
    if (form.nama.value == "") {
        alert("Nama TIdak Boleh Kosong!");
        form.nama.focus();
        return (false);
    } else if (form.username.value == "") {
        alert("Username Tidak Boleh Kosong!");
        form.username.focus();
        return (false);
    }
}

// validasi pemasukan
function validasi_income(form) {
    //validasi dimulai
    if (form.tanggal.value == "") {
        alert("Tanggal Harus Diisi!");
        form.tanggal.focus();
        return (false);
    } else if (form.lokasi.value == "") {
        alert("Lokasi Pengambilan Harus Diisi!");
        form.lokasi.focus();
        return (false);
    } else if (form.jumlah.value == "") {
        alert("Jumlah Pengambilan Harus Diisi!");
        form.jumlah.focus();
        return (false);
    } else if (form.income.value == "") {
        alert("Income Harus Diisi!");
        form.income.focus();
        return (false);
    }
}

// validasi huruf dan angka
$(document).ready(function () {

    $('#alpabet2').keyup(function () {
        var $th = $(this);
        $th.val($th.val().replace(/[^a-zA-Z0-9 /,-.& )(]/g, function (str) {
            alert('Kamu menulis " ' + str + ' ".\n\ dimohon huruf dan angka saja.');
            return '';
        }));
    });

    $('#alpabet3').keyup(function () {
        var $th = $(this);
        $th.val($th.val().replace(/[^a-zA-Z0-9_-]/g, function (str) {
            alert('Kamu menulis " ' + str + ' ".\n\ dimohon huruf dan angka saja.');
            return '';
        }));
    });

    $('#password-field').keyup(function () {
        var $th = $(this);
        $th.val($th.val().replace(/[^a-zA-Z0-9]/g, function (str) {
            alert('Kamu menulis " ' + str + ' ".\n\ dimohon huruf dan angka saja.');
            return '';
        }));
    });

    $('#password-field2').keyup(function () {
        var $th = $(this);
        $th.val($th.val().replace(/[^a-zA-Z0-9]/g, function (str) {
            alert('Kamu menulis " ' + str + ' ".\n\ dimohon huruf dan angka saja.');
            return '';
        }));
    });

    $('#password-field3').keyup(function () {
        var $th = $(this);
        $th.val($th.val().replace(/[^a-zA-Z0-9]/g, function (str) {
            alert('Kamu menulis " ' + str + ' ".\n\ dimohon huruf dan angka saja.');
            return '';
        }));
    });

    $('#alpabet_user').keyup(function () {
        var $th = $(this);
        $th.val($th.val().replace(/[^a-zA-Z0-9_-]/g, function (str) {
            alert('Kamu menulis " ' + str + ' ".\n\ dimohon huruf dan angka saja.');
            return '';
        }));
    });
})

$("#alpabet_user").on({
    keydown: function (e) {
        if (e.which === 32)
            return false;
    },
    keyup: function () {
        this.value = this.value.toLowerCase();
    },
    change: function () {
        this.value = this.value.replace(/\s/g, "");

    }
})

// no hp

function hanyaAngka(evt) {
    var charCode = (evt.which) ? evt.which : e.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))

        return false;
    return true;
}