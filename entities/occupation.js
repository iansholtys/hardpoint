const { BaseEntity } = require("../../../src/entities/baseEntity");

class OccupationEntity extends BaseEntity {
  static key = "occupation";
  static labelProperties = ["name"];

  static getStorage() {
    return require("../storage/occupationStorage");
  }

  static async getFormSchema(context) {
    const storage = this.getStorage().global();
    const fieldSpecs = await storage.getFieldSpecs();

    const coreFields = await Promise.all(
      Object.entries(fieldSpecs)
        .filter(([, spec]) => !spec.readOnly)
        .map(([key, spec]) => this.formFieldFromSpec(key, spec, { instance: context.instance })),
    );

    return {
      groups: [{ id: "core", label: "Occupation", fields: coreFields }],
    };
  }
}

module.exports = OccupationEntity;
