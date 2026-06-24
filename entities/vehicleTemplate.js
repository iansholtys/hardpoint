const { BaseEntity } = require("../../../src/entities/baseEntity");

class VehicleTemplateEntity extends BaseEntity {
  static key = "vehicle_template";
  static labelProperties = ["name"];

  static getStorage() {
    return require("../storage/vehicleTemplateStorage");
  }
}

module.exports = VehicleTemplateEntity;
