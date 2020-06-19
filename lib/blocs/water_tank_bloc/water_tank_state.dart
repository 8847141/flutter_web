part of 'water_tank_bloc.dart';

@immutable
abstract class WaterTankState extends Equatable {
  const WaterTankState();
}

class WaterTankIsLoaded extends WaterTankState {
  final bool needWaterTank;

  const WaterTankIsLoaded(this.needWaterTank);

  @override
  List<Object> get props => [needWaterTank];
}
