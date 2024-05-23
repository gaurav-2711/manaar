<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
    <jsp:include page="adminheader.jsp" /> 
    <div class="az-content pd-y-20 pd-lg-y-30 pd-xl-y-40">
      <div class="container">
        <div class="az-content-left az-content-left-components">
          <div class="component-item">
            <h3 class="mg-b-20">Content</h3>

            <nav class="nav flex-column">
              <a href="/page" class="nav-link">Pages</a>
              <a href="/resource" class="nav-link active">Resources</a>
              <a href="/banner" class="nav-link">Banners</a>
              <a href="/faqs" class="nav-link">FAQS</a>
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
            <span>Resources</span>
            <span>Add Resources</span>
          </div>
          <div class="row">
            <div class="col-md-9">
              <h2 class="az-content-title"><c:if test="${flag eq 'edit'}">Update</c:if><c:if test="${flag ne 'edit'}">Add</c:if> Resources</h2>
            </div>
          </div>

          <hr class="mg-y-10" />
          <form  <c:if test="${flag eq 'edit'}">action="/resource/update" method="POST" modelAttribute="updateResourceForm"</c:if>
            <c:if test="${flag ne 'edit'}">action="/resource/save" method="POST" modelAttribute="addResourceForm"</c:if>  >
          <input type="hidden" id="id" name="id" value="${updateResource.id}" />
          <h4>Meta Tags</h4>
          <div class="row row-sm">
            <div class="col-lg-6">
              <div class="az-content-label mg-t-20">Page Title</div>
              <input class="form-control" name="metatitle" value="${updateResource.metatitle}" placeholder="Commercial Analytics" type="text" />
            </div>
          
          </div>
          <div class="row row-sm">
            <div class="col-lg-6">
              <div class="az-content-label mg-t-20">Description</div>
              <textarea
                rows="3"
                class="form-control"
                name="metadescription"
                placeholder="Description">${updateResource.metadescription}</textarea>
            </div>           
          </div>

          <hr class="h10" />
          <h4>Banner</h4>
          <div class="row row-sm mg-t-20">
            <div class="col-lg-3">
              <div class="az-content-label mg-b-5">Select Banner</div>

              <select class="form-control select2-no-search" name="bannerid" Required>
                <option label="Choose one">Select Banner</option>
                <option value="1"  ${updateResource.bannerid == '1' ? 'selected' : ''}>Firefox</option>
                <option value="2"  ${updateResource.bannerid == '2' ? 'selected' : ''}>Chrome</option>
                <option value="3"  ${updateResource.bannerid == '3' ? 'selected' : ''}>Safari</option>
                <option value="4"  ${updateResource.bannerid == '4' ? 'selected' : ''}>Opera</option>
                <option value="5"  ${updateResource.bannerid == '5' ? 'selected' : ''}>Internet Explorer</option>
              </select>
              <span class="spanrequired">Required *</span>
            </div>
        
          </div>

          <hr class="h10" />
          <h4 class="mg-b-20">Resources Attributes</h4>

          <div class="row row-sm mg-b-20">
            <div class="col-lg-3">
              <div class="az-content-label mg-b-5">Category</div>
              <select class="form-control select2" name="categoryId" Required>
                <option label="Choose one"></option>
                <option value="1" ${updateResource.categoryId == '1' ? 'selected' : ''}>ebooks</option>
                <option value="2" ${updateResource.categoryId == '2' ? 'selected' : ''}>Videos</option>
                <option value="3" ${updateResource.categoryId == '3' ? 'selected' : ''}>Article</option>
                <option value="4" ${updateResource.categoryId == '4' ? 'selected' : ''}>Newsletter</option>
                <option value="5" ${updateResource.categoryId == '5' ? 'selected' : ''}>Presentations</option>
              </select>
              <span class="spanrequired">Required *</span>
            </div>
          
            <div class="col-lg-3 mg-t-20 mg-lg-t-0">
              <div class="az-content-label mg-b-5">Author</div>
              <select class="form-control select2-no-search" name="author" Required>
                <option label="Choose one"></option>
                <option value="Asif" ${updateResource.author == 'Asif' ? 'selected' : ''}>Asif</option>
                <option value="Saqib" ${updateResource.author == 'Saqib' ? 'selected' : ''}>Saqib</option>
                <option value="Ahmed" ${updateResource.author == 'Ahmed' ? 'selected' : ''}>Ahmed</option>
              </select>
              <span class="spanrequired">Required *</span>
            </div>
           
            <div class="col-lg-3 mg-t-20 mg-lg-t-0">
              <div class="az-content-label mg-b-5">News Date</div>
              <fmt:formatDate var="newsdate" value="${updateResource.newsDate}" pattern="MM/dd/yyyy" />
              <div class="input-group">
                <div class="input-group-prepend">
                  <div class="input-group-text">
                    <i class="typcn typcn-calendar-outline tx-24 lh--9 op-6"></i>
                  </div>
                </div>
                <input type="text" name="newsDate" value="${newsdate}" class="form-control fc-datepicker" placeholder="MM/DD/YYYY" Required/>
              </div>
              <span class="spanrequired">Required *</span>
            </div>

            <div class="col-lg-3 mg-t-20 mg-lg-t-0">
              <div class="az-content-label mg-b-5">Tag</div>

              <select class="form-control select2" multiple="multiple" name="tagId" Required>
                <option value="Commercial Analytics" ${updateResource.tagId == 'Commercial Analytics' ? 'selected' : ''}>Commercial Analytics</option>
                <option value="Technology Integration" ${updateResource.tagId == 'Technology Integration' ? 'selected' : ''}>Technology Integration</option>
                <option value="Venture Management"  ${updateResource.tagId == 'Venture Management' ? 'selected' : ''}>Venture Management</option>
              </select>
              <span class="spanrequired">Required *</span>
            </div>
          
          </div>      

          <hr class="h10" />
          <h4 class="mg-b-20">Resources Content</h4>
          <div class="row row-sm mg-b-20">
            <div class="col-lg-3">
              <div class="az-content-label mg-b-5">Thumbnail</div>
              <div class="custom-file">
                <input type="file" class="custom-file-input" id="customFile" name="resourceThumbnail" Required/>
                <label class="custom-file-label" for="customFile">Choose file</label>
              </div>
              <span class="spanrequired">Required * 796px x 455px</span>
            </div>
          

            <div class="col-lg-3">
              <div class="az-content-label mg-b-5">Attachement</div>
              <div class="custom-file">
                <input type="file" class="custom-file-input" id="customFile" name="resourceAttachement"/>
                <label class="custom-file-label" for="customFile">Choose file</label>
              </div>
              <span class="spaninfo">Optional PDF, MP4 for Video, ebooks and Presentation</span>
            </div>          

            <div class="col-lg-3">
              <div class="az-content-label mg-b-5">External Attachement</div>
              <div class="custom-file">
                <input class="form-control" placeholder="PDF or YouTube URL" type="text" name="resourceExternalAttachement"/>
              </div>
              <span class="spaninfo">Optional PDF, MP4 for Video, ebooks and Presentation</span>
            </div>
         
          </div>

          <div class="az-content-label mg-t-20">Title</div>
          <div class="row row-sm">
            <div class="col-lg">
              <input class="form-control" placeholder="Title" value="${updateResource.resourceTitle}" type="text" name="resourceTitle" />
            </div>
           
          </div>
          <div class="row row-sm">
            <div class="col-lg">
              <div class="az-content-label mg-t-20">Short Description</div>
              <div class="row row-sm">
                <div class="col-lg">
                  <textarea rows="3" class="form-control" placeholder="Short Description" name="resourceShortDescription">${updateResource.resourceShortDescription}</textarea>
                </div>
              
              </div>
            </div>
           
          </div>

          <div class="az-content-label mg-t-20">Content</div>
          <div class="row row-sm mg-b-20">
            <div class="col-lg">
              <textarea name="editor1" name="resouceContent">${updateResource.resouceContent}</textarea>
            </div>
         
          </div>

          <hr />

          <div class="row row-xs wd-xl-80p">
            <div class="col-lg-3">
              <label class="ckbox"> <input type="checkbox" name="status" /><span>Enabled</span> </label>
            </div>
          </div>
          <hr />
          <div class="row row-xs wd-xl-80p">
            <div class="col-sm-6 col-md-2 mg-t-10 mg-md-t-0">
              <c:if test="${flag=='edit'}">
                    <button class="btn btn-success btn-block" type="submit" >Update</button>
               </c:if>
                <c:if test="${flag!='edit'}">
                    <button class="btn btn-success btn-block" type="submit" >Save</button>
             </c:if>
              </div>
              <div class="col-sm-6 col-md-2 mg-t-10 mg-md-t-0">
                <a class="btn btn-danger btn-block" href="/resource">Cancel</a>
              </div>
          </div>
        </form>
        <hr />
        </div>    
      </div>    
    </div>   
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
