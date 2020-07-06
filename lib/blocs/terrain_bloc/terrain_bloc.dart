import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'terrain_event.dart';
part 'terrain_state.dart';

class TerrainBloc extends Bloc<TerrainEvent, TerrainState> {
  TerrainBloc()
      : super(const TerrainIsLoaded(
          flatTerrain: true,
          heightDifference: '',
        ));

  @override
  Stream<TerrainState> mapEventToState(
    TerrainEvent event,
  ) async* {
    if (event is ChangeFlatTerrain) {
      yield* _changeFlatTerrainToState(event);
    } else if (event is ChangeHeightDifference) {
      yield* _changeHeightDifferenceToState(event);
    }
  }

  Stream<TerrainState> _changeFlatTerrainToState(
      ChangeFlatTerrain event) async* {
    if (state is TerrainIsLoaded) {
      final bool flatTerrain = event.flatTerrain;
      yield TerrainIsLoaded(
        flatTerrain: flatTerrain,
        heightDifference: '',
      );
    }
  }

  Stream<TerrainState> _changeHeightDifferenceToState(
      ChangeHeightDifference event) async* {
    if (state is TerrainIsLoaded) {
      final String heightDifference = event.heightDifference;
      yield TerrainIsLoaded(
        flatTerrain: (state as TerrainIsLoaded).flatTerrain,
        heightDifference: heightDifference,
      );
    }
  }
}
