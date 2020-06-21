import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/nozzles_bloc/nozzles_bloc.dart';
import '../constants.dart';

class PreferredNozzleType extends StatelessWidget {
  PreferredNozzleType({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Предпочитаемый тип дождевателей',
            style: questionTextStyle,
          ),
        ),
        questionIndent,
        BlocBuilder<NozzlesBloc, NozzlesState>(builder: (context, bloc) {
          if (bloc is NozzlesIsLoaded) {
            return Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  DecoratedBox(
                    decoration: bloc.preferredNozzleType.statics &&
                            !bloc.preferredNozzleType.any
                        ? answerDecoration
                        : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Статические'),
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor:
                          bloc.preferredNozzleType.any ? hideColor : mainColor,
                      value: bloc.preferredNozzleType.statics,
                      onChanged: (value) => context.bloc<NozzlesBloc>().add(
                          ChangeNozzles(bloc.preferredNozzleType
                              .copyWith(statics: value))),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration: bloc.preferredNozzleType.rotators &&
                            !bloc.preferredNozzleType.any
                        ? answerDecoration
                        : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Ротаторные'),
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor:
                          bloc.preferredNozzleType.any ? hideColor : mainColor,
                      value: bloc.preferredNozzleType.rotators,
                      onChanged: (value) => context.bloc<NozzlesBloc>().add(
                          ChangeNozzles(bloc.preferredNozzleType
                              .copyWith(rotators: value))),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration: bloc.preferredNozzleType.rotors &&
                            !bloc.preferredNozzleType.any
                        ? answerDecoration
                        : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Роторы'),
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor:
                          bloc.preferredNozzleType.any ? hideColor : mainColor,
                      value: bloc.preferredNozzleType.rotors,
                      onChanged: (value) => context.bloc<NozzlesBloc>().add(
                          ChangeNozzles(bloc.preferredNozzleType
                              .copyWith(rotors: value))),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration: bloc.preferredNozzleType.any
                        ? answerDecoration
                        : hideDecoration,
                    child: CheckboxListTile(
                      title: const Text('Любые'),
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: mainColor,
                      value: bloc.preferredNozzleType.any,
                      onChanged: (value) => context.bloc<NozzlesBloc>().add(
                          ChangeNozzles(
                              bloc.preferredNozzleType.copyWith(any: value))),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return null;
          }
        }),
      ],
    );
  }
}
