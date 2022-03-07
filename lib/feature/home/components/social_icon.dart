import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({Key? key, required this.url, required this.icon})
      : super(key: key);
  final String url;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 1,
      iconSize: 30.sp,
      onPressed: () {
        launch(url);
      },
      icon: FaIcon(
        icon,
      ),
    );
  }
}
