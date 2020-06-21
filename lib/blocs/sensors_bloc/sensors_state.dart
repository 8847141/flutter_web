part of 'sensors_bloc.dart';

@immutable
abstract class SensorsState extends Equatable {
  const SensorsState();
}

class SensorsIsLoaded extends SensorsState {
  final Sensors sensors;

  const SensorsIsLoaded(this.sensors);

  @override
  List<Object> get props => [sensors];
}
