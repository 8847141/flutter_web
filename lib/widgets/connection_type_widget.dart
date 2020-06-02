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
            style: mainTextStyle,
          ),
        ),
        questionIndent,
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: 56.0,
            padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
            decoration: dropdownButtonDecoration,
            child: BlocBuilder<OptionsBloc, OptionsState>(
              builder: (context, bloc) {
                if (bloc is OptionsIsLoaded) {
                  return DropdownButton<String>(
                    value: bloc.answers.connectionType,
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 24.0,
                    elevation: 8,
                    style: secondaryTextStyle,
                    underline: const SizedBox(
                      height: 0.0,
                    ),
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
                        child: Text(value),
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
