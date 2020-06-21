import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../models/preferred_nozzle_type.dart';

part 'nozzles_event.dart';
part 'nozzles_state.dart';

class NozzlesBloc extends Bloc<NozzlesEvent, NozzlesState> {
  @override
  NozzlesState get initialState => NozzlesIsLoaded(PreferredNozzleType());

  @override
  Stream<NozzlesState> mapEventToState(
    NozzlesEvent event,
  ) async* {
    if (event is ChangeNozzles) {
      yield* _changeNozzleToState(event);
    }
  }

  Stream<NozzlesState> _changeNozzleToState(ChangeNozzles event) async* {
    if (state is NozzlesIsLoaded) {
      final PreferredNozzleType newPreferredNozzleType =
          event.preferredNozzleType;
      yield NozzlesIsLoaded(newPreferredNozzleType);
    }
  }
}
