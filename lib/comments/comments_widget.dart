import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants.dart';
import 'bloc/comments_bloc.dart';

class Comments extends StatelessWidget {
  Comments({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentsBloc, CommentsState>(
      builder: (context, bloc) {
        if (bloc is CommentsIsLoaded) {
          return TextField(
            onChanged: (value) =>
                context.bloc<CommentsBloc>().add(ChangeComments(value)),
            cursorColor: mainColor,
            maxLines: 10,
            minLines: 5,
            decoration: commentsInputDecoration,
            textCapitalization: TextCapitalization.sentences,
            keyboardType: TextInputType.multiline,
          );
        } else {
          return null;
        }
      },
    );
  }
}
