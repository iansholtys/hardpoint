const { BaseEntity } = require("../../../src/entities/baseEntity");

class SkillEntity extends BaseEntity {
  static key = "skill";
  static labelProperties = ["name"];

  static getStorage() {
    return require("../storage/skillStorage");
  }
}

module.exports = SkillEntity;
