<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Meta -->
    <meta name="description" content="Manaar" />
    <meta name="author" content="Manaar" />

    <title>Manaar | Resource</title>

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
        <jsp:include page="adminmenu.jsp" />
        <!-- az-content-left -->
        <div class="az-content-body pd-lg-l-40 d-flex flex-column">
          <div class="az-content-breadcrumb">
            <span>Content</span>
            <span>Resources</span>
          </div>

          <div class="row mg-b-40">
            <div class="col-md-9">
              <h2 class="az-content-title">Resources</h2>
            </div>
            <div class="col-md-3 float-md-right">
              <form action="resource/addResource">
                <button class="btn btn-success btn-with-icon btn-block"><i class="typcn typcn-edit"></i> Add Resources</button>
              </form>
            </div>
          </div>

          <div class="table-responsive">
            <table class="table table-hover mg-b-0">
              <thead>
                <tr>
                  <th class="wd-5p"></th>
                  <th class="wd-20p">Title</th>
                  <th class="wd-20p">Category</th>
                  <th class="wd-20p">Tag</th>
                  <th class="wd-20p">Date</th>
                  <th class="wd-20p">Author</th>
                  <th class="wd-20p">Status</th>
                  <th class="wd-20p">Action</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="resource" items="${resources}">
                  <tr>
                    <td>${resource.id}</td>
                    <td>${resource.resourceTitle}</td>
                    <td>${resource.categoryId}</td>
                    <td>${resource.tagId}</td>
                    <td>${resource.newsDate}</td>
                    <td>${resource.author}</td>
                    <td><i class="far fa-check-circle"></i></td>
                    <td>
                      <div class="btn-icon-list">
                        <a href="/resource/edit/${resource.id}" class="btn btn-primary btn-icon"
                          ><i class="typcn typcn-edit"></i
                        ></a>
                        <a onclick="confirmDelete(${resource.id})" class="btn btn-primary btn-icon"
                          ><i class="typcn typcn-delete-outline"></i
                        ></a>
                      </div>
                    </td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>

          <hr />

          <div class="row row-sm">
            <div class="col-lg-12 mg-t-20 text-lg-right">
              <div class="btn-group" role="group" aria-label="Basic example">
                <a href="#" class="btn btn-secondary btn-icon active">1</a>
                <a href="#" class="btn btn-secondary btn-icon">2</a>
                <a href="#" class="btn btn-secondary btn-icon">3</a>
              </div>
            </div>
            <!-- col-2 -->
          </div>
        </div>
      </div>
      <!-- container -->
    </div>
    <!-- az-content -->

    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
      integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    ></script>
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

      function confirmDelete(id) {
        var result = confirm("Are you sure you want to delete this resources?");
        if (result) {
          $.ajax({
            type: "DELETE",
            url: "/resource/deleteResource/" + id,
            success: function (response) {
              location.reload();
            },
            error: function (xhr, status, error) {
              alert("Error deleting resource: " + error);
            },
          });
        } else {
          // If user cancels, do nothing
          return false;
        }
      }
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
