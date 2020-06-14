part of 'options_bloc.dart';

@immutable
abstract class OptionsEvent {
  const OptionsEvent();
}

class ChangeAnswers extends OptionsEvent {
  final Answers answers;

  ChangeAnswers(this.answers);

  List<Object> get props => [answers];
}
