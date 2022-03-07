import 'package:flutter/material.dart';

import '../../../core/data/personal_data.dart';
import 'animated_linear.dart';

class CodingSkills extends StatelessWidget {
  const CodingSkills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: PersonalData.codingSkills.length,
      itemBuilder: (BuildContext context, int index) {
        return AnimatedLinearProgressIndicator(
          index: index,
        );
      },
    );
  }
}
