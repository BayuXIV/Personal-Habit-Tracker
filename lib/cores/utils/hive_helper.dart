import 'package:hive_flutter/hive_flutter.dart';
import 'package:personal_habit_tracker/cores/models/habit_model.dart';
import 'package:personal_habit_tracker/cores/utils/hive_boxes.dart';

class HiveHelper {
  static void registerAdapters() {
    Hive.registerAdapter<HabitModel>(HabitModelAdapter());
  }

  static Future<void> openBoxes() async {
    await Future.wait<void>(<Future<Box<Object>>>[
      Hive.openBox<String>(habit),
    ]);
  }
}
