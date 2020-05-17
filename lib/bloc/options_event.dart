part of 'options_bloc.dart';

@immutable
abstract class OptionsEvent {
  const OptionsEvent();
}

class ChangeTerrain extends OptionsEvent {
  final String terrain;

  ChangeTerrain(this.terrain);

  List<Object> get props => [terrain];
}

class ChangeConnectionType extends OptionsEvent {
  final String connectionType;

  ChangeConnectionType(this.connectionType);

  List<Object> get props => [connectionType];
}

class WaterThePath extends OptionsEvent {
  final bool path;

  WaterThePath(this.path);

  List<Object> get props => [path];
}
