class PreferredNozzleType {
  bool statics;
  bool rotors;
  bool rotators;
  bool any;

  PreferredNozzleType(
      {this.statics = false,
      this.rotators = false,
      this.rotors = false,
      this.any = false});

  PreferredNozzleType copyWith({
    bool statics,
    bool rotors,
    bool rotators,
    bool any,
  }) {
    if (any != null && any) {
      statics = true;
      rotors = true;
      rotators = true;
    }

    if (any != null && !any) {
      statics = false;
      rotors = false;
      rotators = false;
    }

    if (statics != null && this.rotators && this.rotors) {
      any = statics ? true : false;
    } else if (rotators != null && this.statics && this.rotors) {
      any = rotators ? true : false;
    } else if (rotors != null && this.statics && this.rotators) {
      any = rotors ? true : false;
    }

    return PreferredNozzleType(
      statics: statics ?? this.statics,
      rotors: rotors ?? this.rotors,
      rotators: rotators ?? this.rotators,
      any: any ?? this.any,
    );
  }
}
