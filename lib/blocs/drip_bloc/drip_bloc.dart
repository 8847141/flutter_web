import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'drip_event.dart';
part 'drip_state.dart';

class DripBloc extends Bloc<DripEvent, DripState> {
  DripBloc() : super(const DripIsLoaded(false));
  /*@override
  DripState get initialState => const DripIsLoaded(false);*/

  @override
  Stream<DripState> mapEventToState(
    DripEvent event,
  ) async* {
    if (event is ChangeDrip) {
      yield* _changeDripToState(event);
    }
  }

  Stream<DripState> _changeDripToState(ChangeDrip event) async* {
    if (state is DripIsLoaded) {
      final bool dripIrrigation = event.dripIrrigation;
      yield DripIsLoaded(dripIrrigation);
    }
  }
}
