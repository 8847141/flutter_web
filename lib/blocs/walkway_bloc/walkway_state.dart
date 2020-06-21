part of 'walkway_bloc.dart';

@immutable
abstract class WalkwayState extends Equatable {
  const WalkwayState();
}

class WalkwayIsLoaded extends WalkwayState {
  final bool canBeWateredWalkway;

  const WalkwayIsLoaded(this.canBeWateredWalkway);

  @override
  List<Object> get props => [canBeWateredWalkway];
}
