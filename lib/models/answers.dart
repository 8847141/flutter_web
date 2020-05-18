class Answers {
  final String terrainType;
  /*String heightDifference;
  String connectionType;
  String otherconnectionType;
  bool canBeWateredWalkway;
  //TODO preferredNozzleType;
  String controllerLocation;
  bool controllerWitfWiFi;
  String sensor;
  bool dripIrrigation;
  String typesOfIrrigatedLandings;
  int waterOutlet;
  bool needPump;
  bool needWaterTank;
  String comments;*/

  List<String> get terrainTypes => ['Ровный', 'С перепадом высот'];
  List<String> get connectionTypes =>
      ['Магистраль', 'Емкость', 'Колодец', 'Скважина', 'Водоем', 'Другое'];

  const Answers({this.terrainType});
}
