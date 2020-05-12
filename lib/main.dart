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
      body: Column(
        children: [
          const Text('Техническое задание на проектирование'),
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(16),
            child: GridView.extent(
              maxCrossAxisExtent: 500.0,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 8),
                    _terrain(),
                    const SizedBox(height: 8),
                    _connectionType(),
                    const SizedBox(height: 8),
                    _path(),
                    const SizedBox(height: 8),
                    _nozzlesType(),
                    const SizedBox(height: 8),
                    _controller(),
                    const SizedBox(height: 8),
                    _pump(),
                    const SizedBox(height: 8),
                    _barrel(),
                    const SizedBox(height: 8),
                  ],
                ),
              ],
            ),
          )
          /*SizedBox.expand(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[Text("data"), Text("as")],
            ),
          ),*/
          /*child: GridView.extent(
              maxCrossAxisExtent: 785.0,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
              childAspectRatio: 0.8,
              children: [
                /*Container(
                  alignment: Alignment.center,
                  color: Colors.green,
                  child: */
                Column(
                  children: [
                    const SizedBox(height: 8),
                    _terrain(),
                    const SizedBox(height: 8),
                    _connectionType(),
                    const SizedBox(height: 8),
                    _path(),
                    const SizedBox(height: 8),
                    _nozzlesType(),
                    const SizedBox(height: 8),
                    _controller(),
                    const SizedBox(height: 8),
                    _pump(),
                    const SizedBox(height: 8),
                    _barrel(),
                    const SizedBox(height: 8),
                  ],
                ),
                //),
                /*Container(
                  color: Colors.blue,
                  child: */
                Column(
                  children: [
                    const SizedBox(height: 8),
                    _sensor(),
                    const SizedBox(height: 8),
                    _watering(),
                    const SizedBox(height: 8),
                  ],
                ),
                //),
              ],
            ),*/
        ],
      ),
    );
  }

  Widget _terrain() {
    return Row(
      children: [
        const SizedBox(width: 16),
        const Text('Рельеф участка'),
        const SizedBox(width: 16),
        Container(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          decoration: BoxDecoration(
            border: Border.all(
              color: kMainColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButton<String>(
            value: 'Ровный',
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 8,
            style:
                const TextStyle(color: kMainColor, fontWeight: FontWeight.bold),
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
        Container(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          decoration: BoxDecoration(
            border: Border.all(
              color: kMainColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButton<String>(
            value: 'Магистраль',
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 8,
            style:
                const TextStyle(color: kMainColor, fontWeight: FontWeight.bold),
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
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: const Text('Датчик погоды'),
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
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: const Text('Что поливаем?'),
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
        TextField(
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

  Widget _comments() {
    return TextField(
      minLines: 4,
      maxLines: 20,
    );
  }
}
