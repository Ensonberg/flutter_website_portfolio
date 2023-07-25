import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'mobile_drawer.dart';

class MobileBody extends StatelessWidget {
  final Widget child;
  const MobileBody({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset("assets/menu_drawer.svg"),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Row(
          children: [
            SvgPicture.asset("assets/brand.svg"),
            SizedBox(
              width: 8,
            ),
            const Text(
              'Enson',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
      endDrawer: const MobileDrawer(),
      body: child,
    );
  }
}
