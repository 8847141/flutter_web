import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/options_bloc.dart';
import '../constants.dart';

class TerrarianType extends StatelessWidget {
  TerrarianType({Key key}) : super(key: key);

  final TextEditingController _heightDifferenceController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OptionsBloc, OptionsState>(builder: (context, bloc) {
      if (bloc is OptionsIsLoaded) {
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
                    decoration: bloc.answers.flatTerrain
                        ? answerDecoration
                        : hideDecoration,
                    child: RadioListTile(
                      title: const Text('Ровный'),
                      activeColor: mainColor,
                      value: true,
                      groupValue: bloc.answers.flatTerrain,
                      onChanged: (dynamic value) => context
                          .bloc<OptionsBloc>()
                          .add(ChangeAnswers(bloc.answers
                              .copyWith(flatTerrain: value as bool))),
                    ),
                  ),
                  answerIndent,
                  DecoratedBox(
                    decoration: bloc.answers.flatTerrain
                        ? hideDecoration
                        : answerDecoration,
                    child: RadioListTile(
                      title: const Text('С перепадом высот'),
                      activeColor: mainColor,
                      value: false,
                      groupValue: bloc.answers.flatTerrain,
                      onChanged: (dynamic value) => context
                          .bloc<OptionsBloc>()
                          .add(ChangeAnswers(bloc.answers
                              .copyWith(flatTerrain: value as bool))),
                    ),
                  ),
                ],
              ),
            ),
            questionIndent,
            bloc.answers.flatTerrain
                ? const SizedBox()
                : Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 25.0),
                        child: Text(
                          'Макс. перепад высот',
                          style: secondaryTextStyle,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 56.0,
                          width: MediaQuery.of(context).size.width - 240,
                          child: TextField(
                            controller: _heightDifferenceController,
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
