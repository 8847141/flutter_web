import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'land_area_event.dart';
part 'land_area_state.dart';

class LandAreaBloc extends Bloc<LandAreaEvent, LandAreaState> {
  @override
  LandAreaState get initialState => const LandAreaIsLoaded('');

  @override
  Stream<LandAreaState> mapEventToState(
    LandAreaEvent event,
  ) async* {
    if (event is ChangeLandArea) {
      yield* _changeLandAreaToState(event);
    }
  }

  Stream<LandAreaState> _changeLandAreaToState(ChangeLandArea event) async* {
    if (state is LandAreaIsLoaded) {
      final String newLandArea = event.landArea;
      yield LandAreaIsLoaded(newLandArea);
    }
  }
}
