import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../provider/header_provider.dart';
import '../route/routes.dart';
import '../style/app_colors.dart';

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
              index: 0,
              routeName: Routes.HOME,
            ),
            MenuItem(title: "works", index: 1, routeName: Routes.PROJECTS),
            MenuItem(title: "about-me", index: 2, routeName: Routes.ABOUTME),
            MenuItem(title: "contacts", index: 3, routeName: Routes.CONTACTME)
          ],
        ),
      ),
    );
  }
}

class MenuItem extends ConsumerWidget {
  final String title;
  final int index;
  final String routeName;

  const MenuItem(
      {Key? key,
      required this.title,
      required this.index,
      required this.routeName,
      x})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(headerProvider);
    return RawMaterialButton(
      hoverColor: Theme.of(context).scaffoldBackgroundColor,
      onPressed: () {
        context.goNamed(routeName);
        provider.changePage(index);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '#',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 32,
                fontWeight: provider.currentIndex == index
                    ? FontWeight.w500
                    : FontWeight.w400,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: provider.currentIndex == index
                    ? Colors.white
                    : AppColors.gray,
                fontSize: 32,
                fontWeight: provider.currentIndex == index
                    ? FontWeight.w500
                    : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
