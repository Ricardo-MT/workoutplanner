import 'package:flutter/material.dart';

class Workout {
  Workout({
    required this.path,
    required this.sets,
    required this.reps,
  });
  final String path;
  final String sets;
  final String reps;
}

class DayWorkout {
  DayWorkout({
    required this.day,
    required this.workouts,
  });
  final String day;
  final List<Workout> workouts;
}

class WeekWorkoutPlan extends StatelessWidget {
  const WeekWorkoutPlan({
    super.key,
    required this.workouts,
  });
  final List<DayWorkout> workouts;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: workouts.length,
        itemBuilder: (context, index) => Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned.fill(
                  child: DayWorkoutPlan(
                    workouts: workouts[index].workouts,
                  ),
                ),
                Text(
                  workouts[index].day,
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(color: Colors.black),
                ),
              ],
            ));
  }
}

class DayWorkoutPlan extends StatelessWidget {
  const DayWorkoutPlan({
    super.key,
    required this.workouts,
  });
  final List<Workout> workouts;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: workouts.length,
        itemBuilder: (context, index) => WorkoutWidget(
              workout: workouts[index],
            ));
  }
}

class WorkoutWidget extends StatelessWidget {
  const WorkoutWidget({
    super.key,
    required this.workout,
  });
  final Workout workout;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            workout.path,
            fit: BoxFit.contain,
          ),
        ),
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.6, 0.95],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Sets ${workout.sets}',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: Colors.black),
              ),
              Text(
                'x ${workout.reps}',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
