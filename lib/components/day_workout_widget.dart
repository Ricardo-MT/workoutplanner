import 'package:flutter/material.dart';
import 'package:workoutplanner/components/glassmorphed_container.dart';
import 'package:workoutplanner/components/workout_widget.dart';
import 'package:workoutplanner/models/daily_workout_model.dart';
import 'package:workoutplanner/utils/dimensions.dart';

class DayWorkoutWidget extends StatefulWidget {
  const DayWorkoutWidget({
    super.key,
    required this.dailyWorkout,
  });
  final DailyWorkoutModel dailyWorkout;

  @override
  State<DayWorkoutWidget> createState() => _DayWorkoutWidgetState();
}

class _DayWorkoutWidgetState extends State<DayWorkoutWidget> {
  late int index;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  nextPage() {
    if (controller.hasClients) {
      controller.nextPage(
        duration: const Duration(milliseconds: 250),
        curve: Curves.fastOutSlowIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned.fill(
          child: PageView.builder(
              controller: controller,
              scrollDirection: Axis.vertical,
              itemCount: widget.dailyWorkout.workouts.length,
              itemBuilder: (context, index) => WorkoutWidget(
                    workout: widget.dailyWorkout.workouts[index],
                  )),
        ),
        GlassmorphedContainer(
          child: SizedBox(
            height: Dimensions.pageUpperGap - Dimensions.cardMediumSpacing * 2,
            child: Text(
              widget.dailyWorkout.day,
              style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: Dimensions.pageUpperGap -
                      Dimensions.cardMediumSpacing * 2 -
                      6),
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: IconButton(
            icon: const Icon(Icons.arrow_downward),
            splashColor: myColor,
            onPressed: nextPage,
          ),
        )
      ],
    );
  }
}
