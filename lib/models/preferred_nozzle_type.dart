class PreferredNozzleType {
  bool statics;
  bool rotors;
  bool rotators;
  bool any;

  PreferredNozzleType(
      {this.statics = false,
      this.rotators = false,
      this.rotors = false,
      this.any = true});

  PreferredNozzleType copyWith({
    bool statics,
    bool rotors,
    bool rotators,
    bool any,
  }) {
    return PreferredNozzleType(
      statics: statics ?? this.statics,
      rotors: rotors ?? this.rotors,
      rotators: rotators ?? this.rotators,
      any: any ?? this.any,
    );
  }
}
