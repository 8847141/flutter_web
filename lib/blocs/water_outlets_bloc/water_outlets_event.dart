part of 'water_outlets_bloc.dart';

@immutable
abstract class WaterOutletsEvent extends Equatable {
  const WaterOutletsEvent();
}

class ChangeWaterOutlets extends WaterOutletsEvent {
  final String waterOutlets;

  ChangeWaterOutlets(this.waterOutlets);

  @override
  List<Object> get props => [waterOutlets];
}
