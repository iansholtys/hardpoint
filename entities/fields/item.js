/**
 * Hardpoint fields on item (package schema: hardpoint.item_<field>).
 * Entity base table: genrpg.items
 */
module.exports = {
  fields: {
    isEquipment: {
      type: "boolean",
      label: "Equipment",
      default: false,
    },
    value: {
      type: "number",
      label: "Value",
    },
    hardpointSlots: {
      type: "hardpointSlot",
      label: "Hardpoint slots",
      cardinality: 0,
    },
  },
};
