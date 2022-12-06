import 'package:workoutplanner/models/workout_model.dart';

class DailyWorkoutModel {
  DailyWorkoutModel({
    required this.day,
    required this.workouts,
  });
  final String day;
  final List<WorkoutModel> workouts;
}
