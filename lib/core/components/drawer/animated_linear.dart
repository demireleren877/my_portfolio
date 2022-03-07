import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../colors/colors.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.codingSkills,
    required this.index,
  }) : super(key: key);

  final Map<String, dynamic> codingSkills;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TweenAnimationBuilder(
        tween: Tween<double>(
          begin: 0,
          end: codingSkills.entries.elementAt(index).value,
        ),
        duration: const Duration(milliseconds: 500),
        builder: (context, double value, child) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    codingSkills.keys.elementAt(index),
                    style: context.textTheme.subtitle1,
                  ),
                  Text(
                    '${(value * 100).toInt()}%',
                    style: context.textTheme.subtitle1
                        ?.copyWith(color: AppColors.primaryDark),
                  ),
                ],
              ),
              context.emptySizedHeightBoxLow,
              LinearProgressIndicator(
                value: value,
                color: AppColors.primary,
              ),
            ],
          );
        },
      ),
    );
  }
}
