(function ($) {
  const NS = ".hardpoint-init";
  let footer = null;

  function init() {
    const $footerHost = window.appLayout?.getSection("footer");
    if (!$footerHost?.length) {
      return;
    }

    footer = new Footer_Hardpoint();
    $footerHost.append(footer.build());
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
