import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/pump_bloc/pump_bloc.dart';
import '../constants.dart';

class Pump extends StatelessWidget {
  Pump({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Подобрать насос?',
            style: questionTextStyle,
          ),
        ),
        questionIndent,
        BlocBuilder<PumpBloc, PumpState>(
          builder: (context, bloc) {
            if (bloc is PumpIsLoaded) {
              return Row(
                children: [
                  DecoratedBox(
                    decoration:
                        bloc.needPump ? answerDecoration : hideDecoration,
                    child: SizedBox(
                      width: 130.0,
                      child: RadioListTile(
                        title: const Text('Да'),
                        activeColor: mainColor,
                        value: true,
                        groupValue: bloc.needPump,
                        onChanged: (dynamic value) => context
                            .bloc<PumpBloc>()
                            .add(ChangePump(value as bool)),
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration:
                        bloc.needPump ? hideDecoration : answerDecoration,
                    child: SizedBox(
                      width: 130.0,
                      child: RadioListTile(
                        title: const Text('Нет'),
                        activeColor: mainColor,
                        value: false,
                        groupValue: bloc.needPump,
                        onChanged: (dynamic value) => context
                            .bloc<PumpBloc>()
                            .add(ChangePump(value as bool)),
                      ),
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
