part of 'water_tank_bloc.dart';

@immutable
abstract class WaterTankEvent extends Equatable {
  const WaterTankEvent();
}

class ChangeWaterTank extends WaterTankEvent {
  final bool needWaterTank;

  ChangeWaterTank(this.needWaterTank);

  @override
  List<Object> get props => [needWaterTank];
}
