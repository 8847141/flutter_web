import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/water_tank_bloc/water_tank_bloc.dart';
import '../constants.dart';

class WaterTank extends StatelessWidget {
  WaterTank({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Подобрать емкость?',
            style: questionTextStyle,
          ),
        ),
        questionIndent,
        BlocBuilder<WaterTankBloc, WaterTankState>(
          builder: (context, bloc) {
            if (bloc is WaterTankIsLoaded) {
              return Row(
                children: [
                  DecoratedBox(
                    decoration:
                        bloc.needWaterTank ? answerDecoration : hideDecoration,
                    child: SizedBox(
                      width: 130.0,
                      child: RadioListTile(
                        title: const Text('Да'),
                        activeColor: mainColor,
                        value: true,
                        groupValue: bloc.needWaterTank,
                        onChanged: (dynamic value) => context
                            .bloc<WaterTankBloc>()
                            .add(ChangeWaterTank(value as bool)),
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration:
                        bloc.needWaterTank ? hideDecoration : answerDecoration,
                    child: SizedBox(
                      width: 130.0,
                      child: RadioListTile(
                        title: const Text('Нет'),
                        activeColor: mainColor,
                        value: false,
                        groupValue: bloc.needWaterTank,
                        onChanged: (dynamic value) => context
                            .bloc<WaterTankBloc>()
                            .add(ChangeWaterTank(value as bool)),
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
