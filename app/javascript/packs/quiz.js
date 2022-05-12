jQuery(function () {

  const traits = {
    "committed": 0,
    "skilled_worker": 0,
    "compassionate": 0,
    "communicator": 0,
    "teamwork": 0,
    "self-management": 0,
    "animal_lover": 0,
    "leadership": 0,
    "problem_solver": 0,
    "nature_lover": 0,
    "resilience": 0,
    "donation": 0,
    "imaginative": 0,
    "outdoors": 0,
  };

  const personalities = {
    "clingy": ["compassionate", "communicator", "teamwork"] ,
    "control_freak": ["leadership", "teamwork", "communicator"],
    "tree_hugger": ["outdoors", "animal_Lover", "nature_lover"],
    "oversharer": ["compassionate", "donation", "self-management"],
    "strong_silent_type": ["resilience", "committed", "compassionate"],
    "workaholic": ["committed", "skilled_worker", "self-management"],
    "artsy_fartsy": ["imaginative", "problem_solver", "teamwork"],
    "corporate_slave": ["skilled_worker", "self-management", "problem_solver"],
  };

  $(":button").on("click", function () {
    // traits.push($(this).data("id"));
    traits[$(this).data("id")] += 1;

    if ($(this).parent().parent().attr("id") == "q10") {
      let personality = calcPersonality();
      $(this).parent().parent().attr("personality", personality);
    };
  });

  function calcPersonality2() {// work in progress - dont touch
    // let keysSorted = Object.keys(traits).sort(function (a, b) { return traits[a] - traits[b] }).map(key => traits[key]);
    // console.log(keysSorted);

    let entries = Object.entries(traits);

    let sorted = entries.sort((a, b) => a[1] - b[1]);  // have array of arrays -> ordered in lowest to most


    let no_zeros = (sorted.filter(word => word[1] > 0)); // remove traits with zeros

    if ((no_zeros[no_zeros.length - 3][1] == 1) && (no_zeros[no_zeros.length - 2][1] != 1)) { // if third last trait is equal to 1 vote and second last isnt equal to 1
      let only_ones = no_zeros.splice(0, no_zeros.length -2); // only ones in this array
      let random_no = Math.floor(Math.random() *  (only_ones.length - 1));
      let third_trait = only_ones[random_no][0]; //choose random 3rd trait from group of 1's

      let trait_group = [third_trait, no_zeros[no_zeros.length - 1][0], no_zeros[no_zeros.length - 2][0]]; //final trait group

      for (const key in personalities) {
        if (trait_group.sort() === personalities[key].sort() ) {
          console.log(key);
        };
      };
    } else if (no_zeros[no_zeros.length - 3][1] < no_zeros[no_zeros.length -2][1]) { //if second last is greater than third last
      let trait_group = [no_zeros[no_zeros.length - 3][0], no_zeros[no_zeros.length - 1][0], no_zeros[no_zeros.length - 2][0]]

      for (const key in personalities) {
        if (trait_group.sort() === personalities[key].sort()) {
          console.log(key);
        };
      };
    };

    // if third best is equal to 1, remove
    // Take top 3 if clearly 3 winning
    // Take top 2 and random 3rd if tie on third
    // T
  };

  function calcPersonality() {
    let random_no = Math.floor(Math.random() * ( Object.keys(personalities).length - 1))
    let result = Object.keys(personalities)[random_no];
    console.log(result);
    return result;
  };
});
