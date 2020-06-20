part of 'controller_bloc.dart';

@immutable
abstract class ControllerState extends Equatable {
  const ControllerState();
}

class ControllerIsLoaded extends ControllerState {
  final String controllerType;
  final bool controllerWitfWiFi;

  const ControllerIsLoaded({this.controllerType, this.controllerWitfWiFi});

  @override
  List<Object> get props => [controllerType, controllerWitfWiFi];
}
