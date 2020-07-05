import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'walkway_event.dart';
part 'walkway_state.dart';

class WalkwayBloc extends Bloc<WalkwayEvent, WalkwayState> {
  WalkwayBloc() : super(const WalkwayIsLoaded(true));
  /*@override
  WalkwayState get initialState => const WalkwayIsLoaded(true);*/

  @override
  Stream<WalkwayState> mapEventToState(
    WalkwayEvent event,
  ) async* {
    if (event is ChangeWalkway) {
      yield* _changeWalkwayToState(event);
    }
  }

  Stream<WalkwayState> _changeWalkwayToState(ChangeWalkway event) async* {
    if (state is WalkwayIsLoaded) {
      final bool canBeWateredWalkway = event.canBeWateredWalkway;
      yield WalkwayIsLoaded(canBeWateredWalkway);
    }
  }
}
