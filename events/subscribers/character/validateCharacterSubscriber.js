const STAT_KEYS = ["spirit", "mind", "body"];
const MIN_STAT = -3;
const MAX_STAT = 3;

function normalizeStat(value) {
  const numeric = Number(value);
  if (!Number.isFinite(numeric)) {
    return 0;
  }
  if (numeric < MIN_STAT) {
    return MIN_STAT;
  }
  if (numeric > MAX_STAT) {
    return MAX_STAT;
  }
  return Math.trunc(numeric);
}

class ValidateCharacterSubscriber {
  static getSubscribedEvents() {
    return {
      CharacterPreCreateEvent: "onPreCreate",
      CharacterPreUpdateEvent: "onPreUpdate",
    };
  }

  ensureHardpointStats(character) {
    for (const key of STAT_KEYS) {
      character[key] = normalizeStat(character[key]);
    }
  }

  onPreCreate(event) {
    this.ensureHardpointStats(event.entity);
  }

  onPreUpdate(event) {
    this.ensureHardpointStats(event.entity);
  }
}

module.exports = ValidateCharacterSubscriber;
