part of 'water_outlets_bloc.dart';

@immutable
abstract class WaterOutletsState extends Equatable {
  const WaterOutletsState();
}

class WaterOutletsIsLoaded extends WaterOutletsState {
  final String waterOutlets;

  const WaterOutletsIsLoaded(this.waterOutlets);

  @override
  List<Object> get props => [waterOutlets];
}
