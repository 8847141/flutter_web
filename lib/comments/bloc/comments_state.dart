part of 'comments_bloc.dart';

@immutable
abstract class CommentsState extends Equatable {
  const CommentsState();
}

class CommentsIsLoaded extends CommentsState {
  final String comments;

  const CommentsIsLoaded(this.comments);

  @override
  List<Object> get props => [comments];
}
