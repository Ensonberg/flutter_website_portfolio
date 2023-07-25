import 'package:flutter/material.dart';
import 'package:my_portfolio_website/pages/home/home_mobile.dart';
import 'package:my_portfolio_website/pages/home/home_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'contacts_desktop.dart';



class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints:
      const ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      mobile: (_) => OrientationLayoutBuilder(
        portrait: (context) =>  Container(),
        landscape: (context) => Container(),
      ),
      tablet: (_) => const  ContactsDesktop(),
      desktop: (_) => const ContactsDesktop(),
    );
  }
}
