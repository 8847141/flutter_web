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
            style: mainTextStyle,
          ),
        ),
        const SizedBox(height: 8.0),
        Padding(
          padding: checboxesPadding,
          child:
              BlocBuilder<OptionsBloc, OptionsState>(builder: (context, bloc) {
            if (bloc is OptionsIsLoaded) {
              return Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                      decoration: bloc.answers.preferredNozzleType.statics
                          ? dropdownButtonDecoration
                          : hideDropdownButtonDecoration,
                      width: 200.0,
                      child: CheckboxListTile(
                        value: bloc.answers.preferredNozzleType.statics,
                        onChanged: (value) => context.bloc<OptionsBloc>().add(
                            ChangeAnswers(bloc.answers.copyWith(
                                preferredNozzleType: bloc
                                    .answers.preferredNozzleType
                                    .copyWith(statics: value)))),
                        activeColor: mainColor,
                        title: const Text('Статические'),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                    answerIndent,
                    Container(
                      decoration: bloc.answers.preferredNozzleType.rotators
                          ? dropdownButtonDecoration
                          : hideDropdownButtonDecoration,
                      width: 200.0,
                      child: CheckboxListTile(
                        value: bloc.answers.preferredNozzleType.rotators,
                        onChanged: (value) => context.bloc<OptionsBloc>().add(
                            ChangeAnswers(bloc.answers.copyWith(
                                preferredNozzleType: bloc
                                    .answers.preferredNozzleType
                                    .copyWith(rotators: value)))),
                        activeColor: mainColor,
                        title: const Text('Ротаторные'),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                    answerIndent,
                    Container(
                      decoration: bloc.answers.preferredNozzleType.rotors
                          ? dropdownButtonDecoration
                          : hideDropdownButtonDecoration,
                      width: 200.0,
                      child: CheckboxListTile(
                        value: bloc.answers.preferredNozzleType.rotors,
                        onChanged: (value) => context.bloc<OptionsBloc>().add(
                            ChangeAnswers(bloc.answers.copyWith(
                                preferredNozzleType: bloc
                                    .answers.preferredNozzleType
                                    .copyWith(rotors: value)))),
                        activeColor: mainColor,
                        title: const Text('Роторы'),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                    answerIndent,
                    Container(
                      decoration: bloc.answers.preferredNozzleType.any
                          ? dropdownButtonDecoration
                          : hideDropdownButtonDecoration,
                      width: 200.0,
                      child: CheckboxListTile(
                        value: bloc.answers.preferredNozzleType.any,
                        onChanged: (value) => context.bloc<OptionsBloc>().add(
                            ChangeAnswers(bloc.answers.copyWith(
                                preferredNozzleType: bloc
                                    .answers.preferredNozzleType
                                    .copyWith(any: value)))),
                        activeColor: mainColor,
                        title: const Text('Любые'),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return null;
            }
          }),
        )
      ],
    );
  }
}
