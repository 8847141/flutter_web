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
                      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                      decoration: bloc.answers.preferredNozzleType.statics
                          ? kDropdownButtonDecoration
                          : kHideDropdownButtonDecoration,
                      width: 200.0,
                      child: Row(
                        children: [
                          Checkbox(
                            activeColor: kMainColor,
                            value: bloc.answers.preferredNozzleType.statics,
                            onChanged: (value) => context
                                .bloc<OptionsBloc>()
                                .add(ChangeAnswers(bloc.answers.copyWith(
                                    preferredNozzleType: bloc
                                        .answers.preferredNozzleType
                                        .copyWith(statics: value)))),
                          ),
                          const Text('Статические')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                      decoration: bloc.answers.preferredNozzleType.rotators
                          ? kDropdownButtonDecoration
                          : kHideDropdownButtonDecoration,
                      width: 200.0,
                      child: Row(
                        children: [
                          Checkbox(
                            activeColor: kMainColor,
                            value: bloc.answers.preferredNozzleType.rotators,
                            onChanged: (value) => context
                                .bloc<OptionsBloc>()
                                .add(ChangeAnswers(bloc.answers.copyWith(
                                    preferredNozzleType: bloc
                                        .answers.preferredNozzleType
                                        .copyWith(rotators: value)))),
                          ),
                          const Text('Ротаторные')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                      decoration: bloc.answers.preferredNozzleType.rotors
                          ? kDropdownButtonDecoration
                          : kHideDropdownButtonDecoration,
                      width: 200.0,
                      child: Row(
                        children: [
                          Checkbox(
                            activeColor: kMainColor,
                            value: bloc.answers.preferredNozzleType.rotors,
                            onChanged: (value) => context
                                .bloc<OptionsBloc>()
                                .add(ChangeAnswers(bloc.answers.copyWith(
                                    preferredNozzleType: bloc
                                        .answers.preferredNozzleType
                                        .copyWith(rotors: value)))),
                          ),
                          const Text('Роторы')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                      decoration: bloc.answers.preferredNozzleType.any
                          ? kDropdownButtonDecoration
                          : kHideDropdownButtonDecoration,
                      width: 200.0,
                      child: Row(
                        children: [
                          Checkbox(
                            activeColor: kMainColor,
                            value: bloc.answers.preferredNozzleType.any,
                            onChanged: (value) => context
                                .bloc<OptionsBloc>()
                                .add(ChangeAnswers(bloc.answers.copyWith(
                                    preferredNozzleType: bloc
                                        .answers.preferredNozzleType
                                        .copyWith(any: value)))),
                          ),
                          const Text('Любые')
                        ],
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
