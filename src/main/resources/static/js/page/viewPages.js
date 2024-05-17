var Pages = {
  init() {},
  getPages() {

    $.ajax({
      type: "GET",
      url: "http://localhost:8081/page",
      contentType: "application/json",
      data:JSON.stringify(param),
    }).done(function (data) {
      console.log("data: ", data);
    });
  },
};

$(document).ready(function () {
  Pages.init();
});
