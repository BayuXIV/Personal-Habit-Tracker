import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:june/june.dart';

class AddHabitVM extends JuneState {
  final BuildContext context;

  AddHabitVM({required this.context});

  backToHome() {
    context.pop(true);
  }
}
