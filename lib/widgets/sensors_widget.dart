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
        const SizedBox(height: 8.0),
        Padding(
            padding: kChecboxesPadding,
            child: BlocBuilder<OptionsBloc, OptionsState>(
              builder: (context, bloc) {
                if (bloc is OptionsIsLoaded) {
                  return Column(
                    children: [
                      DecoratedBox(
                        decoration: bloc.answers.sensors.rain
                            ? kDropdownButtonDecoration
                            : kHideDropdownButtonDecoration,
                        child: CheckboxListTile(
                          title: const Text('Дождя'),
                          activeColor: kMainColor,
                          controlAffinity: ListTileControlAffinity.leading,
                          value: bloc.answers.sensors.rain,
                          onChanged: (value) => context.bloc<OptionsBloc>().add(
                              ChangeAnswers(bloc.answers.copyWith(
                                  sensors: bloc.answers.sensors
                                      .copyWith(rain: value)))),
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      DecoratedBox(
                        decoration: bloc.answers.sensors.wind
                            ? kDropdownButtonDecoration
                            : kHideDropdownButtonDecoration,
                        child: CheckboxListTile(
                          title: const Text('Ветра'),
                          activeColor: kMainColor,
                          controlAffinity: ListTileControlAffinity.leading,
                          value: bloc.answers.sensors.wind,
                          onChanged: (value) => context.bloc<OptionsBloc>().add(
                              ChangeAnswers(bloc.answers.copyWith(
                                  sensors: bloc.answers.sensors
                                      .copyWith(wind: value)))),
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      DecoratedBox(
                        decoration: bloc.answers.sensors.soil
                            ? kDropdownButtonDecoration
                            : kHideDropdownButtonDecoration,
                        child: CheckboxListTile(
                          title: const Text('Влажности почвы'),
                          activeColor: kMainColor,
                          controlAffinity: ListTileControlAffinity.leading,
                          value: bloc.answers.sensors.soil,
                          onChanged: (value) => context.bloc<OptionsBloc>().add(
                              ChangeAnswers(bloc.answers.copyWith(
                                  sensors: bloc.answers.sensors
                                      .copyWith(soil: value)))),
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      DecoratedBox(
                        decoration: bloc.answers.sensors.freeze
                            ? kDropdownButtonDecoration
                            : kHideDropdownButtonDecoration,
                        child: CheckboxListTile(
                          title: const Text('Заморозков'),
                          activeColor: kMainColor,
                          controlAffinity: ListTileControlAffinity.leading,
                          value: bloc.answers.sensors.freeze,
                          onChanged: (value) => context.bloc<OptionsBloc>().add(
                              ChangeAnswers(bloc.answers.copyWith(
                                  sensors: bloc.answers.sensors
                                      .copyWith(freeze: value)))),
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      DecoratedBox(
                        decoration: bloc.answers.sensors.rainFreeze
                            ? kDropdownButtonDecoration
                            : kHideDropdownButtonDecoration,
                        child: CheckboxListTile(
                          title: const Text('Дождя и заморозков'),
                          activeColor: kMainColor,
                          controlAffinity: ListTileControlAffinity.leading,
                          value: bloc.answers.sensors.rainFreeze,
                          onChanged: (value) => context.bloc<OptionsBloc>().add(
                              ChangeAnswers(bloc.answers.copyWith(
                                  sensors: bloc.answers.sensors
                                      .copyWith(rainFreeze: value)))),
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      DecoratedBox(
                        decoration: bloc.answers.sensors.solar
                            ? kDropdownButtonDecoration
                            : kHideDropdownButtonDecoration,
                        child: CheckboxListTile(
                          title: const Text('Солнечной активности'),
                          activeColor: kMainColor,
                          controlAffinity: ListTileControlAffinity.leading,
                          value: bloc.answers.sensors.solar,
                          onChanged: (value) => context.bloc<OptionsBloc>().add(
                              ChangeAnswers(bloc.answers.copyWith(
                                  sensors: bloc.answers.sensors
                                      .copyWith(solar: value)))),
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      DecoratedBox(
                        decoration: bloc.answers.sensors.flow
                            ? kDropdownButtonDecoration
                            : kHideDropdownButtonDecoration,
                        child: CheckboxListTile(
                          title: const Text('Потока'),
                          activeColor: kMainColor,
                          controlAffinity: ListTileControlAffinity.leading,
                          value: bloc.answers.sensors.flow,
                          onChanged: (value) => context.bloc<OptionsBloc>().add(
                              ChangeAnswers(bloc.answers.copyWith(
                                  sensors: bloc.answers.sensors
                                      .copyWith(flow: value)))),
                        ),
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
