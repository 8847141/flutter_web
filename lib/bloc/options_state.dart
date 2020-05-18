part of 'options_bloc.dart';

@immutable
abstract class OptionsState {
  const OptionsState();
}

class OptionsIsLoaded extends OptionsState {
  final Answers answers;

  const OptionsIsLoaded(this.answers);

  List<Object> get props => [answers];
}
