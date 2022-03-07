import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/data/personal_data.dart';
import 'personal_info_text.dart';

class PersonalInfoContainer extends StatelessWidget {
  const PersonalInfoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: PersonalData.personalInfos.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: context.paddingLow,
          child: PersonalInfoText(
            text: PersonalData.personalInfos.keys.elementAt(index),
            answer: PersonalData.personalInfos.entries.elementAt(index).value,
          ),
        );
      },
    );
  }
}
