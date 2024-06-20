import 'package:flutter/material.dart';
import 'package:june/june.dart';
import 'package:personal_habit_tracker/features/add_habit/viewmodels/add_habit_viewmodel.dart';

class AddHabitView extends StatelessWidget {
  const AddHabitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Add Habit"),
      ),
      floatingActionButton: JuneBuilder(
        () => AddHabitVM(context: context),
        init: AddHabitVM(context: context),
        global: false,
        builder: (vm) => FloatingActionButton(
          onPressed: vm.backToHome,
          shape: const CircleBorder(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
