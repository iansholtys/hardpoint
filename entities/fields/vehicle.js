/**
 * Hardpoint fields on vehicle (package schema: hardpoint.vehicle_<field>).
 * Entity base table: hardpoint.vehicles
 */
module.exports = {
  fields: {
    vehicleTemplateGuid: {
      type: "entityRef",
      label: "Vehicle template",
      refs: "vehicle_template",
      required: true,
    },
    name: {
      type: "text",
      label: "Name",
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
