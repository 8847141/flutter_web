import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../models/types_of_irrigated_landings.dart';

part 'watering_event.dart';
part 'watering_state.dart';

class WateringBloc extends Bloc<WateringEvent, WateringState> {
  WateringBloc() : super(WateringIsLoaded(TypesOfIrrigatedLandings()));
  /*@override
  WateringState get initialState =>
      WateringIsLoaded(TypesOfIrrigatedLandings());*/

  @override
  Stream<WateringState> mapEventToState(
    WateringEvent event,
  ) async* {
    if (event is ChangeWatering) {
      yield* _changeWateringToState(event);
    }
  }

  Stream<WateringState> _changeWateringToState(ChangeWatering event) async* {
    if (state is WateringIsLoaded) {
      final TypesOfIrrigatedLandings newTypesOfIrrigatedLandings =
          event.typesOfIrrigatedLandings;
      yield WateringIsLoaded(newTypesOfIrrigatedLandings);
    }
  }
}
