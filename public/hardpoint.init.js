(function ($) {
  const NS = ".hardpoint-init";
  let footer = null;

  function init() {
    const $footerSection = window.appLayout?.getSection("footer");
    if (!$footerSection?.length) {
      return;
    }

    footer = new Footer_Hardpoint();
    $footerSection.append(footer.build());
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
