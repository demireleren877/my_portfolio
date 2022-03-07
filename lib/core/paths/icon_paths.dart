import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../feature/home/components/social_icon.dart';

class SocialIcons {
  static List<SocialIcon> allIcons = [
    const SocialIcon(
      url: 'https://twitter.com/demireleren877',
      icon: FontAwesomeIcons.twitter,
    ),
    const SocialIcon(
      url: 'https://www.instagram.com/demireleren877/?hl=tr',
      icon: FontAwesomeIcons.instagram,
    ),
    const SocialIcon(
      url: 'https://www.linkedin.com/in/eren-demirel-676aba1b5/',
      icon: FontAwesomeIcons.linkedin,
    ),
    const SocialIcon(
      url: 'https://github.com/demireleren877',
      icon: FontAwesomeIcons.github,
    )
  ];
}
