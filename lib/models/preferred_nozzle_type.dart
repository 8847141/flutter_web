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
    if (any != null) {
      statics = false;
      rotors = false;
      rotators = false;
    }

    if (statics != null && statics) {
      if (this.rotators && this.rotors) {
        any = true;
        statics = false;
        rotors = false;
        rotators = false;
      }
      if (this.any) {
        any = false;
      }
    }

    if (rotators != null && rotators) {
      if (this.statics && this.rotors) {
        any = true;
        statics = false;
        rotors = false;
        rotators = false;
      }
      if (this.any) {
        any = false;
      }
    }

    if (rotors != null && rotors) {
      if (this.statics && this.rotators) {
        any = true;
        statics = false;
        rotors = false;
        rotators = false;
      }
      if (this.any) {
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
