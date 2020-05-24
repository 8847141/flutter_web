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
            style: kMainTextStyle,
          ),
        ),
        const SizedBox(height: 8.0),
        Padding(
          padding: kChecboxesPadding,
          child:
              BlocBuilder<OptionsBloc, OptionsState>(builder: (context, bloc) {
            if (bloc is OptionsIsLoaded) {
              return Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: bloc.answers.preferredNozzleType.statics
                          ? kDropdownButtonDecoration
                          : kHideDropdownButtonDecoration,
                      width: 200.0,
                      child: CheckboxListTile(
                        value: bloc.answers.preferredNozzleType.statics,
                        onChanged: (value) => context.bloc<OptionsBloc>().add(
                            ChangeAnswers(bloc.answers.copyWith(
                                preferredNozzleType: bloc
                                    .answers.preferredNozzleType
                                    .copyWith(statics: value)))),
                        activeColor: kMainColor,
                        title: const Text('Статические'),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: bloc.answers.preferredNozzleType.rotators
                          ? kDropdownButtonDecoration
                          : kHideDropdownButtonDecoration,
                      width: 200.0,
                      child: CheckboxListTile(
                        value: bloc.answers.preferredNozzleType.rotators,
                        onChanged: (value) => context.bloc<OptionsBloc>().add(
                            ChangeAnswers(bloc.answers.copyWith(
                                preferredNozzleType: bloc
                                    .answers.preferredNozzleType
                                    .copyWith(rotators: value)))),
                        activeColor: kMainColor,
                        title: const Text('Ротаторные'),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: bloc.answers.preferredNozzleType.rotors
                          ? kDropdownButtonDecoration
                          : kHideDropdownButtonDecoration,
                      width: 200.0,
                      child: CheckboxListTile(
                        value: bloc.answers.preferredNozzleType.rotors,
                        onChanged: (value) => context.bloc<OptionsBloc>().add(
                            ChangeAnswers(bloc.answers.copyWith(
                                preferredNozzleType: bloc
                                    .answers.preferredNozzleType
                                    .copyWith(rotors: value)))),
                        activeColor: kMainColor,
                        title: const Text('Роторы'),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: bloc.answers.preferredNozzleType.any
                          ? kDropdownButtonDecoration
                          : kHideDropdownButtonDecoration,
                      width: 200.0,
                      child: CheckboxListTile(
                        value: bloc.answers.preferredNozzleType.any,
                        onChanged: (value) => context.bloc<OptionsBloc>().add(
                            ChangeAnswers(bloc.answers.copyWith(
                                preferredNozzleType: bloc
                                    .answers.preferredNozzleType
                                    .copyWith(any: value)))),
                        activeColor: kMainColor,
                        title: const Text('Любые'),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ),
                ],
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
