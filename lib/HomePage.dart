import 'package:flutter/material.dart';

import 'constants.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double questionsWidth = MediaQuery.of(context).size.width - 32;

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white70,
        body: Center(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
            children: [
              const SizedBox(height: 40.0),
              const Text(
                'Техническое задание на проектирование',
                style: h1,
                textAlign: TextAlign.center,
              ),
              blocIndent,
              MediaQuery.of(context).size.width <= (questionsWidth + 20) * 2
                  ? ColumnQuestions(questionsWidth: questionsWidth)
                  : RowQuestions(questionsWidth: questionsWidth),
              blocIndent,
              Comments(),
              blocIndent,
            ],
          ),
        ),
      ),
    );
  }
}

class ColumnQuestions extends StatelessWidget {
  final double questionsWidth;

  ColumnQuestions({Key key, this.questionsWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: questionsWidth,
          child: Column(
            children: [
              Budget(),
              blocIndent,
              LandArea(),
              blocIndent,
              TerrarianType(),
              blocIndent,
              Watering(),
              blocIndent,
              Path(),
              blocIndent,
              DripIrrigation(),
              blocIndent,
              PreferredNozzleType(),
              blocIndent,
              WaterOutlets(),
              blocIndent,
              Controller(),
              blocIndent,
              Sensors(),
              blocIndent,
              ConnectionType(),
              blocIndent,
              Pump(),
              blocIndent,
              WaterTank(),
            ],
          ),
        ),
      ],
    );
  }
}

class RowQuestions extends StatelessWidget {
  final double questionsWidth;

  RowQuestions({
    Key key,
    this.questionsWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: questionsWidth,
          child: Column(
            children: [
              Budget(),
              blocIndent,
              LandArea(),
              blocIndent,
              TerrarianType(),
              blocIndent,
              Watering(),
              blocIndent,
              Path(),
              blocIndent,
              DripIrrigation(),
              blocIndent,
              PreferredNozzleType(),
            ],
          ),
        ),
        const SizedBox(width: 20.0),
        SizedBox(
          width: questionsWidth,
          child: Column(
            children: [
              WaterOutlets(),
              blocIndent,
              Controller(),
              blocIndent,
              Sensors(),
              blocIndent,
              ConnectionType(),
              blocIndent,
              Pump(),
              blocIndent,
              WaterTank(),
            ],
          ),
        ),
      ],
    );
  }
}
