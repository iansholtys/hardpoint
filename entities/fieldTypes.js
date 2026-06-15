/**
 * Hardpoint-specific field types.
 */
module.exports = {
  fieldTypes: {
    skillBonus: {
      defaultSortColumn: "skillGuid",
      columns: [
        { name: "skill_guid", type: "uuid", nullable: false, refs: "skill" },
        { name: "value", type: "integer", nullable: false, default: "0" },
      ],
    },
    hardpointSlot: {
      columns: [{ name: "hardpoint_type_guid", type: "uuid", nullable: false, refs: "hardpoint_type" }],
    },
  },
};
