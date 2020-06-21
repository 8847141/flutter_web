part of 'nozzles_bloc.dart';

@immutable
abstract class NozzlesState extends Equatable {
  const NozzlesState();
}

class NozzlesIsLoaded extends NozzlesState {
  final PreferredNozzleType preferredNozzleType;

  const NozzlesIsLoaded(this.preferredNozzleType);

  @override
  List<Object> get props => [preferredNozzleType];
}
