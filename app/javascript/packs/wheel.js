jQuery(function () {
  // first iteration
  let position = -13;
  let count = 0;
  let random_seed = 0;
  let items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  // Opening animation
  $("#carousel").css("--position", position);
  let myInterval = setInterval(change_pos, 250);
  function change_pos() {
    position += 1;
    if (position >= 10) {
      if (count == 12) {
        count = 0;
      }
      let new_item = $(`div.item:nth-of-type(${items[count]})`);
      new_item.addClass('notransition');
      new_item.css("--offset", position + 3);
      new_item[0].offsetHeight; // Note this is to fix a niche bug in the way jquery loads when disabling/enabling transitions
      new_item.removeClass('notransition');
      count = count + 1;
    };
    $("#carousel").css("--position", position);

    if (position == 15) {
       clearInterval(myInterval);
    };
  };

  // Clicking Next action:
  $("#next").on("click", function () {
    position += 1;
    let items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

    if (position >= 10) {
      if (count == 12) {
        count = 0;
      }
      let new_item = $(`div.item:nth-of-type(${items[count]})`);
      new_item.addClass('notransition');
      new_item.css("--offset", position + 3);
      new_item[0].offsetHeight; // Note this is to fix a niche bug in the way jquery loads when disabling/enabling transitions
      new_item.removeClass('notransition');
      count = count + 1;
    };
    $("#carousel").css("--position", position);
  });
  // Clicking before Action:
  $("#before").on("click", function () {
    position -= 1;
    $("#carousel").css("--position", position)
  });

  // Randomise Action:
  // $("#random").on("click", function () {
  //   let x = Math.floor((Math.random() * (50) + 20));
  //   for (let i=0;i<=x;i++) {
  //     next();
  //     console.log("this many times: ", i);
  //   };
  // });

  let myInterval2;
  let count2 = 0;
  $("#random").on("click", function () {
    random_seed = Math.floor((Math.random() * (50) + 20));
    console.log(random_seed);
    new_interval();
  });

  function new_interval() {
    myInterval2 = setInterval(randomise, 250);
  };
  function randomise() {
    count2 += 1;
    console.log("this");
    next();
    if (count2 == random_seed) {
      clearInterval(myInterval2);
    };
  };

  function next() {
    position += 1;
    if (position >= 10) {
      if (count == 12) {
        count = 0;
      }
      let new_item = $(`div.item:nth-of-type(${items[count]})`);
      new_item.addClass('notransition');
      new_item.css("--offset", position + 3);
      new_item[0].offsetHeight;
      new_item.removeClass('notransition');
      count = count + 1;
    };
    $("#carousel").css("--position", position);
  };

});
