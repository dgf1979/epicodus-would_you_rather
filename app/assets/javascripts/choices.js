$(document).ready(function() {
  console.log("choices.js");
  $(".thumbnail").click(function() {
    var voteforID = $(this).attr("id");
    var voteInputID = $("#choice_option_" + voteforID + "_votes");
    console.log("id to vote for: " + voteforID);
    voteInputID.val("1");
    var form = voteInputID.parent('form');
    form.submit();
  });
});
