/**
 * Hardpoint fields on vehicle_template (package schema: hardpoint.vehicle_template_<field>).
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
    features: {
      type: "entityRef",
      label: "Features",
      refs: "feature",
      cardinality: 0,
    },
  },
};
