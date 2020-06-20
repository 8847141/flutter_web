part of 'connection_type_bloc.dart';

@immutable
abstract class ConnectionTypeState extends Equatable {
  const ConnectionTypeState();
}

class ConnectionTypeIsLoaded extends ConnectionTypeState {
  final String connectionType;
  final String otherConnectionType;

  const ConnectionTypeIsLoaded({this.connectionType, this.otherConnectionType});

  @override
  List<Object> get props => [connectionType, otherConnectionType];
}
