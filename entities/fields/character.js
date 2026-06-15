/**
 * Hardpoint fields on character (package schema: hardpoint.character_<field>).
 * Tables created at install by applyFieldTables; read/written via BaseStorage field pipeline.
 */
module.exports = {
  fields: {
    body: {
      type: "integer",
      label: "Body",
    },
    mind: {
      type: "integer",
      label: "Mind",
    },
    spirit: {
      type: "integer",
      label: "Spirit",
    },
    occupation: {
      type: "entityRef",
      label: "Occupation",
      refs: "occupation",
    },
    currentExp: {
      type: "number",
      label: "Current experience",
    },
    totalExp: {
      type: "number",
      label: "Total experience",
    },
    skills: {
      type: "skillBonus",
      label: "Skills",
      cardinality: 0,
    },
  },
};
