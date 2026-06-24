const { BaseStorage } = require("../../../src/storage/baseStorage");
const VehicleEntity = require("../entities/vehicle");

class VehicleStorage extends BaseStorage {
  static schema = "hardpoint";
  static table = "vehicles";
  static Entity = VehicleEntity;

  async listEntities({ orderBy = [], ...filters } = {}) {
    const args = { ...filters };
    args.orderBy = orderBy.length ? orderBy : [
      { property: "name", nulls: "LAST" },
      { property: "createDatetime" },
    ];
    return super.listEntities(args);
  }
}

module.exports = VehicleStorage;
