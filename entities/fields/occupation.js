/**
 * Hardpoint fields on occupation (package schema: hardpoint.occupation_<field>).
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
    grantedSkills: {
      type: "skillBonus",
      label: "Granted skills",
      cardinality: 0,
    },
  },
};
