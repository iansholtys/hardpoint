const { BaseEntity } = require("../../../src/entities/baseEntity");

class FeatureEntity extends BaseEntity {
  static key = "feature";
  static labelProperties = ["name"];

  static getStorage() {
    return require("../storage/featureStorage");
  }

  async collectValidationErrors() {
    const errors = await super.collectValidationErrors();

    if (!Array.isArray(this.prerequisites)) {
      return errors;
    }

    for (const entry of this.prerequisites) {
      const refGuid = entry?.value ?? entry;
      if (refGuid === this.guid) {
        errors.push("A feature cannot require itself as a prerequisite");
      }
    }

    return errors;
  }
}

module.exports = FeatureEntity;
