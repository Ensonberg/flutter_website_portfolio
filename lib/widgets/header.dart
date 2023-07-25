import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio_website/provider/header_provider.dart';

import '../route/routes.dart';
import '../style/app_colors.dart';

class Header extends ConsumerWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var mediaQuery = MediaQuery.of(context).size;
    final provider = ref.watch(headerProvider);
    return Row(
      children: [
        const NavItem(
          title: 'home',
          routeName: Routes.HOME,
          index: 0,
        ),
        SizedBox(
          width: mediaQuery.width * 0.03,
        ),
        const NavItem(
          title: 'works',
          routeName: Routes.PROJECTS,
          index: 1,
        ),

        SizedBox(
          width: mediaQuery.width * 0.03,
        ),
        const NavItem(
          title: 'about-me',
          routeName: Routes.ABOUTME,
          index: 2,
        ),
        SizedBox(
          width: mediaQuery.width * 0.03,
        ),
        const NavItem(
          title: 'contacts',
          routeName: Routes.CONTACTME,
          index: 3,
        ),
        // SizedBox(
        //   width: mediaQuery.width * 0.03,
        // )
      ],
    );
  }
}

class NavItem extends ConsumerWidget {
  final String title;
  final String routeName;
  final int index;
  const NavItem({
    super.key,
    required this.title,
    required this.routeName,
    required this.index,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(headerProvider);
    return RawMaterialButton(
      hoverColor: Theme.of(context).primaryColor,
      onPressed: () {
        context.goNamed(routeName);
        provider.changePage(index);
      },
      child: RichText(
        text: TextSpan(
          text: '#',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: provider.currentIndex == index
                  ? FontWeight.w500
                  : FontWeight.w400,
              fontSize: 16),
          children: [
            TextSpan(
              text: title,
              style: TextStyle(
                  color: provider.currentIndex == index
                      ? Colors.white
                      : AppColors.gray,
                  fontWeight: provider.currentIndex == index
                      ? FontWeight.w500
                      : FontWeight.w400,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
