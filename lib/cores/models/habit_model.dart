import 'package:hive_flutter/hive_flutter.dart';
import 'package:personal_habit_tracker/cores/constants/hive_type_ids.dart';

part 'habit_model.g.dart';

@HiveType(typeId: HiveTypeIds.habit)
class HabitModel {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  @HiveField(2)
  List<int> schedulesInMilliseconds;

  HabitModel({
    required this.id,
    required this.name,
    required this.schedulesInMilliseconds,
  });
}
