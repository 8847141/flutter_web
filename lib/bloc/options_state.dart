part of 'options_bloc.dart';

@immutable
abstract class OptionsState {
  const OptionsState();
}

class OptionsIsLoaded extends OptionsState {
  final String terrain;
  final String connectionType;
  final bool path;

  const OptionsIsLoaded({this.terrain, this.connectionType, this.path});

  List<Object> get props => [terrain];
}
