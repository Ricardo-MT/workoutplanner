import 'dart:math';

import 'package:flutter/material.dart';
import 'package:workoutplanner/components/day_workout_widget.dart';
import 'package:workoutplanner/models/daily_workout_model.dart';

class WeekWorkoutWidget extends StatefulWidget {
  const WeekWorkoutWidget({
    super.key,
    required this.workouts,
  });
  final List<DailyWorkoutModel> workouts;

  @override
  State<WeekWorkoutWidget> createState() => _WeekWorkoutWidgetState();
}

class _WeekWorkoutWidgetState extends State<WeekWorkoutWidget> {
  late PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(
      initialPage: getWeekdayIniitialIndex(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      scrollDirection: Axis.horizontal,
      itemCount: widget.workouts.length,
      itemBuilder: (context, index) => DayWorkoutWidget(
        dailyWorkout: widget.workouts[index],
      ),
    );
  }
}

int getWeekdayIniitialIndex() {
  final date = DateTime.now();
  return min(date.weekday - 1, 4);
}
