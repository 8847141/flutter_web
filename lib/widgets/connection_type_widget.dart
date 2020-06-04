import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/options_bloc.dart';
import '../constants.dart';

class ConnectionType extends StatelessWidget {
  ConnectionType({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Подключение к системе',
            style: questionTextStyle,
          ),
        ),
        questionIndent,
        Align(
          alignment: Alignment.topLeft,
          child: DecoratedBox(
            decoration: answerDecoration,
            child: BlocBuilder<OptionsBloc, OptionsState>(
              builder: (context, bloc) {
                if (bloc is OptionsIsLoaded) {
                  return DropdownButton<String>(
                    value: bloc.answers.connectionType,
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 30.0,
                    itemHeight: 56.0,
                    isExpanded: true,
                    style: secondaryTextStyle,
                    underline: const SizedBox.shrink(),
                    iconEnabledColor: mainColor,
                    onChanged: (connectionType) => context
                        .bloc<OptionsBloc>()
                        .add(ChangeAnswers(bloc.answers
                            .copyWith(connectionType: connectionType))),
                    items: context
                        .bloc<OptionsBloc>()
                        .answers
                        .connectionTypes
                        .map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
                          child: Text(value),
                        ),
                      );
                    }).toList(),
                  );
                } else {
                  return null;
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
