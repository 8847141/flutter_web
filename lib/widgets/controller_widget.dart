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
            Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Пульт управления',
                    style: mainTextStyle,
                  ),
                ),
                const SizedBox(width: 8.0),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                    decoration: dropdownButtonDecoration,
                    child: DropdownButton<String>(
                      value: bloc.answers.controllerType,
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 24.0,
                      elevation: 8,
                      style: const TextStyle(
                          color: mainColor, fontWeight: FontWeight.bold),
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
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                decoration: bloc.answers.controllerWitfWiFi
                    ? dropdownButtonDecoration
                    : hideDropdownButtonDecoration,
                width: 160.0,
                child: CheckboxListTile(
                  title: const Text('С Wi-Fi'),
                  activeColor: mainColor,
                  controlAffinity: ListTileControlAffinity.leading,
                  value: bloc.answers.controllerWitfWiFi,
                  onChanged: (value) => context.bloc<OptionsBloc>().add(
                      ChangeAnswers(
                          bloc.answers.copyWith(controllerWitfWiFi: value))),
                ),
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
