part of 'terrain_bloc.dart';

@immutable
abstract class TerrainEvent extends Equatable {
  const TerrainEvent();
}

class ChangeFlatTerrain extends TerrainEvent {
  final bool flatTerrain;

  ChangeFlatTerrain(this.flatTerrain);

  @override
  List<Object> get props => [flatTerrain];
}

class ChangeHeightDifference extends TerrainEvent {
  final String heightDifference;

  ChangeHeightDifference(this.heightDifference);

  @override
  List<Object> get props => [heightDifference];
}
