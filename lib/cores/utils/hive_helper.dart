import 'package:hive_flutter/hive_flutter.dart';
import 'package:personal_habit_tracker/cores/utils/hive_boxes.dart';

class HiveHelper {
  static void registerAdapters() {
    // Hive.registerAdapter<APIModel>(APIModelAdapter());
  }

  static Future<void> openBoxes() async {
    await Future.wait<void>(<Future<Box<Object>>>[
      // Hive.openBox<String>(schedules),
    ]);
  }
}
