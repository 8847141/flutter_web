part of 'pump_bloc.dart';

@immutable
abstract class PumpState extends Equatable {
  const PumpState();
}

class PumpIsLoaded extends PumpState {
  final bool needPump;

  const PumpIsLoaded(this.needPump);

  @override
  List<Object> get props => [needPump];
}
