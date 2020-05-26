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
                style: mainTextStyle,
              ),
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Container(
                  decoration: bloc.answers.flatTerrain
                      ? dropdownButtonDecoration
                      : null,
                  width: 200.0,
                  child: RadioListTile(
                    title: const Text('Ровный'),
                    activeColor: mainColor,
                    value: true,
                    groupValue: bloc.answers.flatTerrain,
                    onChanged: (dynamic value) => context
                        .bloc<OptionsBloc>()
                        .add(ChangeAnswers(
                            bloc.answers.copyWith(flatTerrain: value as bool))),
                  ),
                ),
                Container(
                  decoration: bloc.answers.flatTerrain
                      ? null
                      : dropdownButtonDecoration,
                  width: 200.0,
                  child: RadioListTile(
                    title: const Text('С перепадом высот'),
                    activeColor: mainColor,
                    value: false,
                    groupValue: bloc.answers.flatTerrain,
                    onChanged: (dynamic value) => context
                        .bloc<OptionsBloc>()
                        .add(ChangeAnswers(
                            bloc.answers.copyWith(flatTerrain: value as bool))),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            bloc.answers.flatTerrain
                ? const SizedBox()
                : Row(
                    children: [
                      const Text(
                        'Макс. перепад высот',
                        style: mainTextStyle,
                      ),
                      const SizedBox(width: 8.0),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 52.0,
                          width: 174.0,
                          child: TextField(
                            controller: _heightDifferenceController,
                            maxLines: 1,
                            minLines: 1,
                            decoration: textFormInputDecoration,
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
