import 'package:flutter/material.dart';
import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Техническое задание',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            //width: 460,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 8),
                _terrain(),
                const SizedBox(height: 8),
                _connectionType(),
                const SizedBox(height: 8),
                _path(),
                const SizedBox(height: 8),
                _nozzlesType(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _terrain() {
    return Row(
      children: [
        const SizedBox(width: 16),
        const Text('Рельеф участка'),
        const SizedBox(width: 16),
        DropdownButton<String>(
          value: 'Ровный',
          icon: Icon(Icons.arrow_drop_down),
          iconSize: 24,
          elevation: 8,
          style: const TextStyle(color: kMainColor),
          underline: const SizedBox(
            height: 0,
          ),
          onChanged: (String newValue) {},
          items: <String>['Ровный', 'С перепадом высот']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        const SizedBox(width: 16),
      ],
    );
  }

  Widget _connectionType() {
    return Row(
      children: [
        const SizedBox(width: 16),
        const Text('Подключение к системе'),
        const SizedBox(width: 16),
        DropdownButton<String>(
          value: 'Магистраль',
          icon: Icon(Icons.arrow_drop_down),
          iconSize: 24,
          elevation: 8,
          style: const TextStyle(color: kMainColor),
          underline: const SizedBox(
            height: 0,
          ),
          onChanged: (String newValue) {},
          items: <String>[
            'Магистраль',
            'Емкость',
            'Колодец',
            'Скважина',
            'Водоем',
            'Другое'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        const SizedBox(width: 16),
      ],
    );
  }

  Widget _path() {
    return Row(
      children: [
        const SizedBox(width: 16),
        const Text('Поливаем дорожки?'),
        const SizedBox(width: 16),
        Row(
          children: <Widget>[
            Row(
              children: [
                const Radio(value: false, groupValue: null, onChanged: null),
                const Text('Да'),
              ],
            ),
            Row(
              children: [
                const Radio(value: false, groupValue: null, onChanged: null),
                const Text('Нет'),
              ],
            ),
          ],
        ),
        const SizedBox(width: 16),
      ],
    );
  }

  Widget _nozzlesType() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: const Text('Предпочитаемый тип дождевателя'),
          ),
        ),
        const SizedBox(width: 8),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (_) {},
            ),
            const Text('Статические')
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (_) {},
            ),
            const Text('Ротаторные')
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (_) {},
            ),
            const Text('Роторы')
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (_) {},
            ),
            const Text('Любые')
          ],
        ),
      ],
    );
  }
}
