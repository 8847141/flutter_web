import 'package:flutter/material.dart';

import 'constants.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        //backgroundColor: Colors.white70,
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
              const SizedBox(height: 12.0),
              MediaQuery.of(context).size.width <= (questionsWidth + 20) * 2
                  ? ColumnQuestions()
                  : RowQuestions(),
            ],
          ),
        ),
      ),
    );
  }
}

class ColumnQuestions extends StatelessWidget {
  ColumnQuestions({Key key}) : super(key: key);

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
              ConnectionType(),
              const SizedBox(height: 12.0),
              Controller(),
              const SizedBox(height: 12.0),
              Path(),
              const SizedBox(height: 12.0),
              PreferredNozzleType(),
              const SizedBox(height: 12.0),
              Sensors(),
              const SizedBox(height: 12.0),
              TerrarianType(),
              const SizedBox(height: 12.0),
              WaterOutlets(),
              const SizedBox(height: 12.0),
              Watering(),
              const SizedBox(height: 12.0),
              Pump(),
              const SizedBox(height: 12.0),
              WaterTank(),
              const SizedBox(height: 12.0),
              DripIrrigation(),
              const SizedBox(height: 12.0),
              LandArea(),
              const SizedBox(height: 12.0),
              Budget(),
              const SizedBox(height: 12.0),
            ],
          ),
        ),
      ],
    );
  }
}

class RowQuestions extends StatelessWidget {
  RowQuestions({Key key}) : super(key: key);

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
              TerrarianType(),
              const SizedBox(height: 12.0),
              ConnectionType(),
              const SizedBox(height: 12.0),
              Path(),
              const SizedBox(height: 12.0),
              PreferredNozzleType(),
              const SizedBox(height: 12.0),
              Controller(),
              const SizedBox(height: 12.0),
              Sensors(),
              const SizedBox(height: 12.0),
            ],
          ),
        ),
        const SizedBox(width: 8.0),
        SizedBox(
          width: questionsWidth,
          child: Column(
            children: [
              TerrarianType(),
              const SizedBox(height: 12.0),
              ConnectionType(),
              const SizedBox(height: 12.0),
              Path(),
              const SizedBox(height: 12.0),
              PreferredNozzleType(),
              const SizedBox(height: 12.0),
              Controller(),
              const SizedBox(height: 12.0),
              Sensors(),
              const SizedBox(height: 12.0),
            ],
          ),
        ),
      ],
    );
  }
}
