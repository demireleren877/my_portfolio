import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:kartal/kartal.dart';

import '../../../core/services/responsive.dart';

class AnimatedTexts extends StatelessWidget {
  const AnimatedTexts({
    Key? key,
    required this.snapshot,
  }) : super(key: key);

  final AsyncSnapshot<QuerySnapshot<Object?>> snapshot;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: context.textTheme.titleLarge!.copyWith(
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
              snapshot.data!.docs[0]["animatedTexts"][0],
            ),
            TyperAnimatedText(
              snapshot.data!.docs[0]["animatedTexts"][1],
            ),
          ],
        ),
      ),
    );
  }
}
