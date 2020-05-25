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
    return BlocBuilder<OptionsBloc, OptionsState>(
      builder: (context, bloc) {
        if (bloc is OptionsIsLoaded) {
          return Column(
            children: [
              Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Рельеф участка',
                      style: kMainTextStyle,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                    decoration: kDropdownButtonDecoration,
                    child: DropdownButton<String>(
                      value: bloc.answers.terrainType,
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 24.0,
                      elevation: 8,
                      style: const TextStyle(
                          color: kMainColor, fontWeight: FontWeight.bold),
                      underline: const SizedBox(
                        height: 0.0,
                      ),
                      onChanged: (terrainType) => context
                          .bloc<OptionsBloc>()
                          .add(ChangeAnswers(
                              bloc.answers.copyWith(terrainType: terrainType))),
                      items: context
                          .bloc<OptionsBloc>()
                          .answers
                          .terrainTypes
                          .map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              bloc.answers.terrainType != bloc.answers.terrainTypes.last
                  ? const SizedBox()
                  : Row(
                      children: [
                        const Text(
                          'Макс. перепад высот',
                          style: kMainTextStyle,
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
                              decoration: kTextFormInputDecoration,
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
      },
    );
  }
}
