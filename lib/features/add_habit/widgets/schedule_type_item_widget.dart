import 'package:flutter/material.dart';
import 'package:personal_habit_tracker/cores/utils/string_extension.dart';

class ScheduleTypeItem extends StatelessWidget {
  final String name;
  final Function(String) onTap;
  final bool isSelected;
  const ScheduleTypeItem({
    super.key,
    required this.name,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(name);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        child: Center(
          child: Text(
            name.capitalize(),
            style: TextStyle(
              color: isSelected ? Colors.red : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
