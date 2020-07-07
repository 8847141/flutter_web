import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/budget_bloc/budget_bloc.dart';
import 'blocs/comments_bloc/comments_bloc.dart';
import 'blocs/connection_type_bloc/connection_type_bloc.dart';
import 'blocs/controller_bloc/controller_bloc.dart';
import 'blocs/drip_bloc/drip_bloc.dart';
import 'blocs/land_area_bloc/land_area_bloc.dart';
import 'blocs/nozzles_bloc/nozzles_bloc.dart';
import 'blocs/pump_bloc/pump_bloc.dart';
import 'blocs/sensors_bloc/sensors_bloc.dart';
import 'blocs/terrain_bloc/terrain_bloc.dart';
import 'blocs/walkway_bloc/walkway_bloc.dart';
import 'blocs/water_outlets_bloc/water_outlets_bloc.dart';
import 'blocs/water_tank_bloc/water_tank_bloc.dart';
import 'blocs/watering_bloc/watering_bloc.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  //final WalkwayBloc _walkwayBloc = WalkwayBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Техническое задание',
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) {
              return BudgetBloc();
            },
          ),
          BlocProvider(
            create: (context) {
              return CommentsBloc();
            },
          ),
          BlocProvider(
            create: (context) {
              return ConnectionTypeBloc();
            },
          ),
          BlocProvider(
            create: (context) {
              return ControllerBloc();
            },
          ),
          BlocProvider(
            create: (context) {
              return DripBloc();
            },
          ),
          BlocProvider(
            create: (context) {
              return LandAreaBloc();
            },
          ),
          BlocProvider(
            create: (context) {
              return NozzlesBloc();
            },
          ),
          BlocProvider(
            create: (context) {
              return PumpBloc();
            },
          ),
          BlocProvider(
            create: (context) {
              return SensorsBloc();
            },
          ),
          BlocProvider(
            create: (context) {
              return TerrainBloc();
            },
          ),
          BlocProvider(
            create: (context) {
              return WalkwayBloc();
            },
          ),
          BlocProvider(
            create: (context) {
              return WaterOutletsBloc();
            },
          ),
          BlocProvider(
            create: (context) {
              return WaterTankBloc();
            },
          ),
          BlocProvider(
            create: (context) {
              return WateringBloc();
            },
          ),
        ],
        child: HomePage(),
      ),
    );
  }
}
