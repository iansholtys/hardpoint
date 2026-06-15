const { BaseEntity } = require("../../../src/entities/baseEntity");

class HardpointTypeEntity extends BaseEntity {
  static key = "hardpoint_type";
  static labelProperties = ["name"];

  static getStorage() {
    return require("../storage/hardpointTypeStorage");
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
      groups: [{ id: "core", label: "Hardpoint type", fields: coreFields }],
    };
  }
}

module.exports = HardpointTypeEntity;
