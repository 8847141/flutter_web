import 'package:flutter/material.dart';

import 'constants.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  //final TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: Container(
          //! For debug
          color: Colors.white,
          child: ListView(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
            children: [
              const SizedBox(
                height: 40.0,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Техническое задание на проектирование',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              /*Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 800.0,
                  child: TextField(
                    controller: _commentController,
                    maxLines: null,
                    minLines: 2,
                    decoration: textFormInputDecoration,
                  ),
                ),
              ),*/
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
    return SizedBox(
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
          Watering(),
          const SizedBox(height: 12.0),
        ],
      ),
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
