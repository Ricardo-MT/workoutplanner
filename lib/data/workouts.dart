import 'package:workoutplanner/models/daily_workout_model.dart';
import 'package:workoutplanner/models/workout_model.dart';

final mondayWorks = [
  WorkoutModel(
    name: 'Bench Press',
    path: "assets/1_Bench_Press.jpg",
    sets: "6",
    reps: "5-8",
  ),
  WorkoutModel(
    name: 'Dumbell OHP',
    path: "assets/2_Dumbell_OHP.jpg",
    sets: "3",
    reps: "6-10",
  ),
  WorkoutModel(
    name: 'Pull Ups',
    path: "assets/3_Pull_Ups.jpg",
    sets: "4",
    reps: "6-10",
  ),
  WorkoutModel(
    name: 'Barbell Shrugs',
    path: "assets/4_Barbell_Shrugs.jpg",
    sets: "3",
    reps: "6-10",
  ),
  WorkoutModel(
    name: 'Lateral Raises',
    path: "assets/5_Lateral_Raises.jpg",
    sets: "3",
    reps: "8-12",
  ),
  WorkoutModel(
    name: 'Barbell Curls',
    path: "assets/6_Barbell_Curls.jpg",
    sets: "4",
    reps: "8-12",
  ),
  WorkoutModel(
    name: 'Cables Tricep Extension',
    path: "assets/7_Cables_Tricep_Extension.jpg",
    sets: "5",
    reps: "6-10",
  ),
];

final tuesdayWorks = [
  WorkoutModel(
    name: 'Squat',
    path: "assets/8_Squat.jpg",
    sets: "4",
    reps: "5-8",
  ),
  WorkoutModel(
    name: 'RDL',
    path: "assets/9_RDL.png",
    sets: "3",
    reps: "6-10",
  ),
  WorkoutModel(
    name: 'Leg press',
    path: "assets/10_Leg_Press.jpg",
    sets: "3",
    reps: "8-12",
  ),
  WorkoutModel(
    name: 'Lunges',
    path: "assets/11_Lunges.jpg",
    sets: "3",
    reps: "8-12",
  ),
  WorkoutModel(
    name: 'Good Mornings',
    path: "assets/12_Good_Mornings.png",
    sets: "4",
    reps: "8-12",
  ),
  WorkoutModel(
    name: 'Calf Raises (Standing)',
    path: "assets/13_Calf_Raises.jpg",
    sets: "6",
    reps: "8-12",
  ),
  WorkoutModel(
    name: 'Incline Curl',
    path: "assets/14_Incline_Curl.jpg",
    sets: "4",
    reps: "8-12",
  ),
];

final wednesdayWorks = [
  WorkoutModel(
    name: 'Incline Bench',
    path: "assets/15_Incline_Bench.jpg",
    sets: "6",
    reps: "8-12",
  ),
  WorkoutModel(
    name: 'Military Press',
    path: "assets/16_Military_Press.jpg",
    sets: "3",
    reps: "5-8",
  ),
  WorkoutModel(
    name: 'Barbell Row',
    path: "assets/17_Barbell_Row.jpg",
    sets: "4",
    reps: "8-12",
  ),
  WorkoutModel(
    name: 'Lat Pulldown',
    path: "assets/18_Lat_Pulldown.png",
    sets: "3",
    reps: "12-15",
  ),
  WorkoutModel(
    name: 'Cable Lateral raise',
    path: "assets/19_Cable_lateral_Rise.jpg",
    sets: "3",
    reps: "10-15",
  ),
  WorkoutModel(
    name: 'Dumbell Curls',
    path: "assets/20_Dumbell_Curls.jpg",
    sets: "4",
    reps: "10-15",
  ),
  WorkoutModel(
    name: 'Skull Crushers',
    path: "assets/21_Skullcrushers.jpg",
    sets: "5",
    reps: "8-12",
  ),
];

final thursdayWorks = [
  WorkoutModel(
    name: 'Deadlift',
    path: "assets/22_Deadlift.jpg",
    sets: "3",
    reps: "5",
  ),
  WorkoutModel(
    name: 'Goblet Squat',
    path: "assets/23_Goblet_Squat.png",
    sets: "5",
    reps: "6-10",
  ),
  WorkoutModel(
    name: 'Leg Curl',
    path: "assets/24_Leg_Curl.png",
    sets: "2",
    reps: "10-15",
  ),
  WorkoutModel(
    name: 'Leg Extension',
    path: "assets/25_Leg_Extension.jpg",
    sets: "3",
    reps: "10-15",
  ),
  WorkoutModel(
    name: 'Calf Raise',
    path: "assets/5_Lateral_Raises.jpg",
    sets: "6",
    reps: "10-15",
  ),
  WorkoutModel(
    name: 'Skull Crushers',
    path: "assets/21_Skullcrushers.jpg",
    sets: "4",
    reps: "8-12",
  ),
  WorkoutModel(
    name: 'Preacher curl',
    path: "assets/27_Preacher_curl.jpg",
    sets: "4",
    reps: "12-15",
  ),
];

final fridayWorks = [
  WorkoutModel(
    name: 'Bench Press',
    path: "assets/1_Bench_Press.jpg",
    sets: "6",
    reps: "5-8",
  ),
  WorkoutModel(
    name: 'Dumbell OHP',
    path: "assets/2_Dumbell_OHP.jpg",
    sets: "3",
    reps: "6-10",
  ),
  WorkoutModel(
    name: 'Pull Ups',
    path: "assets/3_Pull_Ups.jpg",
    sets: "4",
    reps: "6-10",
  ),
  WorkoutModel(
    name: 'Barbell Shrugs',
    path: "assets/4_Barbell_Shrugs.jpg",
    sets: "3",
    reps: "6-10",
  ),
  WorkoutModel(
    name: 'Lateral Raises',
    path: "assets/5_Lateral_Raises.jpg",
    sets: "3",
    reps: "8-12",
  ),
  WorkoutModel(
    name: 'Barbell Curls',
    path: "assets/6_Barbell_Curls.jpg",
    sets: "4",
    reps: "8-12",
  ),
  WorkoutModel(
    name: 'Cables Tricep Extension',
    path: "assets/7_Cables_Tricep_Extension.jpg",
    sets: "5",
    reps: "6-10",
  ),
];

final weekWorkouts = [
  DailyWorkoutModel(
    day: "Monday (cardio)",
    category: 'Upper 1, heavy',
    workouts: mondayWorks,
  ),
  DailyWorkoutModel(
    day: "Tuesday",
    category: 'Lower 1',
    workouts: tuesdayWorks,
  ),
  DailyWorkoutModel(
    day: "Wednesday (cardio)",
    category: 'Upper 2, light',
    workouts: wednesdayWorks,
  ),
  DailyWorkoutModel(
    day: "Thursday",
    category: 'Lower 2',
    workouts: thursdayWorks,
  ),
  DailyWorkoutModel(
    day: "Friday (cardio)",
    category: 'Upper 1, heavy',
    workouts: fridayWorks,
  ),
];
