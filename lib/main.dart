import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'HomePage.dart';
import 'comments/bloc/comments_bloc.dart';
import 'main_bloc/options_bloc.dart';

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
        ],
        child: HomePage(),
      ),
    );
  }
}
