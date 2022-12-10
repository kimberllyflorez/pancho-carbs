enum Unit { G, EMPTY, MG }

final unitValues = EnumValues({
  "": Unit.EMPTY,
  "g": Unit.G,
  "mg": Unit.MG
});

enum EnergyUnit { KCAL, K_J }

final energyUnitValues = EnumValues({"kcal": EnergyUnit.KCAL, "kJ": EnergyUnit.K_J});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}