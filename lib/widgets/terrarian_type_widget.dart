import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/main_bloc/options_bloc.dart';
import '../constants.dart';

class TerrarianType extends StatelessWidget {
  TerrarianType({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OptionsBloc, OptionsState>(builder: (context, bloc) {
      if (bloc is OptionsIsLoaded) {
        return Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Рельеф участка',
                style: questionTextStyle,
              ),
            ),
            questionIndent,
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  DecoratedBox(
                    decoration: bloc.answers.flatTerrain
                        ? answerDecoration
                        : hideDecoration,
                    child: RadioListTile(
                      title: const Text('Ровный'),
                      activeColor: mainColor,
                      value: true,
                      groupValue: bloc.answers.flatTerrain,
                      onChanged: (dynamic value) => context
                          .bloc<OptionsBloc>()
                          .add(ChangeAnswers(bloc.answers.copyWith(
                              flatTerrain: value as bool,
                              heightDifference: ''))),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration: bloc.answers.flatTerrain
                        ? hideDecoration
                        : answerDecoration,
                    child: RadioListTile(
                      title: const Text('С перепадом высот'),
                      activeColor: mainColor,
                      value: false,
                      groupValue: bloc.answers.flatTerrain,
                      onChanged: (dynamic value) => context
                          .bloc<OptionsBloc>()
                          .add(ChangeAnswers(bloc.answers
                              .copyWith(flatTerrain: value as bool))),
                    ),
                  ),
                ],
              ),
            ),
            questionIndent,
            bloc.answers.flatTerrain
                ? const SizedBox()
                : Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 25.0),
                        child: Text(
                          'Перепад высот, м',
                          style: secondaryTextStyle,
                        ),
                      ),
                      questionIndent,
                      Flexible(
                        child: SizedBox(
                          height: 56.0,
                          child: TextField(
                            onChanged: (value) => context
                                .bloc<OptionsBloc>()
                                .add(ChangeAnswers(bloc.answers
                                    .copyWith(heightDifference: value))),
                            cursorColor: mainColor,
                            maxLines: 1,
                            minLines: 1,
                            decoration: textFormInputDecoration,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        );
      } else {
        return null;
      }
    });
  }
}
