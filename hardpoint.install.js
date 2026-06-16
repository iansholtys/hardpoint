const SkillStorage = require("./storage/skillStorage");
const OccupationStorage = require("./storage/occupationStorage");
const HardpointTypeStorage = require("./storage/hardpointTypeStorage");
const { importJsonEntities } = require("../../src/lib/seedImport");

function resolveOccupationRecords(records, ctx) {
  return records.map((record) => {
    const { grantedSkills, ...rest } = record;
    const resolved = { ...rest };

    if (Array.isArray(grantedSkills)) {
      resolved.grantedSkills = grantedSkills.map((entry) => ({
        skillGuid: ctx.resolveRef("skill", entry.skill),
        value: entry.value,
      }));
    }

    return resolved;
  });
}

async function registerExistingSkills(ctx) {
  const skills = await SkillStorage.global().listEntities();
  for (const skill of skills) {
    if (skill.name) {
      ctx.registerRef("skill", skill.name, skill.guid);
    }
  }
}

module.exports = {
  global: {
    1: async (ctx) => {
      const records = await ctx.loadSeedJson("seed/skills.json");
      await importJsonEntities(SkillStorage.global(), records, { refs: ctx });
    },
    2: async (ctx) => {
      await registerExistingSkills(ctx);
      const records = await ctx.loadSeedJson("seed/occupations.json");
      const resolved = resolveOccupationRecords(records, ctx);
      await importJsonEntities(OccupationStorage.global(), resolved, { refs: ctx });
    },
    3: async (ctx) => {
      const records = await ctx.loadSeedJson("seed/hardpoint_types.json");
      await importJsonEntities(HardpointTypeStorage.global(), records, { refs: ctx });
    },
  },
};
