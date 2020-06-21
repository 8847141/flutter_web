part of 'land_area_bloc.dart';

@immutable
abstract class LandAreaState extends Equatable {
  const LandAreaState();
}

class LandAreaIsLoaded extends LandAreaState {
  final String landArea;

  const LandAreaIsLoaded(this.landArea);

  @override
  List<Object> get props => [landArea];
}
