part of 'terrain_bloc.dart';

@immutable
abstract class TerrainState extends Equatable {
  const TerrainState();
}

class TerrainIsLoaded extends TerrainState {
  final bool flatTerrain;
  final String heightDifference;

  const TerrainIsLoaded({this.flatTerrain, this.heightDifference});

  @override
  List<Object> get props => [flatTerrain, heightDifference];
}
