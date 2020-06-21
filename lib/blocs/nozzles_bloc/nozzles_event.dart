part of 'nozzles_bloc.dart';

@immutable
abstract class NozzlesEvent extends Equatable {
  const NozzlesEvent();
}

class ChangeNozzles extends NozzlesEvent {
  final PreferredNozzleType preferredNozzleType;

  ChangeNozzles(this.preferredNozzleType);

  @override
  List<Object> get props => [preferredNozzleType];
}
