part of 'land_area_bloc.dart';

@immutable
abstract class LandAreaEvent extends Equatable {
  const LandAreaEvent();
}

class ChangeLandArea extends LandAreaEvent {
  final String landArea;

  ChangeLandArea(this.landArea);

  @override
  List<Object> get props => [landArea];
}
