part of 'drip_bloc.dart';

@immutable
abstract class DripState extends Equatable {
  const DripState();
}

class DripIsLoaded extends DripState {
  final bool dripIrrigation;

  const DripIsLoaded(this.dripIrrigation);

  @override
  List<Object> get props => [dripIrrigation];
}
