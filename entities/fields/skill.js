/**
 * Hardpoint fields on skill (package schema: hardpoint.skill_<field>).
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
    isPilotSkill: {
      type: "boolean",
      label: "Pilot skill",
      default: false,
    },
    isBody: {
      type: "boolean",
      label: "Body",
      default: false,
    },
    isMind: {
      type: "boolean",
      label: "Mind",
      default: false,
    },
    isSpirit: {
      type: "boolean",
      label: "Spirit",
      default: false,
    },
  },
};
