part of 'walkway_bloc.dart';

@immutable
abstract class WalkwayEvent extends Equatable {
  const WalkwayEvent();
}

class ChangeWalkway extends WalkwayEvent {
  final bool canBeWateredWalkway;

  ChangeWalkway(this.canBeWateredWalkway);

  @override
  List<Object> get props => [canBeWateredWalkway];
}
