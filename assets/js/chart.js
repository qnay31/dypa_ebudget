// chart Bar Global program
$.getJSON("https://localhost/dypa_ebudget/data/program_2022.php", function (data) {

    var isi_labels = [];
    var isi_data = [];
    var isi_data2 = [];

    // console.log(isi_data2);

    $(data).each(function (i) {
        isi_labels.push(data[i].bulan);
        isi_data.push(data[i].anggaran_global);
        isi_data2.push(data[i].terpakai_global);
    });

    // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito',
        '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    // Bar Chart Example
    var ctx = document.getElementById("chartBar_global_program");
    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: isi_labels,
            datasets: [{
                    label: "Anggaran",
                    backgroundColor: "#4e73df",
                    hoverBackgroundColor: "#4154f1",
                    borderColor: "#4e73df",
                    data: isi_data,
                },

                {
                    label: "Pemakaian",
                    backgroundColor: "#2eca6a",
                    hoverBackgroundColor: "#2eca1a",
                    borderColor: "#2eca6a",
                    data: isi_data2,
                }
            ],
        },
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: [{
                    time: {
                        unit: 'month'
                    },
                    gridLines: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        maxTicksLimit: 12
                    },
                    maxBarThickness: 25,
                }],
                yAxes: [{
                    ticks: {
                        min: 0,
                        max: 100000000,
                        maxTicksLimit: 10,
                        callback: function (value, index, values) {
                            if (parseInt(value) > 999) {
                                return 'Rp. ' + value.toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else if (parseInt(value) < -999) {
                                return '-Rp. ' + Math.abs(value).toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else {
                                return 'Rp. ' + value;
                            }
                        }
                    },
                    gridLines: {
                        color: "rgb(234, 236, 244)",
                        zeroLineColor: "rgb(234, 236, 244)",
                        drawBorder: false,
                        borderDash: [2],
                        zeroLineBorderDash: [2]
                    }
                }],
            },
            legend: {
                display: false
            },
            tooltips: {
                titleMarginBottom: 10,
                titleFontColor: '#e0e0e0',
                titleFontSize: 14,
                backgroundColor: "rgb(32,32,32)",
                bodyFontColor: "#e0e0e0",
                borderColor: '#202020',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
                callbacks: {
                    label: function (tooltipItem, chart) {
                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label ||
                            '';
                        return datasetLabel + ': Rp. ' + Number(tooltipItem.yLabel)
                            .toFixed(0)
                            .replace(/./g,
                                function (c,
                                    i, a) {
                                    return i > 0 && c !== "." && (a.length - i) % 3 === 0 ?
                                        "." +
                                        c : c;
                                });
                    }
                }
            },
        }
    });
});

// chart bar depok program pendidikan
$.getJSON("https://localhost/dypa_ebudget/data/program_2022.php", function (data) {

    var isi_labels = [];
    var isi_data = [];
    var isi_data2 = [];

    // console.log(isi_data2);

    $(data).each(function (i) {
        isi_labels.push(data[i].bulan);
        isi_data.push(data[i].anggaran_pendidikan);
        isi_data2.push(data[i].terpakai_pendidikan);
    });

    // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito',
        '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    // Bar Chart Example
    var ctx = document.getElementById("chartBar_depok_progPendidikan");
    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: isi_labels,
            datasets: [{
                    label: "Anggaran",
                    backgroundColor: "#4e73df",
                    hoverBackgroundColor: "#4154f1",
                    borderColor: "#4e73df",
                    data: isi_data,
                },

                {
                    label: "Pemakaian",
                    backgroundColor: "#2eca6a",
                    hoverBackgroundColor: "#2eca1a",
                    borderColor: "#2eca6a",
                    data: isi_data2,
                }
            ],
        },
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: [{
                    time: {
                        unit: 'month'
                    },
                    gridLines: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        maxTicksLimit: 12
                    },
                    maxBarThickness: 25,
                }],
                yAxes: [{
                    ticks: {
                        min: 0,
                        max: 20000000,
                        maxTicksLimit: 10,
                        callback: function (value, index, values) {
                            if (parseInt(value) > 999) {
                                return 'Rp. ' + value.toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else if (parseInt(value) < -999) {
                                return '-Rp. ' + Math.abs(value).toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else {
                                return 'Rp. ' + value;
                            }
                        }
                    },
                    gridLines: {
                        color: "rgb(234, 236, 244)",
                        zeroLineColor: "rgb(234, 236, 244)",
                        drawBorder: false,
                        borderDash: [2],
                        zeroLineBorderDash: [2]
                    }
                }],
            },
            legend: {
                display: false
            },
            tooltips: {
                titleMarginBottom: 10,
                titleFontColor: '#e0e0e0',
                titleFontSize: 14,
                backgroundColor: "rgb(32,32,32)",
                bodyFontColor: "#e0e0e0",
                borderColor: '#202020',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
                callbacks: {
                    label: function (tooltipItem, chart) {
                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label ||
                            '';
                        return datasetLabel + ': Rp. ' + Number(tooltipItem.yLabel)
                            .toFixed(0)
                            .replace(/./g,
                                function (c,
                                    i, a) {
                                    return i > 0 && c !== "." && (a.length - i) % 3 === 0 ?
                                        "." +
                                        c : c;
                                });
                    }
                }
            },
        }
    });
});

// chart bar depok program kesehatan
$.getJSON("https://localhost/dypa_ebudget/data/program_2022.php", function (data) {

    var isi_labels = [];
    var isi_data = [];
    var isi_data2 = [];

    // console.log(isi_data2);

    $(data).each(function (i) {
        isi_labels.push(data[i].bulan);
        isi_data.push(data[i].anggaran_kesehatan);
        isi_data2.push(data[i].terpakai_kesehatan);
    });

    // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito',
        '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    // Bar Chart Example
    var ctx = document.getElementById("chartBar_depok_progKesehatan");
    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: isi_labels,
            datasets: [{
                    label: "Anggaran",
                    backgroundColor: "#4e73df",
                    hoverBackgroundColor: "#4154f1",
                    borderColor: "#4e73df",
                    data: isi_data,
                },

                {
                    label: "Pemakaian",
                    backgroundColor: "#2eca6a",
                    hoverBackgroundColor: "#2eca1a",
                    borderColor: "#2eca6a",
                    data: isi_data2,
                }
            ],
        },
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: [{
                    time: {
                        unit: 'month'
                    },
                    gridLines: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        maxTicksLimit: 12
                    },
                    maxBarThickness: 25,
                }],
                yAxes: [{
                    ticks: {
                        min: 0,
                        max: 20000000,
                        maxTicksLimit: 10,
                        callback: function (value, index, values) {
                            if (parseInt(value) > 999) {
                                return 'Rp. ' + value.toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else if (parseInt(value) < -999) {
                                return '-Rp. ' + Math.abs(value).toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else {
                                return 'Rp. ' + value;
                            }
                        }
                    },
                    gridLines: {
                        color: "rgb(234, 236, 244)",
                        zeroLineColor: "rgb(234, 236, 244)",
                        drawBorder: false,
                        borderDash: [2],
                        zeroLineBorderDash: [2]
                    }
                }],
            },
            legend: {
                display: false
            },
            tooltips: {
                titleMarginBottom: 10,
                titleFontColor: '#e0e0e0',
                titleFontSize: 14,
                backgroundColor: "rgb(32,32,32)",
                bodyFontColor: "#e0e0e0",
                borderColor: '#202020',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
                callbacks: {
                    label: function (tooltipItem, chart) {
                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label ||
                            '';
                        return datasetLabel + ': Rp. ' + Number(tooltipItem.yLabel)
                            .toFixed(0)
                            .replace(/./g,
                                function (c,
                                    i, a) {
                                    return i > 0 && c !== "." && (a.length - i) % 3 === 0 ?
                                        "." +
                                        c : c;
                                });
                    }
                }
            },
        }
    });
});

// chart Bar Global Logistik
$.getJSON("https://localhost/dypa_ebudget/data/logistik_2022.php", function (data) {

    var isi_labels = [];
    var isi_data = [];
    var isi_data2 = [];

    // console.log(isi_data2);

    $(data).each(function (i) {
        isi_labels.push(data[i].bulan);
        isi_data.push(data[i].anggaran_global);
        isi_data2.push(data[i].terpakai_global);
    });

    // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito',
        '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    // Bar Chart Example
    var ctx = document.getElementById("chartBar_global_logistik");
    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: isi_labels,
            datasets: [{
                    label: "Anggaran",
                    backgroundColor: "#4e73df",
                    hoverBackgroundColor: "#4154f1",
                    borderColor: "#4e73df",
                    data: isi_data,
                },

                {
                    label: "Pemakaian",
                    backgroundColor: "#2eca6a",
                    hoverBackgroundColor: "#2eca1a",
                    borderColor: "#2eca6a",
                    data: isi_data2,
                }
            ],
        },
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: [{
                    time: {
                        unit: 'month'
                    },
                    gridLines: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        maxTicksLimit: 12
                    },
                    maxBarThickness: 25,
                }],
                yAxes: [{
                    ticks: {
                        min: 0,
                        max: 20000000,
                        maxTicksLimit: 10,
                        callback: function (value, index, values) {
                            if (parseInt(value) > 999) {
                                return 'Rp. ' + value.toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else if (parseInt(value) < -999) {
                                return '-Rp. ' + Math.abs(value).toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else {
                                return 'Rp. ' + value;
                            }
                        }
                    },
                    gridLines: {
                        color: "rgb(234, 236, 244)",
                        zeroLineColor: "rgb(234, 236, 244)",
                        drawBorder: false,
                        borderDash: [2],
                        zeroLineBorderDash: [2]
                    }
                }],
            },
            legend: {
                display: false
            },
            tooltips: {
                titleMarginBottom: 10,
                titleFontColor: '#e0e0e0',
                titleFontSize: 14,
                backgroundColor: "rgb(32,32,32)",
                bodyFontColor: "#e0e0e0",
                borderColor: '#202020',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
                callbacks: {
                    label: function (tooltipItem, chart) {
                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label ||
                            '';
                        return datasetLabel + ': Rp. ' + Number(tooltipItem.yLabel)
                            .toFixed(0)
                            .replace(/./g,
                                function (c,
                                    i, a) {
                                    return i > 0 && c !== "." && (a.length - i) % 3 === 0 ?
                                        "." +
                                        c : c;
                                });
                    }
                }
            },
        }
    });
});

// chart Bar Global Aset Yayasan
$.getJSON("https://localhost/dypa_ebudget/data/aset_2022.php", function (data) {

    var isi_labels = [];
    var isi_data = [];
    var isi_data2 = [];

    // console.log(isi_data2);

    $(data).each(function (i) {
        isi_labels.push(data[i].bulan);
        isi_data.push(data[i].anggaran_global);
        isi_data2.push(data[i].terpakai_global);
    });

    // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito',
        '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    // Bar Chart Example
    var ctx = document.getElementById("chartBar_global_aset_yayasan");
    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: isi_labels,
            datasets: [{
                    label: "Anggaran",
                    backgroundColor: "#4e73df",
                    hoverBackgroundColor: "#4154f1",
                    borderColor: "#4e73df",
                    data: isi_data,
                },

                {
                    label: "Pemakaian",
                    backgroundColor: "#2eca6a",
                    hoverBackgroundColor: "#2eca1a",
                    borderColor: "#2eca6a",
                    data: isi_data2,
                }
            ],
        },
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: [{
                    time: {
                        unit: 'month'
                    },
                    gridLines: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        maxTicksLimit: 12
                    },
                    maxBarThickness: 25,
                }],
                yAxes: [{
                    ticks: {
                        min: 0,
                        max: 20000000,
                        maxTicksLimit: 10,
                        callback: function (value, index, values) {
                            if (parseInt(value) > 999) {
                                return 'Rp. ' + value.toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else if (parseInt(value) < -999) {
                                return '-Rp. ' + Math.abs(value).toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else {
                                return 'Rp. ' + value;
                            }
                        }
                    },
                    gridLines: {
                        color: "rgb(234, 236, 244)",
                        zeroLineColor: "rgb(234, 236, 244)",
                        drawBorder: false,
                        borderDash: [2],
                        zeroLineBorderDash: [2]
                    }
                }],
            },
            legend: {
                display: false
            },
            tooltips: {
                titleMarginBottom: 10,
                titleFontColor: '#e0e0e0',
                titleFontSize: 14,
                backgroundColor: "rgb(32,32,32)",
                bodyFontColor: "#e0e0e0",
                borderColor: '#202020',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
                callbacks: {
                    label: function (tooltipItem, chart) {
                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label ||
                            '';
                        return datasetLabel + ': Rp. ' + Number(tooltipItem.yLabel)
                            .toFixed(0)
                            .replace(/./g,
                                function (c,
                                    i, a) {
                                    return i > 0 && c !== "." && (a.length - i) % 3 === 0 ?
                                        "." +
                                        c : c;
                                });
                    }
                }
            },
        }
    });
});

// chart Bar Global Pembelian Barang
$.getJSON("https://localhost/dypa_ebudget/data/aset_2022.php", function (data) {

    var isi_labels = [];
    var isi_data = [];
    var isi_data2 = [];

    // console.log(isi_data2);

    $(data).each(function (i) {
        isi_labels.push(data[i].bulan);
        isi_data.push(data[i].anggaran_pembelian);
        isi_data2.push(data[i].terpakai_pembelian);
    });

    // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito',
        '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    // Bar Chart Example
    var ctx = document.getElementById("chartBar_pembelian_aset_yayasan");
    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: isi_labels,
            datasets: [{
                    label: "Anggaran",
                    backgroundColor: "#4e73df",
                    hoverBackgroundColor: "#4154f1",
                    borderColor: "#4e73df",
                    data: isi_data,
                },

                {
                    label: "Pemakaian",
                    backgroundColor: "#2eca6a",
                    hoverBackgroundColor: "#2eca1a",
                    borderColor: "#2eca6a",
                    data: isi_data2,
                }
            ],
        },
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: [{
                    time: {
                        unit: 'month'
                    },
                    gridLines: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        maxTicksLimit: 12
                    },
                    maxBarThickness: 25,
                }],
                yAxes: [{
                    ticks: {
                        min: 0,
                        max: 10000000,
                        maxTicksLimit: 10,
                        callback: function (value, index, values) {
                            if (parseInt(value) > 999) {
                                return 'Rp. ' + value.toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else if (parseInt(value) < -999) {
                                return '-Rp. ' + Math.abs(value).toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else {
                                return 'Rp. ' + value;
                            }
                        }
                    },
                    gridLines: {
                        color: "rgb(234, 236, 244)",
                        zeroLineColor: "rgb(234, 236, 244)",
                        drawBorder: false,
                        borderDash: [2],
                        zeroLineBorderDash: [2]
                    }
                }],
            },
            legend: {
                display: false
            },
            tooltips: {
                titleMarginBottom: 10,
                titleFontColor: '#e0e0e0',
                titleFontSize: 14,
                backgroundColor: "rgb(32,32,32)",
                bodyFontColor: "#e0e0e0",
                borderColor: '#202020',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
                callbacks: {
                    label: function (tooltipItem, chart) {
                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label ||
                            '';
                        return datasetLabel + ': Rp. ' + Number(tooltipItem.yLabel)
                            .toFixed(0)
                            .replace(/./g,
                                function (c,
                                    i, a) {
                                    return i > 0 && c !== "." && (a.length - i) % 3 === 0 ?
                                        "." +
                                        c : c;
                                });
                    }
                }
            },
        }
    });
});

// chart Bar Global Pembangunan
$.getJSON("https://localhost/dypa_ebudget/data/aset_2022.php", function (data) {

    var isi_labels = [];
    var isi_data = [];
    var isi_data2 = [];

    // console.log(isi_data2);

    $(data).each(function (i) {
        isi_labels.push(data[i].bulan);
        isi_data.push(data[i].anggaran_pembangunan);
        isi_data2.push(data[i].terpakai_pembangunan);
    });

    // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito',
        '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    // Bar Chart Example
    var ctx = document.getElementById("chartBar_pembangunan_aset_yayasan");
    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: isi_labels,
            datasets: [{
                    label: "Anggaran",
                    backgroundColor: "#4e73df",
                    hoverBackgroundColor: "#4154f1",
                    borderColor: "#4e73df",
                    data: isi_data,
                },

                {
                    label: "Pemakaian",
                    backgroundColor: "#2eca6a",
                    hoverBackgroundColor: "#2eca1a",
                    borderColor: "#2eca6a",
                    data: isi_data2,
                }
            ],
        },
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: [{
                    time: {
                        unit: 'month'
                    },
                    gridLines: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        maxTicksLimit: 12
                    },
                    maxBarThickness: 25,
                }],
                yAxes: [{
                    ticks: {
                        min: 0,
                        max: 10000000,
                        maxTicksLimit: 10,
                        callback: function (value, index, values) {
                            if (parseInt(value) > 999) {
                                return 'Rp. ' + value.toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else if (parseInt(value) < -999) {
                                return '-Rp. ' + Math.abs(value).toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else {
                                return 'Rp. ' + value;
                            }
                        }
                    },
                    gridLines: {
                        color: "rgb(234, 236, 244)",
                        zeroLineColor: "rgb(234, 236, 244)",
                        drawBorder: false,
                        borderDash: [2],
                        zeroLineBorderDash: [2]
                    }
                }],
            },
            legend: {
                display: false
            },
            tooltips: {
                titleMarginBottom: 10,
                titleFontColor: '#e0e0e0',
                titleFontSize: 14,
                backgroundColor: "rgb(32,32,32)",
                bodyFontColor: "#e0e0e0",
                borderColor: '#202020',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
                callbacks: {
                    label: function (tooltipItem, chart) {
                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label ||
                            '';
                        return datasetLabel + ': Rp. ' + Number(tooltipItem.yLabel)
                            .toFixed(0)
                            .replace(/./g,
                                function (c,
                                    i, a) {
                                    return i > 0 && c !== "." && (a.length - i) % 3 === 0 ?
                                        "." +
                                        c : c;
                                });
                    }
                }
            },
        }
    });
});

// chart Bar Global Uang Makan
$.getJSON("https://localhost/dypa_ebudget/data/uang_makan_2022.php", function (data) {

    var isi_labels = [];
    var isi_data = [];
    var isi_data2 = [];

    // console.log(isi_data2);

    $(data).each(function (i) {
        isi_labels.push(data[i].bulan);
        isi_data.push(data[i].anggaran_global);
        isi_data2.push(data[i].terpakai_global);
    });

    // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito',
        '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    // Bar Chart Example
    var ctx = document.getElementById("chartBar_global_uang_makan");
    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: isi_labels,
            datasets: [{
                    label: "Anggaran",
                    backgroundColor: "#4e73df",
                    hoverBackgroundColor: "#4154f1",
                    borderColor: "#4e73df",
                    data: isi_data,
                },

                {
                    label: "Pemakaian",
                    backgroundColor: "#2eca6a",
                    hoverBackgroundColor: "#2eca1a",
                    borderColor: "#2eca6a",
                    data: isi_data2,
                }
            ],
        },
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: [{
                    time: {
                        unit: 'month'
                    },
                    gridLines: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        maxTicksLimit: 12
                    },
                    maxBarThickness: 25,
                }],
                yAxes: [{
                    ticks: {
                        min: 0,
                        max: 10000000,
                        maxTicksLimit: 10,
                        callback: function (value, index, values) {
                            if (parseInt(value) > 999) {
                                return 'Rp. ' + value.toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else if (parseInt(value) < -999) {
                                return '-Rp. ' + Math.abs(value).toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else {
                                return 'Rp. ' + value;
                            }
                        }
                    },
                    gridLines: {
                        color: "rgb(234, 236, 244)",
                        zeroLineColor: "rgb(234, 236, 244)",
                        drawBorder: false,
                        borderDash: [2],
                        zeroLineBorderDash: [2]
                    }
                }],
            },
            legend: {
                display: false
            },
            tooltips: {
                titleMarginBottom: 10,
                titleFontColor: '#e0e0e0',
                titleFontSize: 14,
                backgroundColor: "rgb(32,32,32)",
                bodyFontColor: "#e0e0e0",
                borderColor: '#202020',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
                callbacks: {
                    label: function (tooltipItem, chart) {
                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label ||
                            '';
                        return datasetLabel + ': Rp. ' + Number(tooltipItem.yLabel)
                            .toFixed(0)
                            .replace(/./g,
                                function (c,
                                    i, a) {
                                    return i > 0 && c !== "." && (a.length - i) % 3 === 0 ?
                                        "." +
                                        c : c;
                                });
                    }
                }
            },
        }
    });
});

// chart Bar Global Gaji Karyawan
$.getJSON("https://localhost/dypa_ebudget/data/gaji_karyawan_2022.php", function (data) {

    var isi_labels = [];
    var isi_data = [];
    var isi_data2 = [];

    // console.log(isi_data2);

    $(data).each(function (i) {
        isi_labels.push(data[i].bulan);
        isi_data.push(data[i].anggaran_global);
        isi_data2.push(data[i].terpakai_global);
    });

    // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito',
        '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    // Bar Chart Example
    var ctx = document.getElementById("chartBar_global_gaji_karyawan");
    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: isi_labels,
            datasets: [{
                    label: "Anggaran",
                    backgroundColor: "#4e73df",
                    hoverBackgroundColor: "#4154f1",
                    borderColor: "#4e73df",
                    data: isi_data,
                },

                {
                    label: "Pemakaian",
                    backgroundColor: "#2eca6a",
                    hoverBackgroundColor: "#2eca1a",
                    borderColor: "#2eca6a",
                    data: isi_data2,
                }
            ],
        },
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: [{
                    time: {
                        unit: 'month'
                    },
                    gridLines: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        maxTicksLimit: 12
                    },
                    maxBarThickness: 25,
                }],
                yAxes: [{
                    ticks: {
                        min: 0,
                        max: 100000000,
                        maxTicksLimit: 10,
                        callback: function (value, index, values) {
                            if (parseInt(value) > 999) {
                                return 'Rp. ' + value.toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else if (parseInt(value) < -999) {
                                return '-Rp. ' + Math.abs(value).toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else {
                                return 'Rp. ' + value;
                            }
                        }
                    },
                    gridLines: {
                        color: "rgb(234, 236, 244)",
                        zeroLineColor: "rgb(234, 236, 244)",
                        drawBorder: false,
                        borderDash: [2],
                        zeroLineBorderDash: [2]
                    }
                }],
            },
            legend: {
                display: false
            },
            tooltips: {
                titleMarginBottom: 10,
                titleFontColor: '#e0e0e0',
                titleFontSize: 14,
                backgroundColor: "rgb(32,32,32)",
                bodyFontColor: "#e0e0e0",
                borderColor: '#202020',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
                callbacks: {
                    label: function (tooltipItem, chart) {
                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label ||
                            '';
                        return datasetLabel + ': Rp. ' + Number(tooltipItem.yLabel)
                            .toFixed(0)
                            .replace(/./g,
                                function (c,
                                    i, a) {
                                    return i > 0 && c !== "." && (a.length - i) % 3 === 0 ?
                                        "." +
                                        c : c;
                                });
                    }
                }
            },
        }
    });
});

// chart Bar Global Biaya Lainnya
$.getJSON("https://localhost/dypa_ebudget/data/biaya_lainnya_2022.php", function (data) {

    var isi_labels = [];
    var isi_data = [];
    var isi_data2 = [];

    // console.log(isi_data2);

    $(data).each(function (i) {
        isi_labels.push(data[i].bulan);
        isi_data.push(data[i].anggaran_global);
        isi_data2.push(data[i].terpakai_global);
    });

    // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito',
        '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    // Bar Chart Example
    var ctx = document.getElementById("chartBar_global_anggaran_lain");
    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: isi_labels,
            datasets: [{
                    label: "Anggaran",
                    backgroundColor: "#4e73df",
                    hoverBackgroundColor: "#4154f1",
                    borderColor: "#4e73df",
                    data: isi_data,
                },

                {
                    label: "Pemakaian",
                    backgroundColor: "#2eca6a",
                    hoverBackgroundColor: "#2eca1a",
                    borderColor: "#2eca6a",
                    data: isi_data2,
                }
            ],
        },
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: [{
                    time: {
                        unit: 'month'
                    },
                    gridLines: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        maxTicksLimit: 12
                    },
                    maxBarThickness: 25,
                }],
                yAxes: [{
                    ticks: {
                        min: 0,
                        max: 10000000,
                        maxTicksLimit: 10,
                        callback: function (value, index, values) {
                            if (parseInt(value) > 999) {
                                return 'Rp. ' + value.toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else if (parseInt(value) < -999) {
                                return '-Rp. ' + Math.abs(value).toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else {
                                return 'Rp. ' + value;
                            }
                        }
                    },
                    gridLines: {
                        color: "rgb(234, 236, 244)",
                        zeroLineColor: "rgb(234, 236, 244)",
                        drawBorder: false,
                        borderDash: [2],
                        zeroLineBorderDash: [2]
                    }
                }],
            },
            legend: {
                display: false
            },
            tooltips: {
                titleMarginBottom: 10,
                titleFontColor: '#e0e0e0',
                titleFontSize: 14,
                backgroundColor: "rgb(32,32,32)",
                bodyFontColor: "#e0e0e0",
                borderColor: '#202020',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
                callbacks: {
                    label: function (tooltipItem, chart) {
                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label ||
                            '';
                        return datasetLabel + ': Rp. ' + Number(tooltipItem.yLabel)
                            .toFixed(0)
                            .replace(/./g,
                                function (c,
                                    i, a) {
                                    return i > 0 && c !== "." && (a.length - i) % 3 === 0 ?
                                        "." +
                                        c : c;
                                });
                    }
                }
            },
        }
    });
});

// chart Bar Global maintenance
$.getJSON("https://localhost/dypa_ebudget/data/maintenance_2022.php", function (data) {

    var isi_labels = [];
    var isi_data = [];
    var isi_data2 = [];

    // console.log(isi_data2);

    $(data).each(function (i) {
        isi_labels.push(data[i].bulan);
        isi_data.push(data[i].anggaran_global);
        isi_data2.push(data[i].terpakai_global);
    });

    // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito',
        '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    // Bar Chart Example
    var ctx = document.getElementById("chartBar_global_maintenance");
    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: isi_labels,
            datasets: [{
                    label: "Anggaran",
                    backgroundColor: "#4e73df",
                    hoverBackgroundColor: "#4154f1",
                    borderColor: "#4e73df",
                    data: isi_data,
                },

                {
                    label: "Pemakaian",
                    backgroundColor: "#2eca6a",
                    hoverBackgroundColor: "#2eca1a",
                    borderColor: "#2eca6a",
                    data: isi_data2,
                }
            ],
        },
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: [{
                    time: {
                        unit: 'month'
                    },
                    gridLines: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        maxTicksLimit: 12
                    },
                    maxBarThickness: 25,
                }],
                yAxes: [{
                    ticks: {
                        min: 0,
                        max: 10000000,
                        maxTicksLimit: 10,
                        callback: function (value, index, values) {
                            if (parseInt(value) > 999) {
                                return 'Rp. ' + value.toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else if (parseInt(value) < -999) {
                                return '-Rp. ' + Math.abs(value).toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else {
                                return 'Rp. ' + value;
                            }
                        }
                    },
                    gridLines: {
                        color: "rgb(234, 236, 244)",
                        zeroLineColor: "rgb(234, 236, 244)",
                        drawBorder: false,
                        borderDash: [2],
                        zeroLineBorderDash: [2]
                    }
                }],
            },
            legend: {
                display: false
            },
            tooltips: {
                titleMarginBottom: 10,
                titleFontColor: '#e0e0e0',
                titleFontSize: 14,
                backgroundColor: "rgb(32,32,32)",
                bodyFontColor: "#e0e0e0",
                borderColor: '#202020',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
                callbacks: {
                    label: function (tooltipItem, chart) {
                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label ||
                            '';
                        return datasetLabel + ': Rp. ' + Number(tooltipItem.yLabel)
                            .toFixed(0)
                            .replace(/./g,
                                function (c,
                                    i, a) {
                                    return i > 0 && c !== "." && (a.length - i) % 3 === 0 ?
                                        "." +
                                        c : c;
                                });
                    }
                }
            },
        }
    });
});

// chart Bar Global Operasional
$.getJSON("https://localhost/dypa_ebudget/data/operasional_2022.php", function (data) {

    var isi_labels = [];
    var isi_data = [];
    var isi_data2 = [];

    // console.log(isi_data2);

    $(data).each(function (i) {
        isi_labels.push(data[i].bulan);
        isi_data.push(data[i].anggaran_global);
        isi_data2.push(data[i].terpakai_global);
    });

    // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito',
        '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    // Bar Chart Example
    var ctx = document.getElementById("chartBar_global_operasional_yayasan");
    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: isi_labels,
            datasets: [{
                    label: "Anggaran",
                    backgroundColor: "#4e73df",
                    hoverBackgroundColor: "#4154f1",
                    borderColor: "#4e73df",
                    data: isi_data,
                },

                {
                    label: "Terpakai",
                    backgroundColor: "#2eca6a",
                    hoverBackgroundColor: "#2eca1a",
                    borderColor: "#2eca6a",
                    data: isi_data2,
                }
            ],
        },
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: [{
                    time: {
                        unit: 'month'
                    },
                    gridLines: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        maxTicksLimit: 12
                    },
                    maxBarThickness: 25,
                }],
                yAxes: [{
                    ticks: {
                        min: 0,
                        max: 10000000,
                        maxTicksLimit: 10,
                        callback: function (value, index, values) {
                            if (parseInt(value) > 999) {
                                return 'Rp. ' + value.toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else if (parseInt(value) < -999) {
                                return '-Rp. ' + Math.abs(value).toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else {
                                return 'Rp. ' + value;
                            }
                        }
                    },
                    gridLines: {
                        color: "rgb(234, 236, 244)",
                        zeroLineColor: "rgb(234, 236, 244)",
                        drawBorder: false,
                        borderDash: [2],
                        zeroLineBorderDash: [2]
                    }
                }],
            },
            legend: {
                display: false
            },
            tooltips: {
                titleMarginBottom: 10,
                titleFontColor: '#e0e0e0',
                titleFontSize: 14,
                backgroundColor: "rgb(32,32,32)",
                bodyFontColor: "#e0e0e0",
                borderColor: '#202020',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
                callbacks: {
                    label: function (tooltipItem, chart) {
                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label ||
                            '';
                        return datasetLabel + ': Rp. ' + Number(tooltipItem.yLabel)
                            .toFixed(0)
                            .replace(/./g,
                                function (c,
                                    i, a) {
                                    return i > 0 && c !== "." && (a.length - i) % 3 === 0 ?
                                        "." +
                                        c : c;
                                });
                    }
                }
            },
        }
    });
});

// chart Bar Global income media sosial
$.getJSON("https://localhost/dypa_ebudget/data/pemasukanMedia_2022.php", function (data) {

    var isi_labels = [];
    var isi_data = [];

    // console.log(isi_data2);

    $(data).each(function (i) {
        isi_labels.push(data[i].bulan);
        isi_data.push(data[i].income_global);
    });

    // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito',
        '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    // Bar Chart Example
    var ctx = document.getElementById("chartBar_global_incMedia");
    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: isi_labels,
            datasets: [{
                    label: "Income",
                    backgroundColor: "#4e73df",
                    hoverBackgroundColor: "#4154f1",
                    borderColor: "#4e73df",
                    data: isi_data,
                }
            ],
        },
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: [{
                    time: {
                        unit: 'month'
                    },
                    gridLines: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        maxTicksLimit: 12
                    },
                    maxBarThickness: 25,
                }],
                yAxes: [{
                    ticks: {
                        min: 0,
                        max: 200000000,
                        maxTicksLimit: 10,
                        callback: function (value, index, values) {
                            if (parseInt(value) > 999) {
                                return 'Rp. ' + value.toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else if (parseInt(value) < -999) {
                                return '-Rp. ' + Math.abs(value).toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else {
                                return 'Rp. ' + value;
                            }
                        }
                    },
                    gridLines: {
                        color: "rgb(234, 236, 244)",
                        zeroLineColor: "rgb(234, 236, 244)",
                        drawBorder: false,
                        borderDash: [2],
                        zeroLineBorderDash: [2]
                    }
                }],
            },
            legend: {
                display: false
            },
            tooltips: {
                titleMarginBottom: 10,
                titleFontColor: '#e0e0e0',
                titleFontSize: 14,
                backgroundColor: "rgb(32,32,32)",
                bodyFontColor: "#e0e0e0",
                borderColor: '#202020',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
                callbacks: {
                    label: function (tooltipItem, chart) {
                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label ||
                            '';
                        return datasetLabel + ': Rp. ' + Number(tooltipItem.yLabel)
                            .toFixed(0)
                            .replace(/./g,
                                function (c,
                                    i, a) {
                                    return i > 0 && c !== "." && (a.length - i) % 3 === 0 ?
                                        "." +
                                        c : c;
                                });
                    }
                }
            },
        }
    });
});

// chart Bar Non resi income media sosial
$.getJSON("https://localhost/dypa_ebudget/data/pemasukanMedia_2022.php", function (data) {

    var isi_labels = [];
    var isi_data = [];

    // console.log(isi_data2);

    $(data).each(function (i) {
        isi_labels.push(data[i].bulan);
        isi_data.push(data[i].income_tanpaResi);
    });

    // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito',
        '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    // Bar Chart Example
    var ctx = document.getElementById("chartBar_nonResi_incMedia");
    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: isi_labels,
            datasets: [{
                    label: "Income",
                    backgroundColor: "#FF00FF",
                    borderColor: "#FF00FF",
                    data: isi_data,
                }
            ],
        },
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: [{
                    time: {
                        unit: 'month'
                    },
                    gridLines: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        maxTicksLimit: 12
                    },
                    maxBarThickness: 25,
                }],
                yAxes: [{
                    ticks: {
                        min: 0,
                        max: 50000000,
                        maxTicksLimit: 10,
                        callback: function (value, index, values) {
                            if (parseInt(value) > 999) {
                                return 'Rp. ' + value.toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else if (parseInt(value) < -999) {
                                return '-Rp. ' + Math.abs(value).toString().replace(
                                    /\B(?=(\d{3})+(?!\d))/g, ".");
                            } else {
                                return 'Rp. ' + value;
                            }
                        }
                    },
                    gridLines: {
                        color: "rgb(234, 236, 244)",
                        zeroLineColor: "rgb(234, 236, 244)",
                        drawBorder: false,
                        borderDash: [2],
                        zeroLineBorderDash: [2]
                    }
                }],
            },
            legend: {
                display: false
            },
            tooltips: {
                titleMarginBottom: 10,
                titleFontColor: '#e0e0e0',
                titleFontSize: 14,
                backgroundColor: "rgb(32,32,32)",
                bodyFontColor: "#e0e0e0",
                borderColor: '#202020',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
                callbacks: {
                    label: function (tooltipItem, chart) {
                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label ||
                            '';
                        return datasetLabel + ': Rp. ' + Number(tooltipItem.yLabel)
                            .toFixed(0)
                            .replace(/./g,
                                function (c,
                                    i, a) {
                                    return i > 0 && c !== "." && (a.length - i) % 3 === 0 ?
                                        "." +
                                        c : c;
                                });
                    }
                }
            },
        }
    });
});