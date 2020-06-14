import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'comments_event.dart';
part 'comments_state.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  final String comments = '';

  @override
  CommentsState get initialState => CommentsInitial('');

  @override
  Stream<CommentsState> mapEventToState(
    CommentsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
