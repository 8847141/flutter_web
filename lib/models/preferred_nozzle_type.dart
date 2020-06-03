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
      this.statics = true;
      this.rotors = true;
      this.rotators = true;
    }

    if (any != null && !any) {
      this.statics = false;
      this.rotors = false;
      this.rotators = false;
    }

    if (statics != null && this.rotators && this.rotors) {
      any = statics ? true : false;
      if (this.any) {
        statics = true;
        rotators = false;
        rotors = false;
        any = false;
      }
    } else if (rotators != null && this.statics && this.rotors) {
      any = rotators ? true : false;
      if (this.any) {
        statics = false;
        rotators = true;
        rotors = false;
        any = false;
      }
    } else if (rotors != null && this.statics && this.rotators) {
      any = rotors ? true : false;
      if (this.any) {
        statics = false;
        rotators = false;
        rotors = true;
        any = false;
      }
    }

    return PreferredNozzleType(
      statics: statics ?? this.statics,
      rotors: rotors ?? this.rotors,
      rotators: rotators ?? this.rotators,
      any: any ?? this.any,
    );
  }
}
