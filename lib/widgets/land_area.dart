import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/main_bloc/options_bloc.dart';
import '../constants.dart';

class LandArea extends StatelessWidget {
  LandArea({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Площадь участка, сотки:',
          style: questionTextStyle,
        ),
        questionIndent,
        Flexible(
          child: SizedBox(
            height: 56.0,
            child: BlocBuilder<OptionsBloc, OptionsState>(
              builder: (context, bloc) {
                if (bloc is OptionsIsLoaded) {
                  return TextField(
                    onChanged: (value) => context.bloc<OptionsBloc>().add(
                        ChangeAnswers(bloc.answers.copyWith(landArea: value))),
                    cursorColor: mainColor,
                    maxLines: 5,
                    minLines: 1,
                    decoration: textFormInputDecoration,
                    textCapitalization: TextCapitalization.sentences,
                    keyboardType: TextInputType.number,
                  );
                } else {
                  return null;
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
