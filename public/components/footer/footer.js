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
    this.id = options.id || Footer.defaultId;
    this.label = options.label || "Hardpoint";
    this.isMounted = false;
    this.elements = { $root: null };
  }

  /**
   * Append the footer to the document body.
   * @returns {this}
   */
  mount() {
    this.elements.$root = $("#" + this.id);
    if (this.isMounted || this.elements.$root.length) {
      this.isMounted = true;
      return this;
    }

    this.elements.$root = $("<footer>", {
      id: this.id,
      class: "hardpoint-footer",
      text: this.label,
    }).appendTo("body");

    this.isMounted = true;
    return this;
  }

  /**
   * Remove the footer from the DOM.
   */
  destroy() {
    this.elements.$root?.remove();
    this.elements.$root = null;
    this.isMounted = false;
  }
}
