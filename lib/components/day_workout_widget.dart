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
  late ValueNotifier<int> index;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    index = ValueNotifier(0);
    controller = PageController(initialPage: 0);
  }

  nextPage() {
    if (controller.hasClients) {
      controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn,
      );
    }
  }

  animateTo(int value) {
    if (controller.hasClients) {
      controller.animateToPage(
        value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn,
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    index.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.all(Dimensions.cardMediumSpacing),
            child: PageView.builder(
                controller: controller,
                onPageChanged: (value) {
                  index.value = value;
                },
                scrollDirection: Axis.vertical,
                itemCount: widget.dailyWorkout.workouts.length,
                itemBuilder: (context, index) => WorkoutWidget(
                      workout: widget.dailyWorkout.workouts[index],
                    )),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(Dimensions.cardMediumSpacing),
          child: GlassmorphedContainer(
            child: SizedBox(
              height:
                  Dimensions.pageUpperGap - Dimensions.cardMediumSpacing * 2,
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
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: IconButton(
            padding: EdgeInsets.all(Dimensions.cardMediumSpacing),
            icon: const Icon(Icons.arrow_downward),
            splashColor: myColor,
            onPressed: nextPage,
          ),
        ),
        Positioned(
            bottom: Dimensions.cardMediumSpacing,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: ValueListenableBuilder(
                valueListenable: index,
                builder: (context, value, _) {
                  return AnimatedProgress(
                    count: widget.dailyWorkout.workouts.length,
                    current: value,
                    onPress: animateTo,
                  );
                },
              ),
            ))
      ],
    );
  }
}

class AnimatedProgress extends StatelessWidget {
  const AnimatedProgress({
    Key? key,
    required this.count,
    required this.current,
    required this.onPress,
  }) : super(key: key);
  final int count;
  final int current;
  final Function(int index) onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        count,
        (index) => Expanded(
          child: GestureDetector(
            onTap: () {
              onPress(index);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: AnimatedContainer(
                margin: const EdgeInsets.symmetric(horizontal: 1),
                duration: _duration,
                height: 6,
                decoration: BoxDecoration(
                    color: index <= current ? myColor : Colors.grey,
                    borderRadius: const BorderRadius.all(Radius.circular(4))),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const _duration = Duration(milliseconds: 200);
