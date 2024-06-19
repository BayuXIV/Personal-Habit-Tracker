import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:personal_habit_tracker/cores/configs/router.dart';
import 'package:personal_habit_tracker/cores/constants/design_size.dart';
import 'package:personal_habit_tracker/cores/utils/hive_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  HiveHelper.registerAdapters();
  await HiveHelper.openBoxes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: designSize,
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        // navigatorKey: NavigationService.navigationKey,
        title: 'Personal Habit Tracker',
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: 'home',
      ),
    );
  }
}
