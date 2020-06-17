import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/water_outlets_bloc/water_outlets_bloc.dart';
import '../constants.dart';

class WaterOutlets extends StatelessWidget {
  WaterOutlets({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Водяные розетки, шт:',
          style: questionTextStyle,
        ),
        questionIndent,
        Flexible(
          child: SizedBox(
            height: 56.0,
            child: BlocBuilder<WaterOutletsBloc, WaterOutletsState>(
              builder: (context, bloc) {
                if (bloc is WaterOutletsIsLoaded) {
                  return TextField(
                    onChanged: (value) => context
                        .bloc<WaterOutletsBloc>()
                        .add(ChangeWaterOutlets(value)),
                    cursorColor: mainColor,
                    maxLines: 1,
                    minLines: 1,
                    decoration: textFormInputDecoration,
                    keyboardType: TextInputType.number,
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
