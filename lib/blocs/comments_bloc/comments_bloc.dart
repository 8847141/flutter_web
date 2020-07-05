import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'comments_event.dart';
part 'comments_state.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  CommentsBloc() : super(const CommentsIsLoaded(''));
  /* @override
  CommentsState get initialState => const CommentsIsLoaded('');*/

  @override
  Stream<CommentsState> mapEventToState(
    CommentsEvent event,
  ) async* {
    if (event is ChangeComments) {
      yield* _changeCommentsToState(event);
    }
  }

  Stream<CommentsState> _changeCommentsToState(ChangeComments event) async* {
    if (state is CommentsIsLoaded) {
      final String newComments = event.comments;
      yield CommentsIsLoaded(newComments);
    }
  }
}
