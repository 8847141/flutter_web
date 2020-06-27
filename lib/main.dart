/*import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'HomePage.dart';

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
}*/
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'PdfPreviewScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final pdf = pw.Document();

  dynamic writeOnPdf() {
    pdf.addPage(pw.MultiPage(
      pageFormat: PdfPageFormat.a5,
      margin: pw.EdgeInsets.all(32),
      build: (pw.Context context) {
        return <pw.Widget>[
          pw.Header(level: 0, child: pw.Text("Easy Approach Document")),
          pw.Paragraph(
              text:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Malesuada fames ac turpis egestas sed tempus urna. Quisque sagittis purus sit amet. A arcu cursus vitae congue mauris rhoncus aenean vel elit. Ipsum dolor sit amet consectetur adipiscing elit pellentesque. Viverra justo nec ultrices dui sapien eget mi proin sed."),
          pw.Paragraph(
              text:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Malesuada fames ac turpis egestas sed tempus urna. Quisque sagittis purus sit amet. A arcu cursus vitae congue mauris rhoncus aenean vel elit. Ipsum dolor sit amet consectetur adipiscing elit pellentesque. Viverra justo nec ultrices dui sapien eget mi proin sed."),
          pw.Header(level: 1, child: pw.Text("Second Heading")),
          pw.Paragraph(
              text:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Malesuada fames ac turpis egestas sed tempus urna. Quisque sagittis purus sit amet. A arcu cursus vitae congue mauris rhoncus aenean vel elit. Ipsum dolor sit amet consectetur adipiscing elit pellentesque. Viverra justo nec ultrices dui sapien eget mi proin sed."),
          pw.Paragraph(
              text:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Malesuada fames ac turpis egestas sed tempus urna. Quisque sagittis purus sit amet. A arcu cursus vitae congue mauris rhoncus aenean vel elit. Ipsum dolor sit amet consectetur adipiscing elit pellentesque. Viverra justo nec ultrices dui sapien eget mi proin sed."),
          pw.Paragraph(
              text:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Malesuada fames ac turpis egestas sed tempus urna. Quisque sagittis purus sit amet. A arcu cursus vitae congue mauris rhoncus aenean vel elit. Ipsum dolor sit amet consectetur adipiscing elit pellentesque. Viverra justo nec ultrices dui sapien eget mi proin sed."),
        ];
      },
    ));
  }

  Future savePdf() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();

    String documentPath = documentDirectory.path;

    File file = File("$documentPath/example.pdf");

    file.writeAsBytesSync(pdf.save());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PDF Flutter"),
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "PDF TUTORIAL",
              style: TextStyle(fontSize: 34),
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          writeOnPdf();
          await savePdf();

          Directory documentDirectory =
              await getApplicationDocumentsDirectory();

          String documentPath = documentDirectory.path;

          String fullPath = "$documentPath/example.pdf";

          Navigator.push<dynamic>(
              context,
              MaterialPageRoute<dynamic>(
                  builder: (context) => PdfPreviewScreen(
                        path: fullPath,
                      )));
        },
        child: Icon(Icons.save),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
