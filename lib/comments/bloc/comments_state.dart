part of 'comments_bloc.dart';

abstract class CommentsState extends Equatable {
  const CommentsState();
}

class CommentsInitial extends CommentsState {
  final String comments;

  const CommentsInitial(this.comments);

  @override
  List<Object> get props => [comments];
}
