(function ($) {
  const FOOTER_ID = "hardpoint-footer";

  function mount() {
    if ($("#" + FOOTER_ID).length) {
      return;
    }

    $("<footer>", { id: FOOTER_ID, text: "Hardpoint" }).appendTo("body");
  }

  function unmount() {
    $("#" + FOOTER_ID).remove();
  }

  $(window).on("genrpg:instance-entered", mount);
  $(window).on("genrpg:instance-exited", unmount);
})(jQuery);
