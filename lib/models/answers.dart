class Answers {
  String terrainType;
  //String heightDifference;
  String connectionType;
  //String otherconnectionType;
  bool canBeWateredWalkway;
  // preferredNozzleType;
  //String controllerLocation;
  //bool controllerWitfWiFi;
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

  Answers({
    this.terrainType = 'Ровный',
    this.connectionType = 'Магистраль',
    this.canBeWateredWalkway = true,
  });

  Answers copyWith(
      {String terrainType, String connectionType, bool canBeWateredWalkway}) {
    return Answers(
      terrainType: terrainType ?? this.terrainType,
      connectionType: connectionType ?? this.connectionType,
      canBeWateredWalkway: canBeWateredWalkway ?? this.canBeWateredWalkway,
    );
  }
}
