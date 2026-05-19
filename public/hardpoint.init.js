(function ($) {
  const NS = ".hardpoint-init";
  let footer = null;

  function init() {
    footer = new Footer_Hardpoint();
    footer.mount();
  }

  function teardown() {
    if (footer) {
      footer.destroy();
      footer = null;
    }
  }

  $(window).on("hardpoint:package-loaded" + NS, init);
  $(window).on("hardpoint:package-exited" + NS, teardown);
})(jQuery);
