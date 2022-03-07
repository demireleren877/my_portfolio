import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'personal_info_text.dart';

class PersonalInfoContainer extends StatelessWidget {
  const PersonalInfoContainer({
    Key? key,
    required this.personalInfoArea,
  }) : super(key: key);

  final Map<String, dynamic> personalInfoArea;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: personalInfoArea.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: context.paddingLow,
          child: PersonalInfoText(
            text: personalInfoArea.keys.elementAt(index),
            answer: personalInfoArea.entries.elementAt(index).value,
          ),
        );
      },
    );
  }
}
