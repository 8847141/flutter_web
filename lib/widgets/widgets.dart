export 'connection_type_widget.dart';
export 'path_widget.dart';
export 'preferred_nozzle_type_widget.dart';
export 'terrarian_type_widget.dart';

//! Use this widgets

/*Widget _controller() {
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
  }*/
