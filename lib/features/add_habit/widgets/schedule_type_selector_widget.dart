import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:personal_habit_tracker/features/add_habit/widgets/schedule_type_item_widget.dart';

class ScheduleTypeSelector extends StatelessWidget {
  final Function(String) onTap;
  final String selectedType;
  const ScheduleTypeSelector({
    super.key,
    required this.onTap,
    required this.selectedType,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ScheduleTypeItem(
          name: "daily",
          onTap: onTap,
          isSelected: selectedType == "daily",
        ),
        const Gap(8),
        ScheduleTypeItem(
          name: "weekly",
          onTap: onTap,
          isSelected: selectedType == "weekly",
        ),
        const Gap(8),
        ScheduleTypeItem(
          name: "monthly",
          onTap: onTap,
          isSelected: selectedType == "monthly",
        ),
      ],
    );
  }
}
