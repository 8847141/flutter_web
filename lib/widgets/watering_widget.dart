import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/options_bloc.dart';
import '../constants.dart';

class Watering extends StatelessWidget {
  Watering({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Что поливаем?',
              style: mainTextStyle,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Padding(
          padding: checboxesPadding,
          child: BlocBuilder<OptionsBloc, OptionsState>(
            builder: (context, bloc) {
              if (bloc is OptionsIsLoaded) {
                return Column(
                  children: [
                    CheckboxListTile(
                      title: const Text('Весь участок'),
                      activeColor: mainColor,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: bloc.answers.typesOfIrrigatedLandings.allGarden,
                      onChanged: (value) => context.bloc<OptionsBloc>().add(
                          ChangeAnswers(bloc.answers.copyWith(
                              typesOfIrrigatedLandings: bloc
                                  .answers.typesOfIrrigatedLandings
                                  .copyWith(allGarden: value)))),
                    ),
                    CheckboxListTile(
                      title: const Text('Газон'),
                      activeColor: mainColor,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: bloc.answers.typesOfIrrigatedLandings.grass,
                      onChanged: (value) => context.bloc<OptionsBloc>().add(
                          ChangeAnswers(bloc.answers.copyWith(
                              typesOfIrrigatedLandings: bloc
                                  .answers.typesOfIrrigatedLandings
                                  .copyWith(grass: value)))),
                    ),
                    CheckboxListTile(
                      title: const Text('Огород'),
                      activeColor: mainColor,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: bloc.answers.typesOfIrrigatedLandings.garden,
                      onChanged: (value) => context.bloc<OptionsBloc>().add(
                          ChangeAnswers(bloc.answers.copyWith(
                              typesOfIrrigatedLandings: bloc
                                  .answers.typesOfIrrigatedLandings
                                  .copyWith(garden: value)))),
                    ),
                    CheckboxListTile(
                      title: const Text('Теплица'),
                      activeColor: mainColor,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: bloc.answers.typesOfIrrigatedLandings.greenhouse,
                      onChanged: (value) => context.bloc<OptionsBloc>().add(
                          ChangeAnswers(bloc.answers.copyWith(
                              typesOfIrrigatedLandings: bloc
                                  .answers.typesOfIrrigatedLandings
                                  .copyWith(greenhouse: value)))),
                    ),
                    CheckboxListTile(
                      title: const Text('Кусты'),
                      activeColor: mainColor,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: bloc.answers.typesOfIrrigatedLandings.shrub,
                      onChanged: (value) => context.bloc<OptionsBloc>().add(
                          ChangeAnswers(bloc.answers.copyWith(
                              typesOfIrrigatedLandings: bloc
                                  .answers.typesOfIrrigatedLandings
                                  .copyWith(shrub: value)))),
                    ),
                    CheckboxListTile(
                      title: const Text('Цветники'),
                      activeColor: mainColor,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: bloc.answers.typesOfIrrigatedLandings.flowers,
                      onChanged: (value) => context.bloc<OptionsBloc>().add(
                          ChangeAnswers(bloc.answers.copyWith(
                              typesOfIrrigatedLandings: bloc
                                  .answers.typesOfIrrigatedLandings
                                  .copyWith(flowers: value)))),
                    ),
                  ],
                );
              } else {
                return null;
              }
            },
          ),
        ),
      ],
    );
  }
}
