import 'preferred_nozzle_type.dart';
import 'sensors.dart';

class Answers {
  String terrainType;
  //String heightDifference;
  String connectionType;
  //String otherconnectionType;
  bool canBeWateredWalkway;
  PreferredNozzleType preferredNozzleType;
  String controllerType;
  bool controllerWitfWiFi;
  Sensors sensors;
  //bool dripIrrigation;
  //String typesOfIrrigatedLandings;
  //int waterOutlet;
  //bool needPump;
  //bool needWaterTank;
  //String comments;

  List<String> get terrainTypes => ['Ровный', 'С перепадом высот'];
  List<String> get connectionTypes =>
      ['Емкость', 'Магистраль', 'Колодец', 'Скважина', 'Водоем', 'Другое'];
  List<String> get controllerTypes => ['Внутренний', 'Внешний'];

  Answers({
    this.terrainType = 'Ровный',
    this.connectionType = 'Емкость',
    this.canBeWateredWalkway = true,
    PreferredNozzleType preferredNozzleType,
    this.controllerType = 'Внутренний',
    this.controllerWitfWiFi = false,
    Sensors sensors,
  }) {
    this.preferredNozzleType = preferredNozzleType ?? PreferredNozzleType();
    this.sensors = sensors ?? Sensors();
  }

  Answers copyWith({
    String terrainType,
    String connectionType,
    bool canBeWateredWalkway,
    PreferredNozzleType preferredNozzleType,
    String controllerType,
    bool controllerWitfWiFi,
    Sensors sensors,
  }) {
    return Answers(
      terrainType: terrainType ?? this.terrainType,
      connectionType: connectionType ?? this.connectionType,
      canBeWateredWalkway: canBeWateredWalkway ?? this.canBeWateredWalkway,
      preferredNozzleType: preferredNozzleType ?? this.preferredNozzleType,
      controllerType: controllerType ?? this.controllerType,
      controllerWitfWiFi: controllerWitfWiFi ?? this.controllerWitfWiFi,
      sensors: sensors ?? this.sensors,
    );
  }
}
