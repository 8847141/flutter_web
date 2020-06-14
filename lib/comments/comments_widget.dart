import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants.dart';
import '../main_bloc/options_bloc.dart';

class Comments extends StatelessWidget {
  Comments({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OptionsBloc, OptionsState>(
      builder: (context, bloc) {
        if (bloc is OptionsIsLoaded) {
          return TextField(
            onChanged: (value) => context
                .bloc<OptionsBloc>()
                .add(ChangeAnswers(bloc.answers.copyWith(comments: value))),
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
