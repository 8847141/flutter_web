part of 'watering_bloc.dart';

@immutable
abstract class WateringEvent extends Equatable {
  const WateringEvent();
}

class ChangeWatering extends WateringEvent {
  final TypesOfIrrigatedLandings typesOfIrrigatedLandings;

  ChangeWatering(this.typesOfIrrigatedLandings);

  @override
  List<Object> get props => [typesOfIrrigatedLandings];
}
