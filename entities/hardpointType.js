const { BaseEntity } = require("../../../src/entities/baseEntity");

class HardpointTypeEntity extends BaseEntity {
  static key = "hardpoint_type";
  static labelProperties = ["name"];

  static getStorage() {
    return require("../storage/hardpointTypeStorage");
  }
}

module.exports = HardpointTypeEntity;
