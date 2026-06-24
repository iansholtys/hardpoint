const { BaseEntity } = require("../../../src/entities/baseEntity");

class OccupationEntity extends BaseEntity {
  static key = "occupation";
  static labelProperties = ["name"];

  static getStorage() {
    return require("../storage/occupationStorage");
  }
}

module.exports = OccupationEntity;
