part of 'watering_bloc.dart';

@immutable
abstract class WateringState extends Equatable {
  const WateringState();
}

class WateringIsLoaded extends WateringState {
  final TypesOfIrrigatedLandings typesOfIrrigatedLandings;

  const WateringIsLoaded(this.typesOfIrrigatedLandings);

  @override
  List<Object> get props => [typesOfIrrigatedLandings];
}
