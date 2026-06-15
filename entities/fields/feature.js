/**
 * Hardpoint fields on feature (package schema: hardpoint.feature_<field>).
 */
module.exports = {
  fields: {
    name: {
      type: "text",
      label: "Name",
      required: true,
    },
    description: {
      type: "text",
      label: "Description",
      inputType: "textarea",
    },
    isVehicle: {
      type: "boolean",
      label: "Vehicle feature",
      default: false,
    },
    skillBonuses: {
      type: "skillBonus",
      label: "Skill bonuses",
      cardinality: 0,
    },
    prerequisites: {
      type: "entityRef",
      label: "Prerequisites",
      refs: "feature",
      cardinality: 0,
    },
  },
};
