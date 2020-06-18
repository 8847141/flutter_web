part of 'pump_bloc.dart';

@immutable
abstract class PumpEvent extends Equatable {
  const PumpEvent();
}

class ChangePump extends PumpEvent {
  final bool needPump;

  ChangePump(this.needPump);

  @override
  List<Object> get props => [needPump];
}
