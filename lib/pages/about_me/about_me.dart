import 'package:flutter/material.dart';
import 'package:my_portfolio_website/pages/about_me/about_me_mobile.dart';
import 'package:my_portfolio_website/pages/home/home_mobile.dart';
import 'package:my_portfolio_website/pages/home/home_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'about_me_desktop.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints:
          const ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      mobile: (_) => OrientationLayoutBuilder(
        portrait: (context) => const AboutMeMobile(),
        landscape: (context) => const AboutMeMobile(),
      ),
      tablet: (_) => const AboutMeDesktop(),
      desktop: (_) => const AboutMeDesktop(),
    );
  }
}
