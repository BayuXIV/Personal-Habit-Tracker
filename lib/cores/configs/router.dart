import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_habit_tracker/features/add_habit/views/add_habit_view.dart';
import 'package:personal_habit_tracker/features/home/views/home_view.dart';

final _router = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: 'home',
    builder: (context, state) => const HomeView(),
  ),
  GoRoute(
    path: '/add_habit',
    name: 'add_habit',
    builder: (context, state) => const AddHabitView(),
  ),
], initialLocation: '/');

get router => _router;
