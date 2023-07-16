import 'package:flutter/material.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return SizedBox(
      // height: mediaQuery.height * 0.4,
      width: mediaQuery.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 55, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            MenuItem(
              title: "home",
            ),
            MenuItem(
              title: "works",
            ),
            MenuItem(
              title: "about-me",
            ),
            MenuItem(
              title: "contacts",
            )
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatefulWidget {
  final String title;

  const MenuItem({Key? key, required this.title}) : super(key: key);

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '#',
            style: TextStyle(
              color: Color(0xFFC778DD),
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            widget.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
