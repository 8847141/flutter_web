import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/options_bloc.dart';
import '../constants.dart';

class Sensors extends StatelessWidget {
  Sensors({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Датчик погоды',
            style: kMainTextStyle,
          ),
        ),
        const SizedBox(width: 8.0),
        Padding(
            padding: kChecboxesPadding,
            child: BlocBuilder<OptionsBloc, OptionsState>(
              builder: (context, bloc) {
                if (bloc is OptionsIsLoaded) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: bloc.answers.sensors.rain,
                            onChanged: (value) => context
                                .bloc<OptionsBloc>()
                                .add(ChangeAnswers(bloc.answers.copyWith(
                                    sensors: bloc.answers.sensors
                                        .copyWith(rain: value)))),
                            activeColor: kMainColor,
                          ),
                          const Text('Дождя')
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: bloc.answers.sensors.wind,
                            onChanged: (value) => context
                                .bloc<OptionsBloc>()
                                .add(ChangeAnswers(bloc.answers.copyWith(
                                    sensors: bloc.answers.sensors
                                        .copyWith(wind: value)))),
                            activeColor: kMainColor,
                          ),
                          const Text('Ветра')
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: bloc.answers.sensors.soil,
                            onChanged: (value) => context
                                .bloc<OptionsBloc>()
                                .add(ChangeAnswers(bloc.answers.copyWith(
                                    sensors: bloc.answers.sensors
                                        .copyWith(soil: value)))),
                            activeColor: kMainColor,
                          ),
                          const Text('Влажности почвы')
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: bloc.answers.sensors.freeze,
                            onChanged: (value) => context
                                .bloc<OptionsBloc>()
                                .add(ChangeAnswers(bloc.answers.copyWith(
                                    sensors: bloc.answers.sensors
                                        .copyWith(freeze: value)))),
                            activeColor: kMainColor,
                          ),
                          const Text('Заморозков')
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: bloc.answers.sensors.rainFreeze,
                            onChanged: (value) => context
                                .bloc<OptionsBloc>()
                                .add(ChangeAnswers(bloc.answers.copyWith(
                                    sensors: bloc.answers.sensors
                                        .copyWith(rainFreeze: value)))),
                            activeColor: kMainColor,
                          ),
                          const Text('Дождя и заморозков')
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: bloc.answers.sensors.solar,
                            onChanged: (value) => context
                                .bloc<OptionsBloc>()
                                .add(ChangeAnswers(bloc.answers.copyWith(
                                    sensors: bloc.answers.sensors
                                        .copyWith(solar: value)))),
                            activeColor: kMainColor,
                          ),
                          const Text('Солнечной активности')
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: bloc.answers.sensors.flow,
                            onChanged: (value) => context
                                .bloc<OptionsBloc>()
                                .add(ChangeAnswers(bloc.answers.copyWith(
                                    sensors: bloc.answers.sensors
                                        .copyWith(flow: value)))),
                            activeColor: kMainColor,
                          ),
                          const Text('Потока')
                        ],
                      ),
                    ],
                  );
                } else {
                  return null;
                }
              },
            ))
      ],
    );
  }
}
