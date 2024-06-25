import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:june/june.dart';
import 'package:personal_habit_tracker/features/home/viewmodels/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            stretch: true,
            expandedHeight: 100.h,
            backgroundColor: Colors.white,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text("Personal Habit Tracker", style: TextStyle(fontSize: 16)),
            ),
            forceElevated: true,
            shadowColor: Colors.black,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: JuneBuilder(
                () => HomeVM(context: context),
                builder: (vm) => const Column(
                  children: [
                    Text(
                      "Looks like you don't have any habit added into the list,\nlet's add them now!",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            June.getState(() => HomeVM(context: context)).navigateToAddHabit,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
