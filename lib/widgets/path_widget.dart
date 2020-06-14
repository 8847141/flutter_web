import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants.dart';
import '../main_bloc/options_bloc.dart';

class Path extends StatelessWidget {
  Path({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Поливаем дорожки?',
            style: questionTextStyle,
          ),
        ),
        questionIndent,
        BlocBuilder<OptionsBloc, OptionsState>(
          builder: (context, bloc) {
            if (bloc is OptionsIsLoaded) {
              return Row(
                children: [
                  DecoratedBox(
                    decoration: bloc.answers.canBeWateredWalkway
                        ? answerDecoration
                        : hideDecoration,
                    child: SizedBox(
                      width: 130.0,
                      child: RadioListTile(
                        title: const Text('Да'),
                        activeColor: mainColor,
                        value: true,
                        groupValue: bloc.answers.canBeWateredWalkway,
                        onChanged: (dynamic value) => context
                            .bloc<OptionsBloc>()
                            .add(ChangeAnswers(bloc.answers
                                .copyWith(canBeWateredWalkway: value as bool))),
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: bloc.answers.canBeWateredWalkway
                        ? hideDecoration
                        : answerDecoration,
                    child: SizedBox(
                      width: 130.0,
                      child: RadioListTile(
                        title: const Text('Нет'),
                        activeColor: mainColor,
                        value: false,
                        groupValue: bloc.answers.canBeWateredWalkway,
                        onChanged: (dynamic value) => context
                            .bloc<OptionsBloc>()
                            .add(ChangeAnswers(bloc.answers
                                .copyWith(canBeWateredWalkway: value as bool))),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return null;
            }
          },
        ),
      ],
    );
  }
}
