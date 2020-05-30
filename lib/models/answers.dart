import 'preferred_nozzle_type.dart';
import 'sensors.dart';
import 'types_of_irrigated_landings.dart';

class Answers {
  bool flatTerrain;
  //String heightDifference;
  String connectionType;
  //String otherconnectionType;
  bool canBeWateredWalkway;
  PreferredNozzleType preferredNozzleType;
  String controllerType;
  bool controllerWitfWiFi;
  Sensors sensors;
  //bool dripIrrigation;
  TypesOfIrrigatedLandings typesOfIrrigatedLandings;
  //int waterOutlet;
  //bool needPump;
  //bool needWaterTank;
  //String comments;

  List<String> get connectionTypes =>
      ['Емкость', 'Магистраль', 'Колодец', 'Скважина', 'Водоем', 'Другое'];
  List<String> get controllerTypes => ['Внутренний', 'Внешний'];

  Answers({
    this.flatTerrain = true,
    this.connectionType = 'Емкость',
    this.canBeWateredWalkway = true,
    PreferredNozzleType preferredNozzleType,
    this.controllerType = 'Внутренний',
    this.controllerWitfWiFi = false,
    Sensors sensors,
    TypesOfIrrigatedLandings typesOfIrrigatedLandings,
  }) {
    this.preferredNozzleType = preferredNozzleType ?? PreferredNozzleType();
    this.sensors = sensors ?? Sensors();
    this.typesOfIrrigatedLandings =
        typesOfIrrigatedLandings ?? TypesOfIrrigatedLandings();
  }

  Answers copyWith({
    bool flatTerrain,
    String connectionType,
    bool canBeWateredWalkway,
    PreferredNozzleType preferredNozzleType,
    String controllerType,
    bool controllerWitfWiFi,
    Sensors sensors,
    TypesOfIrrigatedLandings typesOfIrrigatedLandings,
  }) {
    return Answers(
        flatTerrain: flatTerrain ?? this.flatTerrain,
        connectionType: connectionType ?? this.connectionType,
        canBeWateredWalkway: canBeWateredWalkway ?? this.canBeWateredWalkway,
        preferredNozzleType: preferredNozzleType ?? this.preferredNozzleType,
        controllerType: controllerType ?? this.controllerType,
        controllerWitfWiFi: controllerWitfWiFi ?? this.controllerWitfWiFi,
        sensors: sensors ?? this.sensors,
        typesOfIrrigatedLandings:
            typesOfIrrigatedLandings ?? this.typesOfIrrigatedLandings);
  }
}
