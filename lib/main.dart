import 'package:flutter/material.dart';
import 'package:workoutplanner/components/week_workout_widget.dart';
import 'package:workoutplanner/data/workouts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workout planner',
      theme: ThemeData(
        backgroundColor: const Color(0xFFFEFEFE),
        scaffoldBackgroundColor: const Color(0xFFFEFEFE),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WeekWorkoutWidget(
          workouts: weekWorkouts,
        ),
      ),
    );
  }
}
