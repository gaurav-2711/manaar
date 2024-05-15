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
              <a href="/faqs" class="nav-link active">FAQS</a>
              <a href="/category" class="nav-link">Category</a>
              <a href="/tags" class="nav-link">Tags</a>
              <a href="/widgets" class="nav-link">Widgets</a>
            </nav>
          </div>
          <!-- component-item -->
        </div>
        <!-- az-content-left -->
        <div class="az-content-body pd-lg-l-40 d-flex flex-column">
          <div class="az-content-breadcrumb">
            <span>Content</span>
            <span>FAQs</span>
            <span>Add FAQs</span>
          </div>

          <div class="row">
            <div class="col-md-9">
              <h2 class="az-content-title">FAQs</h2>
            </div>
          </div>

          <div class="row row-sm mg-b-20">
            <div class="col-lg-6 mg-t-20 mg-lg-t-0">
              <div class="az-content-label">FAQ Name</div>
              <input class="form-control" placeholder="" type="text" />
            </div>
            <!-- col-4 -->
          </div>
          <!-- row -->

          <div class="row row-sm mg-b-20">
            <div class="col-lg-6 mg-t-20 mg-lg-t-0">
              <div class="az-content-label">Alias</div>
              <input class="form-control" placeholder="" type="text" />
            </div>
            <!-- col-4 -->
          </div>
          <!-- row -->

          <div class="row row-sm mg-b-20">
            <div class="col-lg-6 mg-t-20 mg-lg-t-0">
              <a class="add-more" href="#" id="add-faq">Add more <i class="typcn typcn-plus"></i></a>
            </div>
            <!-- col-4 -->
          </div>
          <!-- row -->

          <div id="faq-container">
            <!-- Initial FAQ div -->
            <div class="row row-sm faq-row">
              <div class="col-lg-6 mg-lg-t-0">
                <div class="az-content-label mg-t-20">FAQ 01</div>
                <input class="form-control mg-t-20" id="faq-01-question" placeholder="Question" type="text" />
                <textarea rows="7" id="faq-01-answer" class="form-control mg-t-20" placeholder="Answer"></textarea>
              </div>
              <!-- col -->
            </div>
          </div>

          <hr class="mg-y-10" />

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
      document.getElementById("add-faq").addEventListener("click", function (e) {
        e.preventDefault(); // Prevent default link behavior

        // Clone the FAQ div
        var faqContainer = document.getElementById("faq-container");
        var faqDiv = faqContainer.querySelector(".faq-row");
        var newFaqDiv = faqDiv.cloneNode(true);

        // Update IDs of question and answer inputs
        var faqIndex = faqContainer.querySelectorAll(".faq-row").length + 1;
        newFaqDiv.querySelector(".az-content-label").textContent = "FAQ " + faqIndex;
        newFaqDiv.querySelector(".form-control").id = "faq-" + formatNumber(faqIndex) + "-question";
        newFaqDiv.querySelector("textarea").id = "faq-" + formatNumber(faqIndex) + "-answer";

        // Append the new FAQ div to the container
        faqContainer.appendChild(newFaqDiv);
      });

      // Helper function to format numbers with leading zeros
      function formatNumber(num) {
        return num.toString().padStart(2, "0");
      }
    </script>
  </body>
</html>
