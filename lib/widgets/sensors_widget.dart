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
            style: mainTextStyle,
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
                            ? dropdownButtonDecoration
                            : hideDropdownButtonDecoration,
                        child: CheckboxListTile(
                          title: const Text('Дождя'),
                          activeColor: mainColor,
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
                            ? dropdownButtonDecoration
                            : hideDropdownButtonDecoration,
                        child: CheckboxListTile(
                          title: const Text('Ветра'),
                          activeColor: mainColor,
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
                            ? dropdownButtonDecoration
                            : hideDropdownButtonDecoration,
                        child: CheckboxListTile(
                          title: const Text('Влажности почвы'),
                          activeColor: mainColor,
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
                            ? dropdownButtonDecoration
                            : hideDropdownButtonDecoration,
                        child: CheckboxListTile(
                          title: const Text('Заморозков'),
                          activeColor: mainColor,
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
                            ? dropdownButtonDecoration
                            : hideDropdownButtonDecoration,
                        child: CheckboxListTile(
                          title: const Text('Дождя и заморозков'),
                          activeColor: mainColor,
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
                            ? dropdownButtonDecoration
                            : hideDropdownButtonDecoration,
                        child: CheckboxListTile(
                          title: const Text('Солнечной активности'),
                          activeColor: mainColor,
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
                            ? dropdownButtonDecoration
                            : hideDropdownButtonDecoration,
                        child: CheckboxListTile(
                          title: const Text('Потока'),
                          activeColor: mainColor,
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
