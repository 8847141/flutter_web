import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../comments/bloc/comments_bloc.dart';

import '../models/answers.dart';

part 'options_event.dart';
part 'options_state.dart';

class OptionsBloc extends Bloc<OptionsEvent, OptionsState> {
  final Answers answers = Answers();
  /*final CommentsBloc commentsBloc;
  StreamSubscription commentsBlocSubscription;

  OptionsBloc(this.commentsBloc) {
    commentsBlocSubscription = commentsBloc.listen((state) {
      // React to state changes here.
      // Add events here to trigger changes in MyBloc.
    });
  }

  @override
  Future<void> close() {
    commentsBlocSubscription.cancel();
    return super.close();
  }*/

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
