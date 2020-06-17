import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/main_bloc/options_bloc.dart';
import '../constants.dart';

class WaterTank extends StatelessWidget {
  WaterTank({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Подобрать емкость?',
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
                    decoration: bloc.answers.needWaterTank
                        ? answerDecoration
                        : hideDecoration,
                    child: SizedBox(
                      width: 130.0,
                      child: RadioListTile(
                        title: const Text('Да'),
                        activeColor: mainColor,
                        value: true,
                        groupValue: bloc.answers.needWaterTank,
                        onChanged: (dynamic value) => context
                            .bloc<OptionsBloc>()
                            .add(ChangeAnswers(bloc.answers
                                .copyWith(needWaterTank: value as bool))),
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: bloc.answers.needWaterTank
                        ? hideDecoration
                        : answerDecoration,
                    child: SizedBox(
                      width: 130.0,
                      child: RadioListTile(
                        title: const Text('Нет'),
                        activeColor: mainColor,
                        value: false,
                        groupValue: bloc.answers.needWaterTank,
                        onChanged: (dynamic value) => context
                            .bloc<OptionsBloc>()
                            .add(ChangeAnswers(bloc.answers
                                .copyWith(needWaterTank: value as bool))),
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