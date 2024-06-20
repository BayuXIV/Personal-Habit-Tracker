import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:june/june.dart';

class HomeVM extends JuneState {
  final BuildContext context;

  HomeVM({required this.context});

  navigateToAddHabit() async {
    final bool? result = await context.push('/add_habit');
    print("result $result");
  }
}
