import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants.dart';
import '../main_bloc/options_bloc.dart';

class WaterOutlets extends StatelessWidget {
  WaterOutlets({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Водяные розетки, шт:',
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
                        ChangeAnswers(
                            bloc.answers.copyWith(waterOutlet: value))),
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
