import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/sensors_bloc/sensors_bloc.dart';
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
        BlocBuilder<SensorsBloc, SensorsState>(
          builder: (context, bloc) {
            if (bloc is SensorsIsLoaded) {
              return Column(
                children: [
                  DecoratedBox(
                    decoration:
                        bloc.sensors.rain ? answerDecoration : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Дождя'),
                      activeColor: mainColor,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: bloc.sensors.rain,
                      onChanged: (value) => context.bloc<SensorsBloc>().add(
                          ChangeSensors(bloc.sensors.copyWith(rain: value))),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration:
                        bloc.sensors.wind ? answerDecoration : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Ветра'),
                      activeColor: mainColor,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: bloc.sensors.wind,
                      onChanged: (value) => context.bloc<SensorsBloc>().add(
                          ChangeSensors(bloc.sensors.copyWith(wind: value))),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration:
                        bloc.sensors.soil ? answerDecoration : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Влажности почвы'),
                      activeColor: mainColor,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: bloc.sensors.soil,
                      onChanged: (value) => context.bloc<SensorsBloc>().add(
                          ChangeSensors(bloc.sensors.copyWith(soil: value))),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration:
                        bloc.sensors.freeze ? answerDecoration : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Заморозков'),
                      activeColor: mainColor,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: bloc.sensors.freeze,
                      onChanged: (value) => context.bloc<SensorsBloc>().add(
                          ChangeSensors(bloc.sensors.copyWith(freeze: value))),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration: bloc.sensors.rainFreeze
                        ? answerDecoration
                        : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Дождя и заморозков'),
                      activeColor: mainColor,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: bloc.sensors.rainFreeze,
                      onChanged: (value) => context.bloc<SensorsBloc>().add(
                          ChangeSensors(
                              bloc.sensors.copyWith(rainFreeze: value))),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration:
                        bloc.sensors.solar ? answerDecoration : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Солнечной активности'),
                      activeColor: mainColor,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: bloc.sensors.solar,
                      onChanged: (value) => context.bloc<SensorsBloc>().add(
                          ChangeSensors(bloc.sensors.copyWith(solar: value))),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration:
                        bloc.sensors.flow ? answerDecoration : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Потока'),
                      activeColor: mainColor,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: bloc.sensors.flow,
                      onChanged: (value) => context.bloc<SensorsBloc>().add(
                          ChangeSensors(bloc.sensors.copyWith(flow: value))),
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
