import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../models/answers.dart';

part 'options_event.dart';
part 'options_state.dart';

class OptionsBloc extends Bloc<OptionsEvent, OptionsState> {
  final Answers answers = const Answers(terrainType: 'Ровный');

  @override
  OptionsState get initialState => OptionsIsLoaded(answers);

  @override
  Stream<OptionsState> mapEventToState(
    OptionsEvent event,
  ) async* {
    if (event is ChangeAnswers) {
      yield* _changeAnswersToState(event);
    }
  }

  Stream<OptionsState> _changeAnswersToState(ChangeAnswers event) async* {
    if (state is OptionsIsLoaded) {
      final Answers newAnswers = event.answers;
      yield OptionsIsLoaded(newAnswers);
    }
  }
}
