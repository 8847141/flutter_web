part of 'options_bloc.dart';

@immutable
abstract class OptionsState extends Equatable {
  const OptionsState();
}

class OptionsIsLoaded extends OptionsState {
  final Answers answers;

  const OptionsIsLoaded(this.answers);

  @override
  List<Object> get props => [answers];
}
