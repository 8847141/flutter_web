import 'preferred_nozzle_type.dart';
import 'sensors.dart';
import 'types_of_irrigated_landings.dart';

class Answers {
  String landArea;
  bool flatTerrain;
  String heightDifference;
  bool canBeWateredWalkway;
  PreferredNozzleType preferredNozzleType;
  Sensors sensors;
  bool dripIrrigation;

  Answers({
    this.landArea = '',
    this.flatTerrain = true,
    this.heightDifference = '',
    this.canBeWateredWalkway = true,
    PreferredNozzleType preferredNozzleType,
    this.dripIrrigation = false,
    Sensors sensors,
  }) {
    this.preferredNozzleType = preferredNozzleType ?? PreferredNozzleType();
    this.sensors = sensors ?? Sensors();
  }

  Answers copyWith({
    String landArea,
    bool flatTerrain,
    String heightDifference,
    bool canBeWateredWalkway,
    PreferredNozzleType preferredNozzleType,
    bool dripIrrigation,
    Sensors sensors,
    TypesOfIrrigatedLandings typesOfIrrigatedLandings,
    String waterOutlet,
  }) {
    return Answers(
      landArea: landArea ?? this.landArea,
      flatTerrain: flatTerrain ?? this.flatTerrain,
      heightDifference: heightDifference ?? this.heightDifference,
      canBeWateredWalkway: canBeWateredWalkway ?? this.canBeWateredWalkway,
      preferredNozzleType: preferredNozzleType ?? this.preferredNozzleType,
      sensors: sensors ?? this.sensors,
      dripIrrigation: dripIrrigation ?? this.dripIrrigation,
    );
  }
}
