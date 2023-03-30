import 'package:hive/hive.dart';
part 'plants.g.dart';

@HiveType(typeId : 1)
class Plants {
  Plants({
    required this.tipe,
    required this.name,
    required this.description,
    required this.harvest,
    required this.developmentEta,
    required this.idealTemperature,
    required this.irrigation,
    required this.sunlight,
    required this.observations,
    required this.planting,
    required this.replanting,
    required this.imgUrl});
  @HiveField(0)
  String tipe;

  @HiveField(1)
  String name;

  @HiveField(2)
  String harvest;

  @HiveField(3)
  String description;

  @HiveField(4)
  String developmentEta;

  @HiveField(5)
  String idealTemperature;

  @HiveField(6)
  String sunlight;

  @HiveField(7)
  String irrigation;

  @HiveField(8)
  String planting;

  @HiveField(9)
  String replanting;

  @HiveField(10)
  String observations;

  @HiveField(11)
  String imgUrl;
}