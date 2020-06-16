import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/main_bloc/options_bloc.dart';
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
            style: questionTextStyle,
          ),
        ),
        questionIndent,
        BlocBuilder<OptionsBloc, OptionsState>(
          builder: (context, bloc) {
            if (bloc is OptionsIsLoaded) {
              return Column(
                children: [
                  DecoratedBox(
                    decoration: bloc.answers.sensors.rain
                        ? answerDecoration
                        : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Дождя'),
                      activeColor: mainColor,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: bloc.answers.sensors.rain,
                      onChanged: (value) => context.bloc<OptionsBloc>().add(
                          ChangeAnswers(bloc.answers.copyWith(
                              sensors:
                                  bloc.answers.sensors.copyWith(rain: value)))),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration: bloc.answers.sensors.wind
                        ? answerDecoration
                        : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Ветра'),
                      activeColor: mainColor,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: bloc.answers.sensors.wind,
                      onChanged: (value) => context.bloc<OptionsBloc>().add(
                          ChangeAnswers(bloc.answers.copyWith(
                              sensors:
                                  bloc.answers.sensors.copyWith(wind: value)))),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration: bloc.answers.sensors.soil
                        ? answerDecoration
                        : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Влажности почвы'),
                      activeColor: mainColor,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: bloc.answers.sensors.soil,
                      onChanged: (value) => context.bloc<OptionsBloc>().add(
                          ChangeAnswers(bloc.answers.copyWith(
                              sensors:
                                  bloc.answers.sensors.copyWith(soil: value)))),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration: bloc.answers.sensors.freeze
                        ? answerDecoration
                        : hideDecoration,
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
                  answerIndent,
                  DecoratedBox(
                    decoration: bloc.answers.sensors.rainFreeze
                        ? answerDecoration
                        : hideDecoration,
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
                  answerIndent,
                  DecoratedBox(
                    decoration: bloc.answers.sensors.solar
                        ? answerDecoration
                        : hideDecoration,
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
                  answerIndent,
                  DecoratedBox(
                    decoration: bloc.answers.sensors.flow
                        ? answerDecoration
                        : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Потока'),
                      activeColor: mainColor,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: bloc.answers.sensors.flow,
                      onChanged: (value) => context.bloc<OptionsBloc>().add(
                          ChangeAnswers(bloc.answers.copyWith(
                              sensors:
                                  bloc.answers.sensors.copyWith(flow: value)))),
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
