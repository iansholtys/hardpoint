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

  ensureHardpointStats(payload) {
    if (!payload || typeof payload !== "object") {
      return;
    }
    if (!payload.packages || typeof payload.packages !== "object") {
      payload.packages = {};
    }
    if (!payload.packages.hardpoint || typeof payload.packages.hardpoint !== "object") {
      payload.packages.hardpoint = {};
    }

    const hardpoint = payload.packages.hardpoint;
    for (const key of STAT_KEYS) {
      hardpoint[key] = normalizeStat(hardpoint[key]);
    }
  }

  onPreCreate(event) {
    if (!event.instancePackageNames?.includes("hardpoint")) {
      return;
    }
    this.ensureHardpointStats(event.payload);
  }

  onPreUpdate(event) {
    if (!event.instancePackageNames?.includes("hardpoint")) {
      return;
    }
    this.ensureHardpointStats(event.payload);
  }
}

module.exports = ValidateCharacterSubscriber;
