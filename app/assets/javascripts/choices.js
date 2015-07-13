$(document).ready(function() {
  $(".thumbnail").click(function() {
    var voteforID = $(this).attr("id");
    var voteInputID = $("#choice_option_" + voteforID + "_votes");
    voteInputID.val("1");
    var form = voteInputID.parent('form');
    form.submit();
    $(".thumbnail").val("0");
  });
});
