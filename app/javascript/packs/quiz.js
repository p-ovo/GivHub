jQuery(function () {

  let traits = [];

  $(":button").on("click", function () {
    traits.push($(this).data("id"));

    if ($(this).parent().parent().attr("id") == "q10") {
      console.log("lol");

      // Code here to calculate personality type
      // document.cookie = "personality=Hello";
      Cookies.set('personality', "hello");
      var CookieValue = Cookies.get('Message');
      console.log(CookieValue);
    };
  });

  // $().on("click", function () {
  //   alert($.cookie('personality'))
  // });
});
