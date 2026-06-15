const { BaseStorage } = require("../../../src/storage/baseStorage");
const OccupationEntity = require("../entities/occupation");

class OccupationStorage extends BaseStorage {
  static schema = "hardpoint";
  static table = "occupations";
  static Entity = OccupationEntity;

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

module.exports = OccupationStorage;
