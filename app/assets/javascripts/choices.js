$(document).ready(function() {
  console.log("choices.js");
  $(".thumbnail").click(function(e) {
    var voteforID = $(this).attr("id");
    var choiceID = $(this).attr("data-id");
    var voteInputID = $("#edit_choice_" + choiceID + " > #choice_option_" + voteforID + "_votes");
    voteInputID.val("1");
    var form = voteInputID.parent('form');
    e.preventDefault();
    form.submit();
    return false;
  });
});
