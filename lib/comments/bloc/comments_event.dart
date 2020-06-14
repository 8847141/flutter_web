part of 'comments_bloc.dart';

abstract class CommentsEvent extends Equatable {
  const CommentsEvent();
}

class ChangeComments extends CommentsEvent {
  final String comments;

  ChangeComments(this.comments);

  @override
  List<Object> get props => [comments];
}
