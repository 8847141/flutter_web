import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/watering_bloc/watering_bloc.dart';
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
            style: questionTextStyle,
          ),
        ),
        questionIndent,
        BlocBuilder<WateringBloc, WateringState>(
          builder: (context, bloc) {
            if (bloc is WateringIsLoaded) {
              return Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    DecoratedBox(
                      decoration: bloc.typesOfIrrigatedLandings.grass &&
                              !bloc.typesOfIrrigatedLandings.allGarden
                          ? answerDecoration
                          : hideDecoration,
                      child: CheckboxListTile(
                        title: const Text('Газон'),
                        activeColor: bloc.typesOfIrrigatedLandings.allGarden
                            ? hideColor
                            : mainColor,
                        controlAffinity: ListTileControlAffinity.leading,
                        value: bloc.typesOfIrrigatedLandings.grass,
                        onChanged: (value) => context.bloc<WateringBloc>().add(
                            ChangeWatering(bloc.typesOfIrrigatedLandings
                                .copyWith(grass: value))),
                      ),
                    ),
                    answerIndent,
                    DecoratedBox(
                      decoration: bloc.typesOfIrrigatedLandings.garden &&
                              !bloc.typesOfIrrigatedLandings.allGarden
                          ? answerDecoration
                          : hideDecoration,
                      child: CheckboxListTile(
                        title: const Text('Огород'),
                        activeColor: bloc.typesOfIrrigatedLandings.allGarden
                            ? hideColor
                            : mainColor,
                        controlAffinity: ListTileControlAffinity.leading,
                        value: bloc.typesOfIrrigatedLandings.garden,
                        onChanged: (value) => context.bloc<WateringBloc>().add(
                            ChangeWatering(bloc.typesOfIrrigatedLandings
                                .copyWith(garden: value))),
                      ),
                    ),
                    answerIndent,
                    DecoratedBox(
                      decoration: bloc.typesOfIrrigatedLandings.greenhouse &&
                              !bloc.typesOfIrrigatedLandings.allGarden
                          ? answerDecoration
                          : hideDecoration,
                      child: CheckboxListTile(
                        title: const Text('Теплица'),
                        activeColor: bloc.typesOfIrrigatedLandings.allGarden
                            ? hideColor
                            : mainColor,
                        controlAffinity: ListTileControlAffinity.leading,
                        value: bloc.typesOfIrrigatedLandings.greenhouse,
                        onChanged: (value) => context.bloc<WateringBloc>().add(
                            ChangeWatering(bloc.typesOfIrrigatedLandings
                                .copyWith(greenhouse: value))),
                      ),
                    ),
                    answerIndent,
                    DecoratedBox(
                      decoration: bloc.typesOfIrrigatedLandings.shrub &&
                              !bloc.typesOfIrrigatedLandings.allGarden
                          ? answerDecoration
                          : hideDecoration,
                      child: CheckboxListTile(
                        title: const Text('Кусты'),
                        activeColor: bloc.typesOfIrrigatedLandings.allGarden
                            ? hideColor
                            : mainColor,
                        controlAffinity: ListTileControlAffinity.leading,
                        value: bloc.typesOfIrrigatedLandings.shrub,
                        onChanged: (value) => context.bloc<WateringBloc>().add(
                            ChangeWatering(bloc.typesOfIrrigatedLandings
                                .copyWith(shrub: value))),
                      ),
                    ),
                    answerIndent,
                    DecoratedBox(
                      decoration: bloc.typesOfIrrigatedLandings.flowers &&
                              !bloc.typesOfIrrigatedLandings.allGarden
                          ? answerDecoration
                          : hideDecoration,
                      child: CheckboxListTile(
                        title: const Text('Цветники'),
                        activeColor: bloc.typesOfIrrigatedLandings.allGarden
                            ? hideColor
                            : mainColor,
                        controlAffinity: ListTileControlAffinity.leading,
                        value: bloc.typesOfIrrigatedLandings.flowers,
                        onChanged: (value) => context.bloc<WateringBloc>().add(
                            ChangeWatering(bloc.typesOfIrrigatedLandings
                                .copyWith(flowers: value))),
                      ),
                    ),
                    answerIndent,
                    DecoratedBox(
                      decoration: bloc.typesOfIrrigatedLandings.allGarden
                          ? answerDecoration
                          : hideDecoration,
                      child: CheckboxListTile(
                        title: const Text('Весь участок'),
                        activeColor: mainColor,
                        controlAffinity: ListTileControlAffinity.leading,
                        value: bloc.typesOfIrrigatedLandings.allGarden,
                        onChanged: (value) => context.bloc<WateringBloc>().add(
                            ChangeWatering(bloc.typesOfIrrigatedLandings
                                .copyWith(allGarden: value))),
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
