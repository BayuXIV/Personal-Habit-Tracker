import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:june/june.dart';
import 'package:personal_habit_tracker/cores/mixins/form_validator_mixin.dart';

class AddHabitVM extends JuneState with FormValidatorMixin {
  final BuildContext context;

  AddHabitVM({required this.context});

  final TextEditingController nameController = TextEditingController();

  String selectedType = "Daily";

  selectType(String name) {
    selectedType = name;
    setState();
  }

  backToHome() {
    context.pop(true);
  }
}
