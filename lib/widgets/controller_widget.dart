import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/options_bloc.dart';
import '../constants.dart';

class Controller extends StatelessWidget {
  Controller({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OptionsBloc, OptionsState>(builder: (context, bloc) {
      if (bloc is OptionsIsLoaded) {
        return Column(
          children: [
            Row(
              children: [
                const Text(
                  'Пульт управления',
                  style: kMainTextStyle,
                ),
                const SizedBox(width: 8.0),
                Container(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                  decoration: kDropdownButtonDecoration,
                  child: DropdownButton<String>(
                    value: bloc.answers.controllerType,
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 24.0,
                    elevation: 8,
                    style: const TextStyle(
                        color: kMainColor, fontWeight: FontWeight.bold),
                    underline: const SizedBox(
                      height: 0.0,
                    ),
                    onChanged: (controllerType) => context
                        .bloc<OptionsBloc>()
                        .add(ChangeAnswers(bloc.answers
                            .copyWith(controllerType: controllerType))),
                    items: context
                        .bloc<OptionsBloc>()
                        .answers
                        .controllerTypes
                        .map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Container(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
              decoration: bloc.answers.controllerWitfWiFi
                  ? kDropdownButtonDecoration
                  : kHideDropdownButtonDecoration,
              width: 130.0,
              child: Row(
                children: [
                  Checkbox(
                    value: bloc.answers.controllerWitfWiFi,
                    onChanged: (value) => context.bloc<OptionsBloc>().add(
                        ChangeAnswers(
                            bloc.answers.copyWith(controllerWitfWiFi: value))),
                    activeColor: kMainColor,
                  ),
                  const Text('С Wi-Fi'),
                ],
              ),
            ),
          ],
        );
      } else {
        return null;
      }
    });
  }
}
