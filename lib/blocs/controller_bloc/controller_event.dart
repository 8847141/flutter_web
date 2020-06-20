part of 'controller_bloc.dart';

@immutable
abstract class ControllerEvent extends Equatable {
  const ControllerEvent();
}

class ChangeControllerType extends ControllerEvent {
  final String controllerType;

  ChangeControllerType(this.controllerType);

  @override
  List<Object> get props => [controllerType];
}

class ChangeControllerWitfWiFi extends ControllerEvent {
  final bool controllerWitfWiFi;

  ChangeControllerWitfWiFi(this.controllerWitfWiFi);

  @override
  List<Object> get props => [controllerWitfWiFi];
}
