import 'package:flutter/material.dart';
import 'package:workoutplanner/models/workout_model.dart';
import 'package:workoutplanner/utils/dimensions.dart';

class WorkoutWidget extends StatefulWidget {
  const WorkoutWidget({
    super.key,
    required this.workout,
  });
  final WorkoutModel workout;

  @override
  State<WorkoutWidget> createState() => _WorkoutWidgetState();
}

class _WorkoutWidgetState extends State<WorkoutWidget> {
  late bool done;

  @override
  void initState() {
    super.initState();
    done = false;
  }

  toggleState(value) => setState(
        () => done = value,
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: Dimensions.pageUpperGap,
        ),
        Expanded(
          child: Center(
            child: AspectRatio(
              aspectRatio: 1,
              child: Padding(
                padding: EdgeInsets.all(Dimensions.cardMediumSpacing),
                child: ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.all(
                      Radius.circular(Dimensions.borderRadiusControllers)),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          widget.workout.path,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned.fill(
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.25),
                            Colors.transparent,
                            Colors.transparent,
                            Colors.black.withOpacity(0.25),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: const [0, 0.4, 0.4, 0.95],
                        ))),
                      ),
                      Positioned(
                        left: 14,
                        top: 8,
                        child: Text(
                          widget.workout.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 5,
                        bottom: 5,
                        child: Checkbox(value: done, onChanged: toggleState),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Sets ${widget.workout.sets}',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'x ${widget.workout.reps}',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        )
      ],
    );
    // return Stack(
    //   children: [
    //     Positioned.fill(
    //       child: Image.asset(
    //         workout.path,
    //         fit: BoxFit.contain,
    //       ),
    //     ),
    //     Positioned.fill(
    //       child: DecoratedBox(
    //         decoration: BoxDecoration(
    //           gradient: LinearGradient(
    //             colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
    //             begin: Alignment.topCenter,
    //             end: Alignment.bottomCenter,
    //             stops: const [0.6, 0.95],
    //           ),
    //         ),
    //       ),
    //     ),
    //     Positioned(
    //       bottom: 10,
    //       right: 20,
    //       child: GlassmorphedContainer(
    //         child: Column(
    //           mainAxisSize: MainAxisSize.min,
    //           crossAxisAlignment: CrossAxisAlignment.end,
    //           children: [
    //             Text(
    //               'Sets ${workout.sets}',
    //               style: Theme.of(context)
    //                   .textTheme
    //                   .headline3
    //                   ?.copyWith(color: Colors.black),
    //             ),
    //             Text(
    //               'x ${workout.reps}',
    //               style: Theme.of(context)
    //                   .textTheme
    //                   .headline3
    //                   ?.copyWith(color: Colors.black),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
