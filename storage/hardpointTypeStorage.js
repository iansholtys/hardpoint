const { BaseStorage } = require("../../../src/storage/baseStorage");
const HardpointTypeEntity = require("../entities/hardpointType");

class HardpointTypeStorage extends BaseStorage {
  static schema = "hardpoint";
  static table = "hardpoint_types";
  static Entity = HardpointTypeEntity;

  static get instanceScoped() {
    return false;
  }

  async listEntities({ orderBy = [], ...filters } = {}) {
    const args = { ...filters };
    args.orderBy = orderBy.length ? orderBy : [
      { property: "name", nulls: "LAST" },
      { property: "createDatetime" },
    ];
    return super.listEntities(args);
  }
}

module.exports = HardpointTypeStorage;
