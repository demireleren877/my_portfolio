import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:kartal/kartal.dart';
import 'package:my_portfolio/core/components/drawer/personal_info_container.dart';

import '../../../core/services/responsive.dart';
import 'animated_texts.dart';
import 'contact_button.dart';
import 'header_image.dart';
import 'header_title.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    Key? key,
    required this.snapshot,
  }) : super(key: key);
  final AsyncSnapshot<QuerySnapshot<Object?>> snapshot;

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
          SizedBox(
            width: context.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderTitle(snapshot: snapshot),
                    context.emptySizedHeightBoxLow3x,
                    AnimatedTexts(snapshot: snapshot),
                    context.emptySizedHeightBoxLow3x,
                    const ContactmeButton(),
                  ],
                ),
                HeaderImage(snapshot: snapshot),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
