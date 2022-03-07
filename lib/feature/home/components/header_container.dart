import 'package:flutter/material.dart';

import 'package:kartal/kartal.dart';

import '../../../core/services/responsive.dart';
import 'animated_texts.dart';
import 'contact_button.dart';
import 'header_image.dart';
import 'header_title.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 250),
      height: () {
        if (!Responsive.isMobile(context)) {
          return context.dynamicHeight(0.45);
        } else {
          return context.dynamicHeight(0.36);
        }
      }(),
      width: context.width,
      padding: context.paddingMedium,
      color: Colors.black12.withOpacity(0.15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderTitle(),
                  context.emptySizedHeightBoxLow3x,
                  const AnimatedTexts(),
                  context.emptySizedHeightBoxLow3x,
                  const ContactmeButton(),
                ],
              ),
              const HeaderImage(),
            ],
          ),
        ],
      ),
    );
  }
}
