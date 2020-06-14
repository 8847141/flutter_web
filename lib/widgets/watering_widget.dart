import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants.dart';
import '../main_bloc/options_bloc.dart';

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
            style: questionTextStyle,
          ),
        ),
        questionIndent,
        BlocBuilder<OptionsBloc, OptionsState>(
          builder: (context, bloc) {
            if (bloc is OptionsIsLoaded) {
              return Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    DecoratedBox(
                      decoration: bloc.answers.typesOfIrrigatedLandings.grass &&
                              !bloc.answers.typesOfIrrigatedLandings.allGarden
                          ? answerDecoration
                          : hideDecoration,
                      child: CheckboxListTile(
                        title: const Text('Газон'),
                        activeColor:
                            bloc.answers.typesOfIrrigatedLandings.allGarden
                                ? hideColor
                                : mainColor,
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
                    DecoratedBox(
                      decoration: bloc
                                  .answers.typesOfIrrigatedLandings.garden &&
                              !bloc.answers.typesOfIrrigatedLandings.allGarden
                          ? answerDecoration
                          : hideDecoration,
                      child: CheckboxListTile(
                        title: const Text('Огород'),
                        activeColor:
                            bloc.answers.typesOfIrrigatedLandings.allGarden
                                ? hideColor
                                : mainColor,
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
                    DecoratedBox(
                      decoration: bloc.answers.typesOfIrrigatedLandings
                                  .greenhouse &&
                              !bloc.answers.typesOfIrrigatedLandings.allGarden
                          ? answerDecoration
                          : hideDecoration,
                      child: CheckboxListTile(
                        title: const Text('Теплица'),
                        activeColor:
                            bloc.answers.typesOfIrrigatedLandings.allGarden
                                ? hideColor
                                : mainColor,
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
                    DecoratedBox(
                      decoration: bloc.answers.typesOfIrrigatedLandings.shrub &&
                              !bloc.answers.typesOfIrrigatedLandings.allGarden
                          ? answerDecoration
                          : hideDecoration,
                      child: CheckboxListTile(
                        title: const Text('Кусты'),
                        activeColor:
                            bloc.answers.typesOfIrrigatedLandings.allGarden
                                ? hideColor
                                : mainColor,
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
                    DecoratedBox(
                      decoration: bloc
                                  .answers.typesOfIrrigatedLandings.flowers &&
                              !bloc.answers.typesOfIrrigatedLandings.allGarden
                          ? answerDecoration
                          : hideDecoration,
                      child: CheckboxListTile(
                        title: const Text('Цветники'),
                        activeColor:
                            bloc.answers.typesOfIrrigatedLandings.allGarden
                                ? hideColor
                                : mainColor,
                        controlAffinity: ListTileControlAffinity.leading,
                        value: bloc.answers.typesOfIrrigatedLandings.flowers,
                        onChanged: (value) => context.bloc<OptionsBloc>().add(
                            ChangeAnswers(bloc.answers.copyWith(
                                typesOfIrrigatedLandings: bloc
                                    .answers.typesOfIrrigatedLandings
                                    .copyWith(flowers: value)))),
                      ),
                    ),
                    answerIndent,
                    DecoratedBox(
                      decoration:
                          bloc.answers.typesOfIrrigatedLandings.allGarden
                              ? answerDecoration
                              : hideDecoration,
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
