import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'water_tank_event.dart';
part 'water_tank_state.dart';

class WaterTankBloc extends Bloc<WaterTankEvent, WaterTankState> {
  @override
  WaterTankState get initialState => const WaterTankIsLoaded(true);

  @override
  Stream<WaterTankState> mapEventToState(
    WaterTankEvent event,
  ) async* {
    if (event is ChangeWaterTank) {
      yield* _changeWaterTankToState(event);
    }
  }

  Stream<WaterTankState> _changeWaterTankToState(ChangeWaterTank event) async* {
    if (state is WaterTankIsLoaded) {
      final bool needWaterTank = event.needWaterTank;
      yield WaterTankIsLoaded(needWaterTank);
    }
  }
}
