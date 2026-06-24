const { BaseStorage } = require("../../../src/storage/baseStorage");
const VehicleTemplateEntity = require("../entities/vehicleTemplate");

class VehicleTemplateStorage extends BaseStorage {
  static schema = "hardpoint";
  static table = "vehicle_templates";
  static Entity = VehicleTemplateEntity;

  async listEntities({ orderBy = [], ...filters } = {}) {
    const args = { ...filters };
    args.orderBy = orderBy.length ? orderBy : [
      { property: "name", nulls: "LAST" },
      { property: "createDatetime" },
    ];
    return super.listEntities(args);
  }
}

module.exports = VehicleTemplateStorage;
