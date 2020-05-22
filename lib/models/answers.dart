import 'preferred_nozzle_type.dart';

class Answers {
  String terrainType;
  //String heightDifference;
  String connectionType;
  //String otherconnectionType;
  bool canBeWateredWalkway;
  PreferredNozzleType preferredNozzleType;
  bool outdoorController;
  bool controllerWitfWiFi;
  //String sensor;
  //bool dripIrrigation;
  //String typesOfIrrigatedLandings;
  //int waterOutlet;
  //bool needPump;
  //bool needWaterTank;
  //String comments;

  List<String> get terrainTypes => ['Ровный', 'С перепадом высот'];
  List<String> get connectionTypes =>
      ['Магистраль', 'Емкость', 'Колодец', 'Скважина', 'Водоем', 'Другое'];

  Answers(
      {this.terrainType = 'Ровный',
      this.connectionType = 'Магистраль',
      this.canBeWateredWalkway = true,
      PreferredNozzleType preferredNozzleType,
      this.outdoorController = true,
      this.controllerWitfWiFi = false}) {
    this.preferredNozzleType = preferredNozzleType ?? PreferredNozzleType();
  }

  Answers copyWith({
    String terrainType,
    String connectionType,
    bool canBeWateredWalkway,
    PreferredNozzleType preferredNozzleType,
    bool outdoorController,
    bool controllerWitfWiFi,
  }) {
    return Answers(
      terrainType: terrainType ?? this.terrainType,
      connectionType: connectionType ?? this.connectionType,
      canBeWateredWalkway: canBeWateredWalkway ?? this.canBeWateredWalkway,
      preferredNozzleType: preferredNozzleType ?? this.preferredNozzleType,
      outdoorController: outdoorController ?? this.outdoorController,
      controllerWitfWiFi: controllerWitfWiFi ?? this.controllerWitfWiFi,
    );
  }
}
