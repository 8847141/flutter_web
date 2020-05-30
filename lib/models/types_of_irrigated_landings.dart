class TypesOfIrrigatedLandings {
  bool allGarden;
  bool grass;
  bool garden;
  bool flowers;
  bool greenhouse;
  bool shrub;

  TypesOfIrrigatedLandings({
    this.allGarden = false,
    this.grass = true,
    this.garden = false,
    this.flowers = false,
    this.greenhouse = false,
    this.shrub = false,
  });

  TypesOfIrrigatedLandings copyWith({
    bool allGarden,
    bool grass,
    bool garden,
    bool flowers,
    bool greenhouse,
    bool shrub,
  }) {
    //ToDo Добавить отключение, если выбрано все
    return TypesOfIrrigatedLandings(
      allGarden: allGarden ?? this.allGarden,
      grass: grass ?? this.grass,
      garden: garden ?? this.garden,
      flowers: flowers ?? this.flowers,
      greenhouse: greenhouse ?? this.greenhouse,
      shrub: shrub ?? this.shrub,
    );
  }
}
