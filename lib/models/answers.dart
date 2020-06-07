import 'preferred_nozzle_type.dart';
import 'sensors.dart';
import 'types_of_irrigated_landings.dart';

class Answers {
  bool flatTerrain;
  String heightDifference;
  String connectionType;
  String otherConnectionType;
  bool canBeWateredWalkway;
  PreferredNozzleType preferredNozzleType;
  String controllerType;
  bool controllerWitfWiFi;
  Sensors sensors;
  //bool dripIrrigation;
  TypesOfIrrigatedLandings typesOfIrrigatedLandings;
  String waterOutlet;
  bool needPump;
  bool needWaterTank;
  //String comments;

  List<String> get connectionTypes => [
        'Емкость (своя)',
        'Магистраль',
        'Колодец',
        'Скважина',
        'Водоем',
        'Другое'
      ];
  List<String> get controllerTypes => ['Внутренний', 'Внешний', 'Не нужен'];

  Answers({
    this.flatTerrain = true,
    this.heightDifference = '',
    this.connectionType = 'Магистраль',
    this.otherConnectionType = '',
    this.canBeWateredWalkway = true,
    PreferredNozzleType preferredNozzleType,
    this.controllerType = 'Внутренний',
    this.controllerWitfWiFi = false,
    Sensors sensors,
    TypesOfIrrigatedLandings typesOfIrrigatedLandings,
    this.waterOutlet = '',
    this.needPump = true,
    this.needWaterTank = true,
  }) {
    this.preferredNozzleType = preferredNozzleType ?? PreferredNozzleType();
    this.sensors = sensors ?? Sensors();
    this.typesOfIrrigatedLandings =
        typesOfIrrigatedLandings ?? TypesOfIrrigatedLandings();
  }

  Answers copyWith({
    bool flatTerrain,
    String heightDifference,
    String connectionType,
    String otherConnectionType,
    bool canBeWateredWalkway,
    PreferredNozzleType preferredNozzleType,
    String controllerType,
    bool controllerWitfWiFi,
    Sensors sensors,
    TypesOfIrrigatedLandings typesOfIrrigatedLandings,
    String waterOutlet,
    bool needPump,
    bool needWaterTank,
  }) {
    return Answers(
      flatTerrain: flatTerrain ?? this.flatTerrain,
      heightDifference: heightDifference ?? this.heightDifference,
      connectionType: connectionType ?? this.connectionType,
      otherConnectionType: otherConnectionType ?? this.otherConnectionType,
      canBeWateredWalkway: canBeWateredWalkway ?? this.canBeWateredWalkway,
      preferredNozzleType: preferredNozzleType ?? this.preferredNozzleType,
      controllerType: controllerType ?? this.controllerType,
      controllerWitfWiFi: controllerWitfWiFi ?? this.controllerWitfWiFi,
      sensors: sensors ?? this.sensors,
      typesOfIrrigatedLandings:
          typesOfIrrigatedLandings ?? this.typesOfIrrigatedLandings,
      waterOutlet: waterOutlet ?? this.waterOutlet,
      needPump: needPump ?? this.needPump,
      needWaterTank: needWaterTank ?? this.needWaterTank,
    );
  }
}
