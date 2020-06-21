import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/terrain_bloc/terrain_bloc.dart';
import '../constants.dart';

class TerrarianType extends StatelessWidget {
  TerrarianType({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TerrainBloc, TerrainState>(builder: (context, bloc) {
      if (bloc is TerrainIsLoaded) {
        return Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Рельеф участка',
                style: questionTextStyle,
              ),
            ),
            questionIndent,
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  DecoratedBox(
                    decoration:
                        bloc.flatTerrain ? answerDecoration : hideDecoration,
                    child: RadioListTile(
                      title: const Text('Ровный'),
                      activeColor: mainColor,
                      value: true,
                      groupValue: bloc.flatTerrain,
                      onChanged: (dynamic value) => context
                          .bloc<TerrainBloc>()
                          .add(ChangeFlatTerrain(value as bool)),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration:
                        bloc.flatTerrain ? hideDecoration : answerDecoration,
                    child: RadioListTile(
                      title: const Text('С перепадом высот'),
                      activeColor: mainColor,
                      value: false,
                      groupValue: bloc.flatTerrain,
                      onChanged: (dynamic value) => context
                          .bloc<TerrainBloc>()
                          .add(ChangeFlatTerrain(value as bool)),
                    ),
                  ),
                ],
              ),
            ),
            questionIndent,
            bloc.flatTerrain
                ? const SizedBox()
                : Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 25.0),
                        child: Text(
                          'Перепад высот, м',
                          style: secondaryTextStyle,
                        ),
                      ),
                      questionIndent,
                      Flexible(
                        child: SizedBox(
                          height: 56.0,
                          child: TextField(
                            onChanged: (value) => context
                                .bloc<TerrainBloc>()
                                .add(ChangeHeightDifference(value)),
                            cursorColor: mainColor,
                            maxLines: 1,
                            minLines: 1,
                            decoration: textFormInputDecoration,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        );
      } else {
        return null;
      }
    });
  }
}
