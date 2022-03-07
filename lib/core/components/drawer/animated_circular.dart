import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/colors/colors.dart';
import '../../../core/data/personal_data.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        context.emptySizedHeightBoxLow,
        TweenAnimationBuilder(
          tween: Tween<double>(
            begin: 0,
            end: PersonalData.skills[index].skillPercent,
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
          PersonalData.skills[index].skillName,
          style: context.textTheme.subtitle1,
        ),
      ],
    );
  }
}
