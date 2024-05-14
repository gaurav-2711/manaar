<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>


  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">



  <!-- Meta -->
  <meta name="description" content="Manaar">
  <meta name="author" content="Manaar">

  <title>Manaar | Admin</title>

  <!-- vendor css -->
  <link href="lib/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/typicons.font/typicons.css" rel="stylesheet">
  <link href="lib/spectrum-colorpicker/spectrum.css" rel="stylesheet">
  <link href="lib/select2/css/select2.min.css" rel="stylesheet">
  <link href="lib/ion-rangeslider/css/ion.rangeSlider.css" rel="stylesheet">
  <link href="lib/ion-rangeslider/css/ion.rangeSlider.skinFlat.css" rel="stylesheet">
  <link href="lib/amazeui-datetimepicker/css/amazeui.datetimepicker.css" rel="stylesheet">
  <link href="lib/jquery-simple-datetimepicker/jquery.simple-dtpicker.css" rel="stylesheet">
  <link href="lib/pickerjs/picker.min.css" rel="stylesheet">

  <!-- Manaar CSS -->
  <link rel="stylesheet" href="/css/style.css">

</head>
  <body>

<div class="az-header">
  <div class="container">
    <div class="az-header-left">
      <a href="index.html" class="az-logo"><span></span> Manaar</a>
      <a href="" id="azMenuShow" class="az-header-menu-icon d-lg-none"><span></span></a>
    </div><!-- az-header-left -->
    <div class="az-header-menu">
      <div class="az-header-menu-header">
        <a href="index.html" class="az-logo"><span></span> Manaar</a>
        <a href="" class="close">&times;</a>
      </div><!-- az-header-menu-header -->
      <ul class="nav">
        <li class="nav-item active">
          <a href="dashboard.html" class="nav-link"><i class="typcn typcn-chart-area-outline"></i>
            Dashboard</a>
        </li>
        <li class="nav-item">
          <a href="content.html" class="nav-link"><i class="typcn typcn-document"></i> Content</a>

        </li>
        <li class="nav-item">
          <a href="menu.html" class="nav-link"><i class="typcn typcn-chart-bar-outline"></i> Menu</a>
        </li>

      </ul>
    </div><!-- az-header-menu -->
    <div class="az-header-right">


      <div class="az-header-notification">
        <a href="user.html" class=""><i class="typcn typcn-group"></i></a>

      </div><!-- az-header-notification -->
      <div class="dropdown az-profile-menu">
        <a href="" class="az-img-user"><img src="img/faces/face1.jpg" alt=""></a>
        <div class="dropdown-menu">
          <div class="az-dropdown-header d-sm-none">
            <a href="" class="az-header-arrow"><i class="icon ion-md-arrow-back"></i></a>
          </div>
          <div class="az-header-profile">
            <div class="az-img-user">
              <img src="img/faces/face1.jpg" alt="">
            </div><!-- az-img-user -->
            <h6>Asif Ameer</h6>
            <span>Expert Researcher</span>
          </div><!-- az-header-profile -->

          <a href="" class="dropdown-item"><i class="typcn typcn-user-outline"></i> My Profile</a>
          <a href="" class="dropdown-item"><i class="typcn typcn-edit"></i> Edit Profile</a>

          <a href="" class="dropdown-item"><i class="typcn typcn-cog-outline"></i> Account Settings</a>
          <a href="page-signin.html" class="dropdown-item"><i class="typcn typcn-power-outline"></i> Sign
            Out</a>
        </div><!-- dropdown-menu -->
      </div>
    </div><!-- az-header-right -->
  </div><!-- container -->
</div><!-- az-header -->

      <div class="az-content az-content-dashboard">
        <div class="container">
          <div class="az-content-body">
            <div class="az-dashboard-one-title">
              <div>
                <h2 class="az-dashboard-title">Welcome to Manaar CMS
</h2>
                <p class="az-dashboard-text">Dashboard</p>
              </div>
              <div class="az-content-header-right">
                <div class="media">
                  <div class="media-body">
                    <label>Today's Date</label>
                    <h6>January 3, 2020</h6>
                  </div><!-- media-body -->
                </div><!-- media -->
                <div class="media">
                  <div class="media-body">
                    <label>Last Login Date</label>
                    <h6>Oct 23, 2020</h6>
                  </div><!-- media-body -->
                </div><!-- media -->
              </div>
            </div><!-- az-dashboard-one-title -->



            <div class="row row-sm mg-b-20">
              <div class="col-lg-7 mg-t-20 mg-lg-t-0">
                <div class="card card-dashboard-four">
                  <div class="card-header">
                    <h6 class="card-title">Publications Summary</h6>
                  </div><!-- card-header -->
                  <div class="card-body row">
                    <div class="col-md-6 d-flex align-items-center">
                      <div class="chart"><canvas id="chartDonut"></canvas></div>
                    </div><!-- col -->
                    <div class="col-md-6 col-lg-5 mg-lg-l-auto mg-t-20 mg-md-t-0">
                      <div class="az-traffic-detail-item">
                        <div>
                          <span>Published</span>
                          <span>1,320</span>
                        </div>
                        <div class="progress">
                          <div class="progress-bar bg-purple wd-25p" role="progressbar" aria-valuenow="25" aria-valuemin="0"
                            aria-valuemax="100"></div>
                        </div><!-- progress -->
                      </div>
                      <div class="az-traffic-detail-item">
                        <div>
                          <span>On Review</span>
                          <span>987</span>
                        </div>
                        <div class="progress">
                          <div class="progress-bar bg-primary wd-20p" role="progressbar" aria-valuenow="20" aria-valuemin="0"
                            aria-valuemax="100"></div>
                        </div><!-- progress -->
                      </div>
                      <div class="az-traffic-detail-item">
                        <div>
                          <span>Pending</span>
                          <span>2,010</span>
                        </div>
                        <div class="progress">
                          <div class="progress-bar bg-info wd-30p" role="progressbar" aria-valuenow="30" aria-valuemin="0"
                            aria-valuemax="100"></div>
                        </div><!-- progress -->
                      </div>
                      <div class="az-traffic-detail-item">
                        <div>
                          <span>Rejected</span>
                          <span>654</span>
                        </div>
                        <div class="progress">
                          <div class="progress-bar bg-teal wd-15p" role="progressbar" aria-valuenow="15" aria-valuemin="0"
                            aria-valuemax="100"></div>
                        </div><!-- progress -->
                      </div>
                      <div class="az-traffic-detail-item">
                        <div>
                          <span>Archived</span>
                          <span>400</span>
                        </div>
                        <div class="progress">
                          <div class="progress-bar bg-gray-500 wd-10p" role="progressbar" aria-valuenow="10" aria-valuemin="0"
                            aria-valuemax="100"></div>
                        </div><!-- progress -->
                      </div>
                    </div><!-- col -->
                  </div><!-- card-body -->
                </div><!-- card-dashboard-four -->
              </div><!-- col -->
              <div class="col-lg-5 mg-t-20 mg-lg-t-0">
                <div class="row row-sm">
                  <div class="col-sm-6">
                    <div class="card card-dashboard-two">
                      <div class="card-header">
                        <h6>36 <i class="icon ion-md-trending-up tx-success"></i> </h6>
                        <p>Publication Published Last Month</p>
                      </div><!-- card-header -->
                      <div class="card-body">
                        <div class="chart-wrapper">
                          <div id="flotChart1" class="flot-chart"></div>
                        </div><!-- chart-wrapper -->
                      </div><!-- card-body -->
                    </div><!-- card -->
                  </div><!-- col -->
                  <div class="col-sm-6 mg-t-20 mg-sm-t-0">
                    <div class="card card-dashboard-two">
                      <div class="card-header">
                        <h6>120 <i class="icon ion-md-trending-up tx-success"></i> </h6>
                        <p>Publication Published Last 6 Month</p>
                      </div><!-- card-header -->
                      <div class="card-body">
                        <div class="chart-wrapper">
                          <div id="flotChart2" class="flot-chart"></div>
                        </div><!-- chart-wrapper -->
                      </div><!-- card-body -->
                    </div><!-- card -->
                  </div><!-- col -->
                  <div class="col-sm-12 mg-t-20">
                    <div class="card card-dashboard-three">
                      <div class="card-header">
                        <p>All Visitors</p>
                        <h6>16,869 <small class="tx-success"><i class="icon ion-md-arrow-up"></i></small></h6>
                        <small>The total number of Visitors.</small>
                      </div><!-- card-header -->
                      <div class="card-body">
                        <div class="chart"><canvas id="chartBar5"></canvas></div>
                      </div>
                    </div>
                  </div>
                </div><!-- row -->
              </div>
              <!--col -->
            </div><!-- row -->

            <div class="row row-sm mg-b-20">
              <div class="col-lg-6">
              <div class="card card-table-one">
                <h6 class="card-title">Latest Contribution</h6>
                <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        <th class="wd-20p">&nbsp;</th>
                        <th class="wd-40p">Name</th>
                        <th class="wd-40p">Total Post</th>

                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td style="text-align: center;"><img src="img/faces/face1.jpg" class="dBp" alt=""></td>
                        <td><strong>Asif Ameer</strong></td>
                        <td><strong>134</strong></td>

                      </tr>
                      <tr>
                        <td style="text-align: center;"><img src="img/faces/face2.jpg" class="dBp" alt=""></td>
                        <td><strong>Saqib Bilal</strong></td>
                        <td><strong>290</strong></td>

                      </tr>
                      <tr>
                      <td style="text-align: center;"><img src="img/faces/face3.jpg" class="dBp" alt=""></td>
                        <td><strong>Muhammad Hamza</strong></td>
                        <td><strong>250</strong></td>

                      </tr>
                      <tr>
                        <td style="text-align: center;"><img src="img/faces/face4.jpg" class="dBp" alt=""></td>
                        <td><strong>Shanzay Asif</strong></td>
                        <td><strong>216</strong></td>

                      </tr>

                    </tbody>
                  </table>
                </div><!-- table-responsive -->
              </div><!-- card -->

              </div><!-- col -->
            <div class="col-lg-6 ht-lg-100p">
              <div class="card card-dashboard-one">
                <div class="card-header">
                  <div>
                    <h6 class="card-title">Publications Stats</h6>
                  </div>
                </div><!-- card-header -->
                <div class="card-body">
                  <div class="card-body-top">
                    <div>
                      <label class="mg-b-0">Published</label>
                      <h2 style="color: #3caf85;">13,956</h2>
                    </div>
                    <div>
                      <label class="mg-b-0">Archived</label>
                      <h2 style="color: #854e9b;">3350</h2>
                    </div>
                  </div><!-- card-body-top -->
                  <div class="flot-chart-wrapper">
                    <div id="flotChart" class="flot-chart"></div>
                  </div><!-- flot-chart-wrapper -->
                </div><!-- card-body -->
              </div><!-- card -->
            </div><!-- col -->
            </div><!-- row -->


          </div><!-- az-content-body -->
        </div>
      </div><!-- az-content -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script src="lib/jquery.flot/jquery.flot.js"></script>
<script src="lib/jquery.flot/jquery.flot.resize.js"></script>
<script src="lib/chart.js/Chart.bundle.min.js"></script>
<script src="lib/peity/jquery.peity.min.js"></script>


<script src="js/chart.flot.sampledata.js"></script>
<script src="js/dashboard.sampledata.js"></script>

<script>
  $(function () {
    'use strict'

    var plot = $.plot('#flotChart', [{
      data: flotSampleData3,
      color: '#3caf85',
      lines: {
        fillColor: { colors: [{ opacity: 0 }, { opacity: 0.2 }] }
      }
    }, {
      data: flotSampleData4,
      color: '#560bd0',
      lines: {
        fillColor: { colors: [{ opacity: 0 }, { opacity: 0.2 }] }
      }
    }], {
      series: {
        shadowSize: 0,
        lines: {
          show: true,
          lineWidth: 2,
          fill: true
        }
      },
      grid: {
        borderWidth: 0,
        labelMargin: 8
      },
      yaxis: {
        show: true,
        min: 0,
        max: 100,
        ticks: [[0, ''], [20, '20K'], [40, '40K'], [60, '60K'], [80, '80K']],
        tickColor: '#eee'
      },
      xaxis: {
        show: true,
        color: '#fff',
        ticks: [[25, '2000'], [50, '2001'], [75, '2002'], [100, '2003'], [125, '2004']],
      }
    });

    $.plot('#flotChart1', [{
      data: dashData2,
      color: '#00cccc'
    }], {
      series: {
        shadowSize: 0,
        lines: {
          show: true,
          lineWidth: 2,
          fill: true,
          fillColor: { colors: [{ opacity: 0.2 }, { opacity: 0.2 }] }
        }
      },
      grid: {
        borderWidth: 0,
        labelMargin: 0
      },
      yaxis: {
        show: false,
        min: 0,
        max: 35
      },
      xaxis: {
        show: false,
        max: 50
      }
    });

    $.plot('#flotChart2', [{
      data: dashData2,
      color: '#007bff'
    }], {
      series: {
        shadowSize: 0,
        bars: {
          show: true,
          lineWidth: 0,
          fill: 1,
          barWidth: .5
        }
      },
      grid: {
        borderWidth: 0,
        labelMargin: 0
      },
      yaxis: {
        show: false,
        min: 0,
        max: 35
      },
      xaxis: {
        show: false,
        max: 20
      }
    });


    //-------------------------------------------------------------//


    // Line chart
    $('.peity-line').peity('line');

    // Bar charts
    $('.peity-bar').peity('bar');

    // Bar charts
    $('.peity-donut').peity('donut');

    var ctx5 = document.getElementById('chartBar5').getContext('2d');
    new Chart(ctx5, {
      type: 'bar',
      data: {
        labels: [0, 1, 2, 3, 4, 5, 6, 7],
        datasets: [{
          data: [2, 4, 10, 20, 45, 40, 35, 18],
          backgroundColor: '#560bd0'
        }, {
          data: [3, 6, 15, 35, 50, 45, 35, 25],
          backgroundColor: '#cad0e8'
        }]
      },
      options: {
        maintainAspectRatio: false,
        tooltips: {
          enabled: false
        },
        legend: {
          display: false,
          labels: {
            display: false
          }
        },
        scales: {
          yAxes: [{
            display: false,
            ticks: {
              beginAtZero: true,
              fontSize: 11,
              max: 80
            }
          }],
          xAxes: [{
            barPercentage: 0.6,
            gridLines: {
              color: 'rgba(0,0,0,0.08)'
            },
            ticks: {
              beginAtZero: true,
              fontSize: 11,
              display: false
            }
          }]
        }
      }
    });

    // Donut Chart
    var datapie = {
      labels: ['Published', 'On Review', 'Pending', 'Rejected', 'Archived'],
      datasets: [{
        data: [1320, 987, 2010, 654, 400],
        backgroundColor: ['#3caf85', '#fbce4a', '#309fdb', '#e95b54', '#854e9b']
      }]
    };

    var optionpie = {
      maintainAspectRatio: false,
      responsive: true,
      legend: {
        display: false,
      },
      animation: {
        animateScale: true,
        animateRotate: true
      }
    };

    // For a doughnut chart
    var ctxpie = document.getElementById('chartDonut');
    var myPieChart6 = new Chart(ctxpie, {
      type: 'doughnut',
      data: datapie,
      options: optionpie
    });

  });
</script>
</body>

</html>
