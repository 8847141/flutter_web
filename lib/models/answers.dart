import 'preferred_nozzle_type.dart';
import 'sensors.dart';
import 'types_of_irrigated_landings.dart';

class Answers {
  String landArea;
  bool flatTerrain;
  String heightDifference;
  String connectionType;
  String otherConnectionType;
  bool canBeWateredWalkway;
  PreferredNozzleType preferredNozzleType;
  String controllerType;
  bool controllerWitfWiFi;
  Sensors sensors;
  bool dripIrrigation;

  String budget;
  String otherBudget;

  List<String> get connectionTypes => [
        'Емкость (своя)',
        'Магистраль',
        'Колодец',
        'Скважина',
        'Водоем',
        'Другое'
      ];
  List<String> get controllerTypes => ['Внутренний', 'Внешний', 'Не нужен'];

  List<String> get budgets => [
        'До 50 тыс. руб',
        'До 100 тыс. руб',
        'До 200 тыс. руб',
        'До 300 тыс. руб',
        'На ваше усмотрение (Эконом)',
        'На ваше усмотрение (Стандарт)',
        'На ваше усмотрение (Премиум)',
        'Другое',
      ];
  Answers({
    this.landArea = '',
    this.flatTerrain = true,
    this.heightDifference = '',
    this.connectionType = 'Магистраль',
    this.otherConnectionType = '',
    this.canBeWateredWalkway = true,
    PreferredNozzleType preferredNozzleType,
    this.controllerType = 'Внутренний',
    this.controllerWitfWiFi = false,
    this.dripIrrigation = false,
    Sensors sensors,
    this.budget = 'На ваше усмотрение (Стандарт)',
    this.otherBudget = '',
  }) {
    this.preferredNozzleType = preferredNozzleType ?? PreferredNozzleType();
    this.sensors = sensors ?? Sensors();
  }

  Answers copyWith({
    String landArea,
    bool flatTerrain,
    String heightDifference,
    String connectionType,
    String otherConnectionType,
    bool canBeWateredWalkway,
    PreferredNozzleType preferredNozzleType,
    String controllerType,
    bool controllerWitfWiFi,
    bool dripIrrigation,
    Sensors sensors,
    TypesOfIrrigatedLandings typesOfIrrigatedLandings,
    String waterOutlet,
    String budget,
    String otherBudget,
  }) {
    return Answers(
      landArea: landArea ?? this.landArea,
      flatTerrain: flatTerrain ?? this.flatTerrain,
      heightDifference: heightDifference ?? this.heightDifference,
      connectionType: connectionType ?? this.connectionType,
      otherConnectionType: otherConnectionType ?? this.otherConnectionType,
      canBeWateredWalkway: canBeWateredWalkway ?? this.canBeWateredWalkway,
      preferredNozzleType: preferredNozzleType ?? this.preferredNozzleType,
      controllerType: controllerType ?? this.controllerType,
      controllerWitfWiFi: controllerWitfWiFi ?? this.controllerWitfWiFi,
      sensors: sensors ?? this.sensors,
      dripIrrigation: dripIrrigation ?? this.dripIrrigation,
      budget: budget ?? this.budget,
      otherBudget: otherBudget ?? this.otherBudget,
    );
  }
}
