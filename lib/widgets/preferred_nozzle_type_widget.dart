import 'package:flutter/material.dart';

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
            style: kMainTextStyle,
          ),
        ),
        const SizedBox(height: 8.0),
        Padding(
          padding: kChecboxesPadding,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                  decoration: kDropdownButtonDecoration,
                  width: 200.0,
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: kMainColor,
                        value: true,
                        onChanged: (_) {},
                      ),
                      const Text('Статические')
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                  decoration: kDropdownButtonDecoration,
                  width: 200.0,
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: kMainColor,
                        value: true,
                        onChanged: (_) {},
                      ),
                      const Text('Ротаторные')
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                  //decoration: kDropdownButtonDecoration,
                  width: 200.0,
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: kMainColor,
                        value: false,
                        onChanged: (_) {},
                      ),
                      const Text('Роторы')
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                  //decoration: kDropdownButtonDecoration,
                  width: 200.0,
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: kMainColor,
                        value: false,
                        onChanged: (_) {},
                      ),
                      const Text('Любые')
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
