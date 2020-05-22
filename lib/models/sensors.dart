class Sensors {
  bool rain;
  bool wind;
  bool soil;
  bool freeze;
  bool rainFreeze;
  bool solar;
  bool flow;

  Sensors(
      {this.rain = true,
      this.wind = false,
      this.soil = false,
      this.freeze = false,
      this.rainFreeze = false,
      this.solar = false,
      this.flow = false});

  Sensors copyWith({
    bool rain,
    bool wind,
    bool soil,
    bool freeze,
    bool rainFreeze,
    bool solar,
    bool flow,
  }) {
    return Sensors(
      rain: rain ?? this.rain,
      wind: wind ?? this.wind,
      soil: soil ?? this.soil,
      freeze: freeze ?? this.freeze,
      rainFreeze: rainFreeze ?? this.rainFreeze,
      solar: solar ?? this.solar,
      flow: flow ?? this.flow,
    );
  }
}
