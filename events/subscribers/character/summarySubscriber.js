const STAT_KEYS = ["spirit", "mind", "body"];

class CharacterSummarySubscriber {
  static getSubscribedEvents() {
    return {
      CharacterPostGetEvent: "onCharacterPostGet",
    };
  }

  onCharacterPostGet(event) {
    for (const character of event.characters) {
      const summary = this.buildCharacterSummary(character);

      character.extensions.hardpoint = {
        ...(character.extensions.hardpoint || {}),
        summary,
      };
    }
  }

  characterDisplayName(character) {
    const core = character.packages?.genrpg || {};
    return core.display_name || core.full_name || "Someone";
  }

  readHardpointStats(character) {
    const hardpoint = character.packages?.hardpoint;
    if (!hardpoint) {
      return null;
    }

    const stats = [];
    for (const key of STAT_KEYS) {
      const value = Number(hardpoint[key]);
      if (!Number.isFinite(value)) {
        continue;
      }
      stats.push({ key, value });
    }

    return stats.length ? stats : null;
  }

  pickWeakestAndStrongest(stats) {
    let weakest = stats[0];
    let strongest = stats[0];

    for (const stat of stats) {
      if (stat.value < weakest.value) {
        weakest = stat;
      }
      if (stat.value >= strongest.value) {
        strongest = stat;
      }
    }

    return { weakest, strongest };
  }

  buildCharacterSummary(character) {
    const name = this.characterDisplayName(character);
    const stats = this.readHardpointStats(character);
    if (!stats) {
      return `${name} has no Hardpoint stats recorded yet.`;
    }

    const allEqual = stats.every((stat) => stat.value === stats[0].value);
    if (allEqual) {
      return `${name} is balanced across spirit, mind, and body`;
    }

    const { weakest, strongest } = this.pickWeakestAndStrongest(stats);
    return `${name} is weak of ${weakest.key} but strong of ${strongest.key}`;
  }
}

module.exports = CharacterSummarySubscriber;
