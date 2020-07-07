import 'dart:html' as html;
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'blocs/walkway_bloc/walkway_bloc.dart';
import 'constants.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  final pdf = pw.Document();
  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;

    final double questionsWidth = _screenWidth < 450 ? _screenWidth - 32 : 418;

    final _counterBloc = BlocProvider.of<WalkwayBloc>(context);

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
              FlatButton(
                color: mainColor,
                onPressed: _savePDF,
                child: const Text(
                  'Create PDF',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              blocIndent,
              BlocListener<WalkwayBloc, WalkwayState>(
                bloc: _counterBloc,
                listener: (context, bloc) {
                  print('asdasd');
                },
                child: const SizedBox(),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _savePDF() {
    final bytes = (pdf.save());
    final blob = html.Blob(<Uint8List>[Uint8List.fromList(bytes)]);
    final url = html.Url.createObjectUrlFromBlob(blob);

    final anchor = html.document.createElement('a') as html.AnchorElement
      ..href = url
      ..download = 'answers.pdf';
    html.document.body.children.add(anchor);

    anchor.click();

    html.document.body.children.remove(anchor);
    html.Url.revokeObjectUrl(url);
  }
}

class ColumnQuestions extends StatelessWidget {
  final double questionsWidth;

  ColumnQuestions({Key key, @required this.questionsWidth}) : super(key: key);

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
              blocIndent,
              Comments(),
            ],
          ),
        ),
      ],
    );
  }
}

class RowQuestions extends StatelessWidget {
  final double questionsWidth;

  RowQuestions({Key key, @required this.questionsWidth}) : super(key: key);

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
                blocIndent,
              ],
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
