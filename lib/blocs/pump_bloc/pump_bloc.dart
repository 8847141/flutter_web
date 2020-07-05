import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'pump_event.dart';
part 'pump_state.dart';

class PumpBloc extends Bloc<PumpEvent, PumpState> {
  PumpBloc() : super(const PumpIsLoaded(true));
  /*@override
  PumpState get initialState => const PumpIsLoaded(true);*/

  @override
  Stream<PumpState> mapEventToState(
    PumpEvent event,
  ) async* {
    if (event is ChangePump) {
      yield* _changePumpToState(event);
    }
  }

  Stream<PumpState> _changePumpToState(ChangePump event) async* {
    if (state is PumpIsLoaded) {
      final bool needPump = event.needPump;
      yield PumpIsLoaded(needPump);
    }
  }
}
