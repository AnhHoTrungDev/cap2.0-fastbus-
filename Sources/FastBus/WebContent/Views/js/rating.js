let showPoinStart = document.getElementsByClassName("show-poin-start");
let showPoinStartRead = document.getElementsByClassName("show-poin-start-read");
let poinRead = document.getElementsByClassName("poinRead");
// create funtion add
function renderPoin(id, poin) {
  $("#" + id).rateYo({
    rating: Number(poin),
    ratedFill: "#0000CD",
    starWidth: "35px",
    onChange: function(rating, rateYoInstance) {
      $(this)
        .next()
        .text(rating);
    }
  });
}

function renderPoinRead(id, poin) {
  $("#" + id).rateYo({
    rating: Number(poin),
    ratedFill: "#376a97",
    starWidth: "15px",
    onChange: function(rating, rateYoInstance) {
      $(this)
        .next()
        .text(rating);
    },
    readOnly: true
  });
}

// event get poin
function addEvenClick(id) {
  $(function() {
    $("#" + id)
      .rateYo()
      .on("rateyo.set", function(e, data) {
        $("input#" + id + ".poin").val(data.rating);
        $("span#" + id + ".poin").html(data.rating);
      });
  });
}
$(document).ready(function() {
  $.each(showPoinStart, function() {
    $(this).attr("value-star");
    renderPoin($(this).attr("id"), $(this).attr("value-star"));
    addEvenClick($(this).attr("id"));
    $("span#" + $(this).attr("id") + ".poin").html(
      $(this).attr("value-star") + "/5"
    );
  });
  $.each(showPoinStartRead, function() {
    $(this).attr("value-star");
    renderPoinRead($(this).attr("id"), $(this).attr("value-star"));
    $("span#" + $(this).attr("id") + ".poinRead").html(
      $(this).attr("value-star") + "/5"
    );
  });
});
