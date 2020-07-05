import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'water_outlets_event.dart';
part 'water_outlets_state.dart';

class WaterOutletsBloc extends Bloc<WaterOutletsEvent, WaterOutletsState> {
  WaterOutletsBloc() : super(const WaterOutletsIsLoaded(''));
  /*@override
  WaterOutletsState get initialState => const WaterOutletsIsLoaded('');*/

  @override
  Stream<WaterOutletsState> mapEventToState(
    WaterOutletsEvent event,
  ) async* {
    if (event is ChangeWaterOutlets) {
      yield* _changeWaterOutletsToState(event);
    }
  }

  Stream<WaterOutletsState> _changeWaterOutletsToState(
      ChangeWaterOutlets event) async* {
    if (state is WaterOutletsIsLoaded) {
      final String newWaterOutlets = event.waterOutlets;
      yield WaterOutletsIsLoaded(newWaterOutlets);
    }
  }
}
