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
    bool greenhouse,
    bool flowers,
    bool shrub,
  }) {
    if (allGarden != null && allGarden) {
      this.grass = true;
      this.garden = true;
      this.greenhouse = true;
      this.flowers = true;
      this.shrub = true;
    }

    if (allGarden != null && !allGarden) {
      this.grass = false;
      this.garden = false;
      this.greenhouse = false;
      this.flowers = false;
      this.shrub = false;
    }

    if (grass != null &&
        this.garden &&
        this.greenhouse &&
        this.flowers &&
        this.shrub) {
      allGarden = grass ? true : false;
      if (this.allGarden) {
        allGarden = false;
        grass = true;
        garden = false;
        greenhouse = false;
        flowers = false;
        shrub = false;
      }
    } else if (garden != null &&
        this.grass &&
        this.greenhouse &&
        this.flowers &&
        this.shrub) {
      allGarden = garden ? true : false;
      if (this.allGarden) {
        allGarden = false;
        grass = false;
        garden = true;
        greenhouse = false;
        flowers = false;
        shrub = false;
      }
    } else if (greenhouse != null &&
        this.grass &&
        this.garden &&
        this.flowers &&
        this.shrub) {
      allGarden = greenhouse ? true : false;
      if (this.allGarden) {
        allGarden = false;
        grass = false;
        garden = false;
        greenhouse = true;
        flowers = false;
        shrub = false;
      }
    } else if (flowers != null &&
        this.grass &&
        this.garden &&
        this.greenhouse &&
        this.shrub) {
      allGarden = flowers ? true : false;
      if (this.allGarden) {
        allGarden = false;
        grass = false;
        garden = false;
        greenhouse = false;
        flowers = true;
        shrub = false;
      }
    } else if (shrub != null &&
        this.grass &&
        this.garden &&
        this.greenhouse &&
        this.flowers) {
      allGarden = shrub ? true : false;
      if (this.allGarden) {
        allGarden = false;
        grass = false;
        garden = false;
        greenhouse = false;
        flowers = false;
        shrub = true;
      }
    }

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
