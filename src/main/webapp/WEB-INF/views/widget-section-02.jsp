<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Meta -->
    <meta name="description" content="Manaar" />
    <meta name="author" content="Manaar" />

    <title>Manaar | Admin</title>

    <!-- vendor css -->
    <link href="../../lib/fontawesome-free/css/all.min.css" rel="stylesheet" />
    <link href="../../lib/ionicons/css/ionicons.min.css" rel="stylesheet" />
    <link href="../../lib/typicons.font/typicons.css" rel="stylesheet" />
    <link href="../../lib/spectrum-colorpicker/spectrum.css" rel="stylesheet" />
    <link href="../../lib/select2/css/select2.min.css" rel="stylesheet" />
    <link href="../../lib/ion-rangeslider/css/ion.rangeSlider.css" rel="stylesheet" />
    <link href="../../lib/ion-rangeslider/css/ion.rangeSlider.skinFlat.css" rel="stylesheet" />
    <link href="../../lib/amazeui-datetimepicker/css/amazeui.datetimepicker.css" rel="stylesheet" />
    <link href="../../lib/jquery-simple-datetimepicker/jquery.simple-dtpicker.css" rel="stylesheet" />
    <link href="../../lib/pickerjs/picker.min.css" rel="stylesheet" />

    <!-- Manaar CSS -->
    <link rel="stylesheet" href="../../../css/style.css" />
  </head>
  <body>
    <div class="az-header">
      <div class="container">
        <div class="az-header-left">
          <a href="index.html" class="az-logo"><span></span> Manaar</a>
          <a href="" id="azMenuShow" class="az-header-menu-icon d-lg-none"><span></span></a>
        </div>
        <!-- az-header-left -->
        <div class="az-header-menu">
          <div class="az-header-menu-header">
            <a href="index.html" class="az-logo"><span></span> Manaar</a>
            <a href="" class="close">&times;</a>
          </div>
          <!-- az-header-menu-header -->
          <ul class="nav">
            <li class="nav-item">
              <a href="/home" class="nav-link"><i class="typcn typcn-chart-area-outline"></i> Dashboard</a>
            </li>
            <li class="nav-item active">
              <a href="/content" class="nav-link"><i class="typcn typcn-document"></i> Content</a>
            </li>
            <li class="nav-item">
              <a href="/menu" class="nav-link"><i class="typcn typcn-chart-bar-outline"></i> Menu</a>
            </li>
          </ul>
        </div>
        <!-- az-header-menu -->
        <div class="az-header-right">
          <div class="az-header-notification">
            <a href="/user" class=""><i class="typcn typcn-group"></i></a>
          </div>
          <!-- az-header-notification -->
          <div class="dropdown az-profile-menu">
            <a href="" class="az-img-user"><img src="../../img/faces/face1.jpg" alt="" /></a>
            <div class="dropdown-menu">
              <div class="az-dropdown-header d-sm-none">
                <a href="" class="az-header-arrow"><i class="icon ion-md-arrow-back"></i></a>
              </div>
              <div class="az-header-profile">
                <div class="az-img-user">
                  <img src="../../img/faces/face1.jpg" alt="" />
                </div>
                <!-- az-img-user -->
                <h6>Asif Ameer</h6>
                <span>Expert Researcher</span>
              </div>
              <!-- az-header-profile -->

              <a href="" class="dropdown-item"><i class="typcn typcn-user-outline"></i> My Profile</a>
              <a href="" class="dropdown-item"><i class="typcn typcn-edit"></i> Edit Profile</a>

              <a href="" class="dropdown-item"><i class="typcn typcn-cog-outline"></i> Account Settings</a>
              <a href="/page/pageSignin" class="dropdown-item"><i class="typcn typcn-power-outline"></i> Sign Out</a>
            </div>
            <!-- dropdown-menu -->
          </div>
        </div>
        <!-- az-header-right -->
      </div>
      <!-- container -->
    </div>
    <!-- az-header -->

    <div class="az-content pd-y-20 pd-lg-y-30 pd-xl-y-40">
      <div class="container">
        <div class="az-content-left az-content-left-components">
          <div class="component-item">
            <h3 class="mg-b-20">Content</h3>

            <nav class="nav flex-column">
              <a href="/page" class="nav-link">Pages</a>
              <a href="/resource" class="nav-link">Resources</a>
              <a href="/banner" class="nav-link">Banners</a>
              <a href="/faqs" class="nav-link">FAQS</a>
              <a href="/category" class="nav-link">Category</a>
              <a href="/tags" class="nav-link">Tags</a>
              <a href="/widgets" class="nav-link active">Widgets</a>
            </nav>
          </div>
          <!-- component-item -->
        </div>
        <!-- az-content-left -->
        <div class="az-content-body pd-lg-l-40 d-flex flex-column">
          <div class="az-content-breadcrumb">
            <span>Content</span>
            <span>Widget</span>
            <span>Widget Analytics, Integration, Management</span>
          </div>

          <div class="row">
            <div class="col-md-9">
              <h2 class="az-content-title">Widget Analytics, Integration, Management</h2>
            </div>
          </div>

          <div class="row row-sm mg-b-20">
            <div class="col-lg-6 mg-t-20 mg-lg-t-0">
              <div class="az-content-label">Widget Name</div>
              <input class="form-control" placeholder="Analytics, Integration, Management" type="text" />
            </div>
            <!-- col-4 -->
          </div>
          <!-- row -->

          <hr />
          <div class="row row-sm mg-b-20">
            <div class="col-lg-6 mg-t-20 mg-lg-t-0">
              <input class="form-control" placeholder="Analytics, Integration, Management" type="text" />
              <textarea
                rows="2"
                id="faq-01-answer"
                class="form-control mg-t-20"
                placeholder="Manaar is unique in our ability to apply broad specializations and consulting capabilities, focusing on implementation and achieving client defined outcomes in these areas."></textarea>
            </div>
            <!-- col -->
          </div>

          <h4>Block 01</h4>
          <div class="row row-sm mg-b-20">
            <div class="col-lg-3">
              <div class="az-content-label mg-b-5">Thumbnail</div>
              <div class="custom-file">
                <input type="file" class="custom-file-input" id="customFile" />
                <label class="custom-file-label" for="customFile">Choose file</label>
              </div>
              <span class="spanrequired">Required * 948px x 300px</span>
            </div>
            <!-- col-4 -->
          </div>
          <div class="row row-sm">
            <div class="col-lg-6">
              <div class="az-content-label mg-t-20">Title</div>
              <input class="form-control" placeholder="Commercial Analytics" type="text" />
            </div>
            <!-- col -->
          </div>

          <div class="row row-sm">
            <div class="col-lg">
              <div class="az-content-label mg-t-20">Short Description</div>
              <div class="row row-sm">
                <div class="col-lg">
                  <textarea
                    rows="3"
                    class="form-control"
                    placeholder="Our world has more data and better technology than ever before, but investment decisions are becoming more complex than ever before. This growing complexity increased the need of our clients for more powerful data capabilities and led us to invest heavily to develop unique analytics products and services."></textarea>
                </div>
                <!-- col -->
              </div>
            </div>
            <!-- col -->
          </div>

          <div class="row row-sm mg-b-20">
            <div class="col-lg-6">
              <div class="az-content-label mg-t-20">Select Page</div>
              <select class="form-control select2-no-search">
                <option label="Choose one"></option>
                <option value="Commercial Analytics">Commercial Analytics</option>
                <option value="Technology Integration">Technology Integration</option>
                <option value="Venture Management">Venture Management</option>
              </select>
            </div>
            <!-- col-4 -->
          </div>
          <!-- row -->

          <hr />

          <h4>Block 02</h4>
          <div class="row row-sm mg-b-20">
            <div class="col-lg-3">
              <div class="az-content-label mg-b-5">Thumbnail</div>
              <div class="custom-file">
                <input type="file" class="custom-file-input" id="customFile" />
                <label class="custom-file-label" for="customFile">Choose file</label>
              </div>
              <span class="spanrequired">Required * 948px x 300px</span>
            </div>
            <!-- col-4 -->
          </div>
          <div class="row row-sm">
            <div class="col-lg-6">
              <div class="az-content-label mg-t-20">Title</div>
              <input class="form-control" placeholder="Commercial Analytics" type="text" />
            </div>
            <!-- col -->
          </div>

          <div class="row row-sm">
            <div class="col-lg">
              <div class="az-content-label mg-t-20">Short Description</div>
              <div class="row row-sm">
                <div class="col-lg">
                  <textarea
                    rows="3"
                    class="form-control"
                    placeholder="Our world has more data and better technology than ever before, but investment decisions are becoming more complex than ever before. This growing complexity increased the need of our clients for more powerful data capabilities and led us to invest heavily to develop unique analytics products and services."></textarea>
                </div>
                <!-- col -->
              </div>
            </div>
            <!-- col -->
          </div>

          <div class="row row-sm mg-b-20">
            <div class="col-lg-6">
              <div class="az-content-label mg-t-20">Select Page</div>
              <select class="form-control select2-no-search">
                <option label="Choose one"></option>
                <option value="Commercial Analytics">Commercial Analytics</option>
                <option value="Technology Integration">Technology Integration</option>
                <option value="Venture Management">Venture Management</option>
              </select>
            </div>
            <!-- col-4 -->
          </div>
          <!-- row -->

          <hr />

          <h4>Block 03</h4>
          <div class="row row-sm mg-b-20">
            <div class="col-lg-3">
              <div class="az-content-label mg-b-5">Thumbnail</div>
              <div class="custom-file">
                <input type="file" class="custom-file-input" id="customFile" />
                <label class="custom-file-label" for="customFile">Choose file</label>
              </div>
              <span class="spanrequired">Required * 948px x 300px</span>
            </div>
            <!-- col-4 -->
          </div>
          <div class="row row-sm">
            <div class="col-lg-6">
              <div class="az-content-label mg-t-20">Title</div>
              <input class="form-control" placeholder="Commercial Analytics" type="text" />
            </div>
            <!-- col -->
          </div>

          <div class="row row-sm">
            <div class="col-lg">
              <div class="az-content-label mg-t-20">Short Description</div>
              <div class="row row-sm">
                <div class="col-lg">
                  <textarea
                    rows="3"
                    class="form-control"
                    placeholder="Our world has more data and better technology than ever before, but investment decisions are becoming more complex than ever before. This growing complexity increased the need of our clients for more powerful data capabilities and led us to invest heavily to develop unique analytics products and services."></textarea>
                </div>
                <!-- col -->
              </div>
            </div>
            <!-- col -->
          </div>

          <div class="row row-sm mg-b-20">
            <div class="col-lg-6">
              <div class="az-content-label mg-t-20">Select Page</div>
              <select class="form-control select2-no-search">
                <option label="Choose one"></option>
                <option value="Commercial Analytics">Commercial Analytics</option>
                <option value="Technology Integration">Technology Integration</option>
                <option value="Venture Management">Venture Management</option>
              </select>
            </div>
            <!-- col-4 -->
          </div>
          <!-- row -->

          <hr />

          <hr class="mg-y-10" />

          <div class="row mg-t-10">
            <div class="col-lg-2">
              <label class="rdiobox">
                <input name="rdio" type="radio" />
                <span>Enable</span>
              </label>
            </div>
            <!-- col-3 -->
            <div class="col-lg-2 mg-t-20 mg-lg-t-0">
              <label class="rdiobox">
                <input name="rdio" type="radio" checked="" />
                <span>Disable</span>
              </label>
            </div>
            <!-- col-3 -->
          </div>

          <hr />
          <div class="row row-xs wd-xl-80p">
            <div class="col-sm-6 col-md-3 mg-t-10 mg-md-t-0">
              <button class="btn btn-success btn-block">Submit</button>
            </div>
            <div class="col-sm-6 col-md-3 mg-t-10 mg-md-t-0">
              <button class="btn btn-danger btn-block">Cancel</button>
            </div>
          </div>

          <hr />
        </div>
      </div>
      <!-- container -->
    </div>
    <!-- az-content -->

    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
      integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"></script>
    <script src="../../lib/jquery-ui/ui/widgets/datepicker.js"></script>
    <script src="../../lib/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../../lib/ionicons/ionicons.js"></script>
    <script src="../../lib/jquery.maskedinput/jquery.maskedinput.js"></script>
    <script src="../../lib/spectrum-colorpicker/spectrum.js"></script>
    <script src="../../lib/select2/js/select2.min.js"></script>
    <script src="../../lib/ion-rangeslider/js/ion.rangeSlider.min.js"></script>
    <script src="../../lib/amazeui-datetimepicker/js/amazeui.datetimepicker.min.js"></script>
    <script src="../../lib/jquery-simple-datetimepicker/jquery.simple-dtpicker.js"></script>
    <script src="../../lib/pickerjs/picker.min.js"></script>
    <script src="../../js/cookie.js" type="text/javascript"></script>
    <script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>

    <script src="../../js/bhuth.js"></script>
    <script>
      CKEDITOR.replace("editor1");
      CKEDITOR.replace("editor2");
    </script>
    <script>
      // Additional code for adding placeholder in search box of select2
      (function ($) {
        var Defaults = $.fn.select2.amd.require("select2/defaults");

        $.extend(Defaults.defaults, {
          searchInputPlaceholder: "",
        });

        var SearchDropdown = $.fn.select2.amd.require("select2/dropdown/search");

        var _renderSearchDropdown = SearchDropdown.prototype.render;

        SearchDropdown.prototype.render = function (decorated) {
          // invoke parent method
          var $rendered = _renderSearchDropdown.apply(this, Array.prototype.slice.apply(arguments));

          this.$search.attr("placeholder", this.options.get("searchInputPlaceholder"));

          return $rendered;
        };
      })(window.jQuery);
    </script>
    <script>
      $(function () {
        "use strict";

        // Toggle Switches
        $(".az-toggle").on("click", function () {
          $(this).toggleClass("on");
        });

        // Input Masks
        $("#dateMask").mask("99/99/9999");
        $("#phoneMask").mask("(999) 999-9999");
        $("#phoneExtMask").mask("(999) 999-9999? ext 99999");
        $("#ssnMask").mask("999-99-9999");

        // Color picker
        $("#colorpicker").spectrum({
          color: "#17A2B8",
        });

        $("#showAlpha").spectrum({
          color: "rgba(23,162,184,0.5)",
          showAlpha: true,
        });

        $("#showPaletteOnly").spectrum({
          showPaletteOnly: true,
          showPalette: true,
          color: "#DC3545",
          palette: [
            ["#1D2939", "#fff", "#0866C6", "#23BF08", "#F49917"],
            ["#DC3545", "#17A2B8", "#6610F2", "#fa1e81", "#72e7a6"],
          ],
        });

        // Datepicker
        $(".fc-datepicker").datepicker({
          showOtherMonths: true,
          selectOtherMonths: true,
        });

        $("#datepickerNoOfMonths").datepicker({
          showOtherMonths: true,
          selectOtherMonths: true,
          numberOfMonths: 2,
        });

        // AmazeUI Datetimepicker
        $("#datetimepicker").datetimepicker({
          format: "yyyy-mm-dd hh:ii",
          autoclose: true,
        });

        // jQuery Simple DateTimePicker
        $("#datetimepicker2").appendDtpicker({
          closeOnSelected: true,
          onInit: function (handler) {
            var picker = handler.getPicker();
            $(picker).addClass("az-datetimepicker");
          },
        });

        $(document).ready(function () {
          $(".select2").select2({
            placeholder: "Choose one",
            searchInputPlaceholder: "Search",
          });

          $(".select2-no-search").select2({
            minimumResultsForSearch: Infinity,
            placeholder: "Choose one",
          });
        });

        $(".rangeslider1").ionRangeSlider();

        $(".rangeslider2").ionRangeSlider({
          min: 100,
          max: 1000,
          from: 550,
        });

        $(".rangeslider3").ionRangeSlider({
          type: "double",
          grid: true,
          min: 0,
          max: 1000,
          from: 200,
          to: 800,
          prefix: "$",
        });

        $(".rangeslider4").ionRangeSlider({
          type: "double",
          grid: true,
          min: -1000,
          max: 1000,
          from: -500,
          to: 500,
          step: 250,
        });
      });
    </script>
  </body>
</html>
