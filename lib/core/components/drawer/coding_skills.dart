import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'animated_linear.dart';

class CodingSkills extends StatelessWidget {
  const CodingSkills({
    Key? key,
    required this.codingSkills,
  }) : super(key: key);
  final Map<String, dynamic> codingSkills;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: context.horizontalPaddingLow,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: codingSkills.length,
      itemBuilder: (BuildContext context, int index) {
        return AnimatedLinearProgressIndicator(
          codingSkills: codingSkills,
          index: index,
        );
      },
    );
  }
}
