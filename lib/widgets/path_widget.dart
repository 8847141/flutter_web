import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/options_bloc.dart';
import '../constants.dart';

class Path extends StatelessWidget {
  Path({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Поливаем дорожки?',
          style: kMainTextStyle,
        ),
        const SizedBox(width: 16.0),
        BlocBuilder<OptionsBloc, OptionsState>(
          builder: (context, bloc) {
            if (bloc is OptionsIsLoaded) {
              return Row(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                    decoration: bloc.answers.canBeWateredWalkway
                        ? kDropdownButtonDecoration
                        : null,
                    width: 100.0,
                    child: Row(
                      children: [
                        Radio(
                          value: true,
                          groupValue: bloc.answers.canBeWateredWalkway,
                          onChanged: (dynamic value) => context
                              .bloc<OptionsBloc>()
                              .add(ChangeAnswers(bloc.answers.copyWith(
                                  canBeWateredWalkway: value as bool))),
                          activeColor: kMainColor,
                        ),
                        const Text('Да'),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                    decoration: bloc.answers.canBeWateredWalkway
                        ? null
                        : kDropdownButtonDecoration,
                    width: 100.0,
                    child: Row(
                      children: [
                        Radio(
                          value: false,
                          groupValue: bloc.answers.canBeWateredWalkway,
                          onChanged: (dynamic value) => context
                              .bloc<OptionsBloc>()
                              .add(ChangeAnswers(bloc.answers.copyWith(
                                  canBeWateredWalkway: value as bool))),
                          activeColor: kMainColor,
                        ),
                        const Text('Нет'),
                      ],
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
