import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/controller_bloc/controller_bloc.dart';
import '../constants.dart';

class Controller extends StatelessWidget {
  Controller({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ControllerBloc, ControllerState>(
        builder: (context, bloc) {
      if (bloc is ControllerIsLoaded) {
        return Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Пульт управления',
                style: questionTextStyle,
              ),
            ),
            questionIndent,
            Align(
              alignment: Alignment.center,
              child: DecoratedBox(
                decoration: answerDecoration,
                child: DropdownButton<String>(
                  value: bloc.controllerType,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 30.0,
                  itemHeight: 56.0,
                  isExpanded: true,
                  elevation: 8,
                  style: secondaryTextStyle,
                  underline: const SizedBox.shrink(),
                  iconEnabledColor: mainColor,
                  onChanged: (controllerType) => context
                      .bloc<ControllerBloc>()
                      .add(ChangeControllerType(controllerType)),
                  items: context
                      .bloc<ControllerBloc>()
                      .controllerTypes
                      .map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25.0, 0.0, 8.0, 0.0),
                        child: Text(value),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            bloc.controllerType ==
                    context.bloc<ControllerBloc>().controllerTypes.last
                ? const SizedBox()
                : Column(
                    children: [
                      answerIndent,
                      Align(
                        alignment: Alignment.topLeft,
                        child: DecoratedBox(
                          decoration: bloc.controllerWitfWiFi
                              ? answerDecoration
                              : hideDecoration,
                          child: CheckboxListTile(
                            title: const Text('Wi-Fi (управление с телефона)'),
                            activeColor: mainColor,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: bloc.controllerWitfWiFi,
                            onChanged: (value) => context
                                .bloc<ControllerBloc>()
                                .add(ChangeControllerWitfWiFi(value)),
                          ),
                        ),
                      ),
                    ],
                  )
          ],
        );
      } else {
        return null;
      }
    });
  }
}
