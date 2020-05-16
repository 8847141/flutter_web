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

  final TextEditingController _noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          children: [
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Техническое задание на проектирование',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 800,
                child: TextField(
                  controller: _noteController,
                  maxLines: null,
                  minLines: 2,
                  decoration: kTextFormInputDecoration,
                ),
              ),
            ),
            const SizedBox(height: 12),
            _terrain(),
            const SizedBox(height: 12),
            _connectionType(),
            const SizedBox(height: 12),
            _path(),
            const SizedBox(height: 12),
            _nozzlesType(),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }

  Widget _terrain() {
    return Row(
      children: [
        const Text(
          'Рельеф участка',
          style: kMainTextStyle,
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
          decoration: kDropdownButtonDecoration,
          child: DropdownButton<String>(
            value: 'Ровный',
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 8,
            style:
                const TextStyle(color: kMainColor, fontWeight: FontWeight.bold),
            underline: const SizedBox(
              height: 0,
            ),
            onChanged: (_) {},
            items: <String>['Ровный', 'С перепадом высот']
                .map<DropdownMenuItem<String>>((value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _connectionType() {
    return Row(
      children: [
        const Text(
          'Подключение к системе',
          style: kMainTextStyle,
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          decoration: kDropdownButtonDecoration,
          child: DropdownButton<String>(
            value: 'Магистраль',
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 8,
            style:
                const TextStyle(color: kMainColor, fontWeight: FontWeight.bold),
            underline: const SizedBox(
              height: 0,
            ),
            onChanged: (_) {},
            items: <String>[
              'Магистраль',
              'Емкость',
              'Колодец',
              'Скважина',
              'Водоем',
              'Другое'
            ].map<DropdownMenuItem<String>>((value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _path() {
    return Row(
      children: [
        const Text(
          'Поливаем дорожки?',
          style: kMainTextStyle,
        ),
        const SizedBox(width: 16),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              decoration: kDropdownButtonDecoration,
              width: 100.0,
              child: Row(
                children: [
                  const Radio(
                    value: true,
                    groupValue: true,
                    onChanged: null,
                  ),
                  const Text('Да'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              //decoration: kDropdownButtonDecoration,
              width: 100.0,
              child: Row(
                children: [
                  const Radio(
                    value: false,
                    groupValue: null,
                    onChanged: null,
                  ),
                  const Text('Нет'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _nozzlesType() {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Предпочитаемый тип дождевателей',
            style: kMainTextStyle,
          ),
        ),
        const SizedBox(height: 8.0),
        Padding(
          padding: kChecboxesPadding,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  decoration: kDropdownButtonDecoration,
                  width: 200.0,
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: kMainColor,
                        value: true,
                        onChanged: (_) {},
                      ),
                      const Text('Статические')
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  decoration: kDropdownButtonDecoration,
                  width: 200.0,
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: kMainColor,
                        value: true,
                        onChanged: (_) {},
                      ),
                      const Text('Ротаторные')
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  //decoration: kDropdownButtonDecoration,
                  width: 200.0,
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: kMainColor,
                        value: false,
                        onChanged: (_) {},
                      ),
                      const Text('Роторы')
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  //decoration: kDropdownButtonDecoration,
                  width: 200.0,
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: kMainColor,
                        value: false,
                        onChanged: (_) {},
                      ),
                      const Text('Любые')
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _controller() {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 16),
            const Text('Пульт управления'),
            const SizedBox(width: 16),
            Row(
              children: <Widget>[
                Row(
                  children: [
                    const Radio(
                        value: false, groupValue: null, onChanged: null),
                    const Text('Внутренний'),
                  ],
                ),
                Row(
                  children: [
                    const Radio(
                        value: false, groupValue: null, onChanged: null),
                    const Text('Наружный'),
                  ],
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: kChecboxesPadding,
          child: Row(
            children: [
              const Checkbox(
                value: false,
                onChanged: null,
              ),
              const Text('С Wi-Fi'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _sensor() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('Датчик погоды'),
          ),
        ),
        const SizedBox(width: 8),
        Padding(
          padding: kChecboxesPadding,
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                  ),
                  const Text('Дождя')
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                  ),
                  const Text('Ветра')
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                  ),
                  const Text('Влажности почвы')
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                  ),
                  const Text('Заморозков')
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                  ),
                  const Text('Дождя и заморозков')
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                  ),
                  const Text('Солнечной активности')
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                  ),
                  const Text('Потока')
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _watering() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('Что поливаем?'),
          ),
        ),
        const SizedBox(width: 8),
        Padding(
          padding: kChecboxesPadding,
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                  ),
                  const Text('Весь участок')
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                  ),
                  const Text('Газон')
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                  ),
                  const Text('Огород')
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                  ),
                  const Text('Теплица')
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                  ),
                  const Text('Кусты')
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                  ),
                  const Text('Цветники')
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _waterOutlet() {
    return Row(
      children: [
        const SizedBox(width: 16),
        const Text('Установка водяных розеток'),
        const SizedBox(width: 16),
        const TextField(
          decoration: InputDecoration(
              border: InputBorder.none, hintText: 'Enter a search term'),
        ),
        const SizedBox(width: 16),
      ],
    );
  }

  Widget _pump() {
    return Row(
      children: [
        const SizedBox(width: 16),
        const Text('Подобрать насос?'),
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

  Widget _barrel() {
    return Row(
      children: [
        const SizedBox(width: 16),
        const Text('Нужна накопительная емкость?'),
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
}
