/**
 * Hardpoint fields on hardpoint_type (package schema: hardpoint.hardpoint_type_<field>).
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
  },
};
