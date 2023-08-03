import 'package:flutter/material.dart';

import 'package:kartal/kartal.dart';

import 'animated_circular.dart';

class SkillsList extends StatelessWidget {
  const SkillsList({
    Key? key,
    required this.skills,
  }) : super(key: key);

  final Map<String, dynamic> skills;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 120,
      ),
      height: context.dynamicHeight(0.18),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: skills.length,
        itemBuilder: (BuildContext context, int index) {
          return AnimatedCircularProgressIndicator(
            skills: skills,
            index: index,
          );
        },
      ),
    );
  }
}
