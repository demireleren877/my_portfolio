import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:kartal/kartal.dart';

import '../../../core/services/responsive.dart';

class AnimatedTexts extends StatelessWidget {
  const AnimatedTexts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: context.textTheme.headline6!.copyWith(
        color: Colors.white,
      ),
      child: SizedBox(
        width: Responsive.isMobile(context)
            ? context.dynamicWidth(0.8)
            : context.dynamicWidth(0.3),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText(
              'I build responsive web and mobile apps.',
            ),
            TyperAnimatedText(
              'I build cross platform apps with Flutter.',
            ),
          ],
        ),
      ),
    );
  }
}
