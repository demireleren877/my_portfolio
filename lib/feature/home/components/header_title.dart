import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome to My \nCareer Page 👋',
      style: context.textTheme.headline3?.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
