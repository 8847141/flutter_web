import 'package:flutter/material.dart';

import 'constants.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;

    final double questionsWidth = _screenWidth < 450 ? _screenWidth - 32 : 418;

    final Budget _budget = Budget();
    final LandArea _landArea = LandArea();
    final TerrarianType _terrarianType = TerrarianType();
    final Watering _watering = Watering();
    final Path _path = Path();
    final DripIrrigation _dripIrrigation = DripIrrigation();
    final PreferredNozzleType _preferredNozzleType = PreferredNozzleType();
    final WaterOutlets _waterOutlets = WaterOutlets();
    final Controller _controller = Controller();
    final Sensors _sensors = Sensors();
    final ConnectionType _connectionType = ConnectionType();
    final Pump _pump = Pump();
    final WaterTank _waterTank = WaterTank();
    final Comments _comments = Comments();

    final List<Widget> _firstColumn = [
      _budget,
      blocIndent,
      _landArea,
      blocIndent,
      _terrarianType,
      blocIndent,
      _watering,
      blocIndent,
      _path,
      blocIndent,
      _dripIrrigation,
      blocIndent,
      _preferredNozzleType,
    ];

    final List<Widget> _secondColumn = [
      _waterOutlets,
      blocIndent,
      _controller,
      blocIndent,
      _sensors,
      blocIndent,
      _connectionType,
      blocIndent,
      _pump,
      blocIndent,
      _waterTank,
      blocIndent,
      _comments,
    ];

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
                  ? ColumnQuestions(
                      questionsWidth: questionsWidth,
                      firsColumn: _firstColumn,
                      secondColumn: _secondColumn,
                    )
                  : RowQuestions(
                      questionsWidth: questionsWidth,
                      firsColumn: _firstColumn,
                      secondColumn: _secondColumn,
                    ),
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
  final List<Widget> firsColumn;
  final List<Widget> secondColumn;

  ColumnQuestions({
    Key key,
    @required this.questionsWidth,
    @required this.firsColumn,
    @required this.secondColumn,
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
            children: firsColumn + secondColumn,
          ),
        ),
      ],
    );
  }
}

class RowQuestions extends StatelessWidget {
  final double questionsWidth;
  final List<Widget> firsColumn;
  final List<Widget> secondColumn;

  RowQuestions({
    Key key,
    @required this.questionsWidth,
    @required this.firsColumn,
    @required this.secondColumn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: questionsWidth,
            child: Column(
              children: firsColumn,
            ),
          ),
          const SizedBox(width: 20.0),
          SizedBox(
            width: questionsWidth,
            child: Column(
              children: secondColumn,
            ),
          ),
        ],
      ),
      SizedBox(
        width: questionsWidth * 2 + 20,
        child: Comments(),
      ),
    ]);
  }
}
