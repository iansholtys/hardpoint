const { BaseEntity } = require("../../../src/entities/baseEntity");

class VehicleEntity extends BaseEntity {
  static key = "vehicle";
  static labelProperties = ["name"];

  static getStorage() {
    return require("../storage/vehicleStorage");
  }

  toJSON() {
    const payload = super.toJSON();
    if (this.vehicleTemplate != null) {
      payload.vehicleTemplate = typeof this.vehicleTemplate.toJSON === "function"
        ? this.vehicleTemplate.toJSON()
        : this.vehicleTemplate;
    }
    return payload;
  }
}

module.exports = VehicleEntity;
