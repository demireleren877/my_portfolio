import 'package:flutter/material.dart';

import 'package:kartal/kartal.dart';

import '../../../core/services/responsive.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !Responsive.isMobile(context),
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 200,
        ),
        height: context.dynamicHeight(0.35),
        child: Image.network(
          'https://asciitechsolution.com/assets/images/mobileapplication/iphone-app-development.svg',
        ),
      ),
    );
  }
}
