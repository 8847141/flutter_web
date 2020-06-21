import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/land_area_bloc/land_area_bloc.dart';
import '../constants.dart';

class LandArea extends StatelessWidget {
  LandArea({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Площадь участка, сотки:',
          style: questionTextStyle,
        ),
        questionIndent,
        Flexible(
          child: SizedBox(
            height: 56.0,
            child: BlocBuilder<LandAreaBloc, LandAreaState>(
              builder: (context, bloc) {
                if (bloc is LandAreaIsLoaded) {
                  return TextField(
                    onChanged: (value) =>
                        context.bloc<LandAreaBloc>().add(ChangeLandArea(value)),
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
