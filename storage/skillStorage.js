const { BaseStorage } = require("../../../src/storage/baseStorage");
const SkillEntity = require("../entities/skill");

class SkillStorage extends BaseStorage {
  static schema = "hardpoint";
  static table = "skills";
  static Entity = SkillEntity;

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

module.exports = SkillStorage;
