import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../models/sensors.dart';

part 'sensors_event.dart';
part 'sensors_state.dart';

class SensorsBloc extends Bloc<SensorsEvent, SensorsState> {
  SensorsBloc() : super(SensorsIsLoaded(Sensors()));
  /*@override
  SensorsState get initialState => SensorsIsLoaded(Sensors());*/

  @override
  Stream<SensorsState> mapEventToState(
    SensorsEvent event,
  ) async* {
    if (event is ChangeSensors) {
      yield* _changeSensorsToState(event);
    }
  }

  Stream<SensorsState> _changeSensorsToState(ChangeSensors event) async* {
    if (state is SensorsIsLoaded) {
      final Sensors newSensors = event.sensors;
      yield SensorsIsLoaded(newSensors);
    }
  }
}
