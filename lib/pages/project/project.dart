import 'package:flutter/material.dart';
import 'package:my_portfolio_website/pages/home/home_mobile.dart';
import 'package:my_portfolio_website/pages/home/home_desktop.dart';
import 'package:my_portfolio_website/pages/project/project_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'project_desktop.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints:
          const ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      mobile: (_) => OrientationLayoutBuilder(
        portrait: (context) => const ProjectMobile(),
        landscape: (context) => const ProjectMobile(),
      ),
      tablet: (_) => const ProjectDesktop(),
      desktop: (_) => const ProjectDesktop(),
    );
  }
}
