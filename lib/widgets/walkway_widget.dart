import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/walkway_bloc/walkway_bloc.dart';
import '../constants.dart';

class Path extends StatelessWidget {
  Path({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Поливаем дорожки?',
            style: questionTextStyle,
          ),
        ),
        questionIndent,
        BlocBuilder<WalkwayBloc, WalkwayState>(
          builder: (context, bloc) {
            if (bloc is WalkwayIsLoaded) {
              return Row(
                children: [
                  DecoratedBox(
                    decoration: bloc.canBeWateredWalkway
                        ? answerDecoration
                        : hideDecoration,
                    child: SizedBox(
                      width: 130.0,
                      child: RadioListTile(
                        title: const Text('Да'),
                        activeColor: mainColor,
                        value: true,
                        groupValue: bloc.canBeWateredWalkway,
                        onChanged: (dynamic value) => context
                            .bloc<WalkwayBloc>()
                            .add(ChangeWalkway(value as bool)),
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: bloc.canBeWateredWalkway
                        ? hideDecoration
                        : answerDecoration,
                    child: SizedBox(
                      width: 130.0,
                      child: RadioListTile(
                        title: const Text('Нет'),
                        activeColor: mainColor,
                        value: false,
                        groupValue: bloc.canBeWateredWalkway,
                        onChanged: (dynamic value) => context
                            .bloc<WalkwayBloc>()
                            .add(ChangeWalkway(value as bool)),
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
