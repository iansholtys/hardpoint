(function ($) {
  const NS = ".hardpoint-footer";
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

  function teardown() {
    unmount();
    $(window).off(NS);
  }

  $(window).on("genrpg:instance-entered" + NS, mount);
  $(window).on("genrpg:instance-exited" + NS, teardown);
})(jQuery);
