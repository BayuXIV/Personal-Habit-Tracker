import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:june/june.dart';
import 'package:personal_habit_tracker/features/add_habit/viewmodels/add_habit_viewmodel.dart';
import 'package:personal_habit_tracker/features/add_habit/widgets/schedule_type_selector_widget.dart';

class AddHabitView extends StatelessWidget {
  const AddHabitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text("Add Habit"),
                JuneBuilder(
                  () => AddHabitVM(context: context),
                  init: AddHabitVM(context: context),
                  global: false,
                  builder: (vm) => Form(
                    key: vm.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Name"),
                        TextField(
                          controller: vm.nameController,
                          textCapitalization: TextCapitalization.sentences,
                        ),
                        const Gap(24),
                        const Text("Schedules"),
                        const Gap(24),
                        ScheduleTypeSelector(
                          onTap: vm.selectType,
                          selectedType: vm.selectedType,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: June.getState(
          () => AddHabitVM(context: context),
          permanent: false,
        ).backToHome,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
