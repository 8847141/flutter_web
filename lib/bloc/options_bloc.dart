import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'options_event.dart';
part 'options_state.dart';

class OptionsBloc extends Bloc<OptionsEvent, OptionsState> {
  final List<String> terrains = ['Ровный', 'С перепадом высот'];
  final List<String> connectionTypes = [
    'Магистраль',
    'Емкость',
    'Колодец',
    'Скважина',
    'Водоем',
    'Другое'
  ];

  final bool _path = true;

  @override
  OptionsState get initialState => OptionsIsLoaded(
      terrain: terrains.first,
      connectionType: connectionTypes.first,
      path: _path);

  @override
  Stream<OptionsState> mapEventToState(
    OptionsEvent event,
  ) async* {
    if (event is ChangeTerrain) {
      yield* _changeTerrainToState(event);
    } else if (event is ChangeConnectionType) {
      yield* _changeConnectionTypeToState(event);
    } else if (event is WaterThePath) {
      yield* _waterThePathToState(event);
    }
  }

  Stream<OptionsState> _changeTerrainToState(ChangeTerrain event) async* {
    if (state is OptionsIsLoaded) {
      final String terrain = event.terrain;
      yield OptionsIsLoaded(
          terrain: terrain,
          connectionType: (state as OptionsIsLoaded).connectionType,
          path: (state as OptionsIsLoaded).path);
    }
  }

  Stream<OptionsState> _changeConnectionTypeToState(
      ChangeConnectionType event) async* {
    if (state is OptionsIsLoaded) {
      final String connectionType = event.connectionType;
      yield OptionsIsLoaded(
          terrain: (state as OptionsIsLoaded).terrain,
          connectionType: connectionType,
          path: (state as OptionsIsLoaded).path);
    }
  }

  Stream<OptionsState> _waterThePathToState(WaterThePath event) async* {
    if (state is OptionsIsLoaded) {
      final bool path = event.path;
      yield OptionsIsLoaded(
          terrain: (state as OptionsIsLoaded).terrain,
          connectionType: (state as OptionsIsLoaded).connectionType,
          path: path);
    }
  }
}
