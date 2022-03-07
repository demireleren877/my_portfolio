import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/paths/icon_paths.dart';
import '../../../core/services/responsive.dart';

class ContactmeButton extends StatelessWidget {
  const ContactmeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: Responsive.isDesktop(context),
      child: SizedBox(
        height: context.dynamicHeight(0.06),
        width: context.dynamicWidth(0.25),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: SocialIcons.allIcons.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: context.paddingLow,
              child: SocialIcons.allIcons[index],
            );
          },
        ),
      ),
    );
  }
}
