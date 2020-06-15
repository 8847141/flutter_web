part of 'options_bloc.dart';

@immutable
abstract class OptionsEvent extends Equatable {
  const OptionsEvent();
}

class ChangeAnswers extends OptionsEvent {
  final Answers answers;

  ChangeAnswers(this.answers);

  @override
  List<Object> get props => [answers];
}
