var Pages = {
  init() {},
  savePages() {
    var form = document.pagesform;
    var param = getalldata(form);

    $.ajax({
      type: "POST",
      url: "http://localhost:8081/page/save",
      contentType: "application/json",
      data:JSON.stringify(param),
    }).done(function (data) {
      console.log("data: ", data);
      window.location.href = "http://localhost:8081/page";
    });
  },
};

function getalldata(oForm) {
  var data = {};

  $(oForm).find(':input').each(function() {
    var name = this.name;
    var value = $(this).val();

    if (name && !this.disabled) {
    if (name === "customFile") {
            // Replace 'customFile' with 'banner_img'
            name = "bannerImg";
          }
      if (data[name]) {
        if (!Array.isArray(data[name])) {
          data[name] = [data[name]];
        }
        data[name].push(value);
      } else {
        data[name] = value;
      }
    }
  });

  return data;
}


$(document).ready(function () {
  Pages.init();
});
