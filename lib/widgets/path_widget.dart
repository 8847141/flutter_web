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
        const SizedBox(width: 8.0),
        BlocBuilder<OptionsBloc, OptionsState>(
          builder: (context, bloc) {
            if (bloc is OptionsIsLoaded) {
              return Row(
                children: [
                  Container(
                    decoration: bloc.answers.canBeWateredWalkway
                        ? kDropdownButtonDecoration
                        : null,
                    width: 120.0,
                    child: RadioListTile(
                      title: const Text('Да'),
                      activeColor: kMainColor,
                      value: true,
                      groupValue: bloc.answers.canBeWateredWalkway,
                      onChanged: (dynamic value) => context
                          .bloc<OptionsBloc>()
                          .add(ChangeAnswers(bloc.answers
                              .copyWith(canBeWateredWalkway: value as bool))),
                    ),
                  ),
                  Container(
                    decoration: bloc.answers.canBeWateredWalkway
                        ? null
                        : kDropdownButtonDecoration,
                    width: 120.0,
                    child: RadioListTile(
                      title: const Text('Нет'),
                      activeColor: kMainColor,
                      value: false,
                      groupValue: bloc.answers.canBeWateredWalkway,
                      onChanged: (dynamic value) => context
                          .bloc<OptionsBloc>()
                          .add(ChangeAnswers(bloc.answers
                              .copyWith(canBeWateredWalkway: value as bool))),
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
