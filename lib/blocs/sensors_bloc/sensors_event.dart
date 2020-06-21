part of 'sensors_bloc.dart';

@immutable
abstract class SensorsEvent extends Equatable {
  const SensorsEvent();
}

class ChangeSensors extends SensorsEvent {
  final Sensors sensors;

  ChangeSensors(this.sensors);

  @override
  List<Object> get props => [sensors];
}
