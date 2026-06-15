const { BaseEntity } = require("../../../src/entities/baseEntity");

class SkillEntity extends BaseEntity {
  static key = "skill";
  static labelProperties = ["name"];

  static getStorage() {
    return require("../storage/skillStorage");
  }

  static async getFormSchema(context) {
    const storage = this.getStorage().global();
    const fieldSpecs = await storage.getFieldSpecs();

    const coreFields = await Promise.all(
      Object.entries(fieldSpecs)
        .filter(([, spec]) => !spec.readOnly)
        .map(([key, spec]) => {
          const overrides = key === "description" ? { inputType: "textarea" } : {};
          return this.formFieldFromSpec(key, spec, { instance: context.instance, overrides });
        }),
    );

    return {
      groups: [{ id: "core", label: "Skill", fields: coreFields }],
    };
  }
}

module.exports = SkillEntity;
