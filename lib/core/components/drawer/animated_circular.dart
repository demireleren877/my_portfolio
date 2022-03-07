import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/colors/colors.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.skills,
    required this.index,
  }) : super(key: key);

  final Map<String, dynamic> skills;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        context.emptySizedHeightBoxLow,
        TweenAnimationBuilder(
          tween: Tween<double>(
            begin: 0,
            end: skills.entries.elementAt(index).value,
          ),
          duration: const Duration(milliseconds: 500),
          builder: (context, double value, child) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    constraints: const BoxConstraints(
                      minHeight: 70,
                      minWidth: 70,
                    ),
                    height: context.dynamicHeight(0.09),
                    width: context.dynamicHeight(0.09),
                    child: CircularProgressIndicator(
                      value: value,
                      color: AppColors.primary,
                      backgroundColor: AppColors.primaryDark,
                    ),
                  ),
                  Text(
                    '${(value * 100).toInt()}%',
                    style: context.textTheme.subtitle1,
                  ),
                ],
              ),
            );
          },
        ),
        context.emptySizedHeightBoxLow3x,
        Text(
          skills.keys.elementAt(index),
          style: context.textTheme.subtitle1,
        ),
      ],
    );
  }
}
