part of 'drip_bloc.dart';

@immutable
abstract class DripEvent extends Equatable {
  const DripEvent();
}

class ChangeDrip extends DripEvent {
  final bool dripIrrigation;

  ChangeDrip(this.dripIrrigation);

  @override
  List<Object> get props => [dripIrrigation];
}
