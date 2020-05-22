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
                const SizedBox(width: 16),
                const Text('Пульт управления'),
                const SizedBox(width: 16),
                Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                      decoration: bloc.answers.outdoorController
                          ? null
                          : kDropdownButtonDecoration,
                      width: 160.0,
                      child: Row(
                        children: [
                          Radio(
                            value: false,
                            groupValue: bloc.answers.outdoorController,
                            onChanged: (dynamic value) => context
                                .bloc<OptionsBloc>()
                                .add(ChangeAnswers(bloc.answers.copyWith(
                                    outdoorController: value as bool))),
                            activeColor: kMainColor,
                          ),
                          const Text('Внутренний'),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                      decoration: bloc.answers.outdoorController
                          ? kDropdownButtonDecoration
                          : null,
                      width: 160.0,
                      child: Row(
                        children: [
                          Radio(
                            value: true,
                            groupValue: bloc.answers.outdoorController,
                            onChanged: (dynamic value) => context
                                .bloc<OptionsBloc>()
                                .add(ChangeAnswers(bloc.answers.copyWith(
                                    outdoorController: value as bool))),
                            activeColor: kMainColor,
                          ),
                          const Text('Наружный'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
              decoration: bloc.answers.controllerWitfWiFi
                  ? kDropdownButtonDecoration
                  : kHideDropdownButtonDecoration,
              width: 200.0,
              child: Padding(
                padding: kChecboxesPadding,
                child: Row(
                  children: [
                    Checkbox(
                      value: bloc.answers.controllerWitfWiFi,
                      onChanged: (value) => context.bloc<OptionsBloc>().add(
                          ChangeAnswers(bloc.answers
                              .copyWith(controllerWitfWiFi: value))),
                      activeColor: kMainColor,
                    ),
                    const Text('С Wi-Fi'),
                  ],
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
