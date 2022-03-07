import 'package:flutter/material.dart';

import 'package:kartal/kartal.dart';

import '../../../core/data/personal_data.dart';
import 'animated_circular.dart';

class SkillsList extends StatelessWidget {
  const SkillsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 120,
      ),
      height: context.dynamicHeight(0.15),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: PersonalData.skills.length,
        itemBuilder: (BuildContext context, int index) {
          return AnimatedCircularProgressIndicator(
            index: index,
          );
        },
      ),
    );
  }
}
