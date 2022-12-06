import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:workoutplanner/utils/dimensions.dart';

class GlassmorphedContainer extends StatelessWidget {
  const GlassmorphedContainer({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Dimensions.borderRadiusControllers),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 1,
          sigmaY: 1,
        ),
        child: Container(
          padding: EdgeInsets.all(Dimensions.cardMediumSpacing),
          decoration: BoxDecoration(
              color: myColor.withOpacity(0.2),
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              border: Border.all(
                width: Dimensions.borderWidth,
                color: myColor.withOpacity(0.2),
              )),
          child: child,
        ),
      ),
    );
  }
}

const myColor = Colors.blue;
