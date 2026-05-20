/**
 * Hardpoint footer — fixed bar at the bottom of the instance view.
 */
class Footer_Hardpoint {
  static defaultId = "hardpoint-footer";

  /**
   * @param {Object} [options]
   * @param {string} [options.id] Root element id.
   * @param {string} [options.label] Text shown in the footer.
   */
  constructor(options = {}) {
    this.id = options.id || Footer_Hardpoint.defaultId;
    this.label = options.label || "Hardpoint";
    this.elements = { $root: null };
  }

  /**
   * Build footer DOM.
   * @returns {JQuery}
   */
  build() {
    if (this.elements.$root?.length) {
      return this.elements.$root;
    }

    this.elements.$root = $("<footer>", {
      id: this.id,
      class: "hardpoint-footer",
      text: this.label,
    });

    return this.elements.$root;
  }

  /**
   * Remove the footer from the DOM.
   */
  destroy() {
    this.elements.$root?.remove();
    this.elements.$root = null;
  }
}
