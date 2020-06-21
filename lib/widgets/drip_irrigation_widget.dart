import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/drip_bloc/drip_bloc.dart';
import '../constants.dart';

class DripIrrigation extends StatelessWidget {
  DripIrrigation({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Используем капельный полив?',
            style: questionTextStyle,
          ),
        ),
        questionIndent,
        BlocBuilder<DripBloc, DripState>(
          builder: (context, bloc) {
            if (bloc is DripIsLoaded) {
              return Row(
                children: [
                  DecoratedBox(
                    decoration:
                        bloc.dripIrrigation ? answerDecoration : hideDecoration,
                    child: SizedBox(
                      width: 130.0,
                      child: RadioListTile(
                        title: const Text('Да'),
                        activeColor: mainColor,
                        value: true,
                        groupValue: bloc.dripIrrigation,
                        onChanged: (dynamic value) => context
                            .bloc<DripBloc>()
                            .add(ChangeDrip(value as bool)),
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration:
                        bloc.dripIrrigation ? hideDecoration : answerDecoration,
                    child: SizedBox(
                      width: 130.0,
                      child: RadioListTile(
                        title: const Text('Нет'),
                        activeColor: mainColor,
                        value: false,
                        groupValue: bloc.dripIrrigation,
                        onChanged: (dynamic value) => context
                            .bloc<DripBloc>()
                            .add(ChangeDrip(value as bool)),
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
