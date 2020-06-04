import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/options_bloc.dart';

import '../constants.dart';

class PreferredNozzleType extends StatelessWidget {
  PreferredNozzleType({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Предпочитаемый тип дождевателей',
            style: questionTextStyle,
          ),
        ),
        questionIndent,
        BlocBuilder<OptionsBloc, OptionsState>(builder: (context, bloc) {
          if (bloc is OptionsIsLoaded) {
            return Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  DecoratedBox(
                    decoration: bloc.answers.preferredNozzleType.statics &&
                            !bloc.answers.preferredNozzleType.any
                        ? answerDecoration
                        : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Статические'),
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: bloc.answers.preferredNozzleType.any
                          ? hideColor
                          : mainColor,
                      value: bloc.answers.preferredNozzleType.statics,
                      onChanged: (value) => context.bloc<OptionsBloc>().add(
                          ChangeAnswers(bloc.answers.copyWith(
                              preferredNozzleType: bloc
                                  .answers.preferredNozzleType
                                  .copyWith(statics: value)))),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration: bloc.answers.preferredNozzleType.rotators &&
                            !bloc.answers.preferredNozzleType.any
                        ? answerDecoration
                        : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Ротаторные'),
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: bloc.answers.preferredNozzleType.any
                          ? hideColor
                          : mainColor,
                      value: bloc.answers.preferredNozzleType.rotators,
                      onChanged: (value) => context.bloc<OptionsBloc>().add(
                          ChangeAnswers(bloc.answers.copyWith(
                              preferredNozzleType: bloc
                                  .answers.preferredNozzleType
                                  .copyWith(rotators: value)))),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration: bloc.answers.preferredNozzleType.rotors &&
                            !bloc.answers.preferredNozzleType.any
                        ? answerDecoration
                        : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Роторы'),
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: bloc.answers.preferredNozzleType.any
                          ? hideColor
                          : mainColor,
                      value: bloc.answers.preferredNozzleType.rotors,
                      onChanged: (value) => context.bloc<OptionsBloc>().add(
                          ChangeAnswers(bloc.answers.copyWith(
                              preferredNozzleType: bloc
                                  .answers.preferredNozzleType
                                  .copyWith(rotors: value)))),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration: bloc.answers.preferredNozzleType.any
                        ? answerDecoration
                        : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Любые'),
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: mainColor,
                      value: bloc.answers.preferredNozzleType.any,
                      onChanged: (value) => context.bloc<OptionsBloc>().add(
                          ChangeAnswers(bloc.answers.copyWith(
                              preferredNozzleType: bloc
                                  .answers.preferredNozzleType
                                  .copyWith(any: value)))),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return null;
          }
        }),
      ],
    );
  }
}
