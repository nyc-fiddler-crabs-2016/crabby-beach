$(document).ready(function() {

  var $button = $("#new-beach-form-pop-up");
  $button.on("click", toggleForm);
  $("#new-beach-form").on("submit", function(event) {
    event.preventDefault();
    var url = "/beaches";
    $.ajax({
      type: "POST",
      url: url,
      data: $(this).serialize()
    }).done(function(response) {
      $("#beaches-container ul").append(response);
    });
  })
  // $("#new-beach-submit").on("click", function(event) {
  //   debugger;
  //   event.preventDefault();
  // })
});

function toggleForm(event) {
  $button = $(this);
  var $form = $("#new-beach-form-container");
  if ($form.css("display") === "none") {
    $form.show();
    $button.text("Close");
  } else {
    $form.hide();
    $button.text("Open form");
  }
}
