import 'package:flutter/material.dart';

import 'constants.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  final TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: Container(
          //! For debug
          color: Colors.white,
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
            child: Container(
              width: 500,
              child: Column(
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
                    height: 20.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 800.0,
                      child: TextField(
                        controller: _commentController,
                        maxLines: null,
                        minLines: 2,
                        decoration: kTextFormInputDecoration,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12.0),
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
          ),
        ),
      ),
    );
  }
}
