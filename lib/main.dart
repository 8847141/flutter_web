import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'HomePage.dart';
import 'blocs/comments_bloc/comments_bloc.dart';
import 'blocs/main_bloc/options_bloc.dart';
import 'blocs/pump_bloc/pump_bloc.dart';
import 'blocs/water_outlets_bloc/water_outlets_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Техническое задание',
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) {
              return OptionsBloc();
            },
          ),
          BlocProvider(
            create: (context) {
              return CommentsBloc();
            },
          ),
          BlocProvider(
            create: (context) {
              return WaterOutletsBloc();
            },
          ),
          BlocProvider(
            create: (context) {
              return PumpBloc();
            },
          ),
        ],
        child: HomePage(),
      ),
    );
  }
}
