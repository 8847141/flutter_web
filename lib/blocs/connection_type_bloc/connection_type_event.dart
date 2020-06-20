part of 'connection_type_bloc.dart';

@immutable
abstract class ConnectionTypeEvent extends Equatable {
  const ConnectionTypeEvent();
}

class ChangeConnectionType extends ConnectionTypeEvent {
  final String connectionType;

  ChangeConnectionType(this.connectionType);

  @override
  List<Object> get props => [connectionType];
}

class ChangeOtherConnectionType extends ConnectionTypeEvent {
  final String otherConnectionType;

  ChangeOtherConnectionType(this.otherConnectionType);

  @override
  List<Object> get props => [otherConnectionType];
}
