import 'package:workoutplanner/models/workout_model.dart';

class DailyWorkoutModel {
  DailyWorkoutModel({
    required this.day,
    required this.category,
    required this.workouts,
  });
  final String day;
  final String category;
  final List<WorkoutModel> workouts;
}
