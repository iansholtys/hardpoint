const { BaseStorage } = require("../../../src/storage/baseStorage");
const FeatureEntity = require("../entities/feature");

class FeatureStorage extends BaseStorage {
  static schema = "hardpoint";
  static table = "features";
  static Entity = FeatureEntity;

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

module.exports = FeatureStorage;
