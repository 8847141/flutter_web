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
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Что поливаем?',
            style: mainTextStyle,
          ),
        ),
        // ),
        const SizedBox(height: 8.0),
        BlocBuilder<OptionsBloc, OptionsState>(
          builder: (context, bloc) {
            if (bloc is OptionsIsLoaded) {
              return Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                      decoration:
                          bloc.answers.typesOfIrrigatedLandings.allGarden
                              ? dropdownButtonDecoration
                              : hideDropdownButtonDecoration,
                      width: 200.0,
                      child: CheckboxListTile(
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
                    ),
                    answerIndent,
                    Container(
                      decoration: bloc.answers.typesOfIrrigatedLandings.grass
                          ? dropdownButtonDecoration
                          : hideDropdownButtonDecoration,
                      width: 200.0,
                      child: CheckboxListTile(
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
                    ),
                    answerIndent,
                    Container(
                      decoration: bloc.answers.typesOfIrrigatedLandings.garden
                          ? dropdownButtonDecoration
                          : hideDropdownButtonDecoration,
                      width: 200.0,
                      child: CheckboxListTile(
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
                    ),
                    answerIndent,
                    Container(
                      decoration:
                          bloc.answers.typesOfIrrigatedLandings.greenhouse
                              ? dropdownButtonDecoration
                              : hideDropdownButtonDecoration,
                      width: 200.0,
                      child: CheckboxListTile(
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
                    ),
                    answerIndent,
                    Container(
                      decoration: bloc.answers.typesOfIrrigatedLandings.shrub
                          ? dropdownButtonDecoration
                          : hideDropdownButtonDecoration,
                      width: 200.0,
                      child: CheckboxListTile(
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
                    ),
                    answerIndent,
                    Container(
                      decoration: bloc.answers.typesOfIrrigatedLandings.flowers
                          ? dropdownButtonDecoration
                          : hideDropdownButtonDecoration,
                      width: 200.0,
                      child: CheckboxListTile(
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
                    ),
                  ],
                ),
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
