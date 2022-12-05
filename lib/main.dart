import 'package:flutter/material.dart';

import 'components/workout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workout planner demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WeekWorkoutPlan(
      workouts: [
        DayWorkout(
          day: "Monday",
          workouts: works,
        ),
        DayWorkout(
          day: "Tuesday",
          workouts: works,
        ),
        DayWorkout(
          day: "Wednesday",
          workouts: works,
        ),
        DayWorkout(
          day: "Thursday",
          workouts: works,
        ),
        DayWorkout(
          day: "Friday",
          workouts: works,
        ),
      ],
    ));
  }
}

final works = [
  Workout(
    path: "assets/1_Bench_Press.jpg",
    sets: "6",
    reps: "5-8",
  ),
  Workout(
    path: "assets/2_Dumbell_OHP.jpg",
    sets: "3",
    reps: "6-10",
  ),
  Workout(
    path: "assets/3_Pull_Ups.jpg",
    sets: "4",
    reps: "6-10",
  ),
  Workout(
    path: "assets/4_Barbell_Shrugs.jpg",
    sets: "3",
    reps: "6-10",
  ),
  Workout(
    path: "assets/5_Lateral_Raises.jpg",
    sets: "3",
    reps: "8-12",
  ),
  Workout(
    path: "assets/6_Barbell_Curls.jpg",
    sets: "4",
    reps: "8-12",
  ),
  Workout(
    path: "assets/7_Cables_Tricep_Extension.jpg",
    sets: "5",
    reps: "6-10",
  ),
];
