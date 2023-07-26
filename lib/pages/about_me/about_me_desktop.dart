import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio_website/util/constants.dart';
import 'package:my_portfolio_website/widgets/skill_card.dart';
import 'package:my_portfolio_website/widgets/desktop_body.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.maybeOf(context)!.size;
    return DesktopBodyWidget(
        contents: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 53,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '/',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'about-me',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 14,
        ),
        const Text(
          'Who am i?',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 112,
        ),
        SizedBox(
          width: mediaQuery.width * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: SizedBox(
                  child: Text(
                    aboutMeFull,
                    style: const TextStyle(
                      color: Color(0xFFABB2BF),
                      fontSize: 16,
                      height: 2.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Flexible(child: Image.asset("assets/profile_image_2.png"))
            ],
          ),
        ),
        const SizedBox(
          height: 112,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '#',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              'skills',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 48,
        ),
        SizedBox(
          width: mediaQuery.width * 0.8,
          child: ResponsiveGridList(
              // Vertical space around the grid
              minItemWidth:
                  300, // The minimum item width (can be smaller, if the layout constraints are smaller)
              minItemsPerRow:
                  2, // The minimum items to show in a single row. Takes precedence over minItemWidth
              maxItemsPerRow:
                  5, // The maximum items to show in a single row. Can be useful on large screens
              listViewBuilderOptions: ListViewBuilderOptions(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics()),
              // Options that are getting passed to the ListView.builder() function
              children: skills
                  .map((skillModel) => SkillCard(skillModel: skillModel))
                  .toList() // The list of widgets in the list
              ),
        ),
        const SizedBox(
          height: 83,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '#',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              'my-fun-facts',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 34,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: mediaQuery.width < 800
                  ? mediaQuery.width * 0.8
                  : mediaQuery.width * 0.6,
              child: ResponsiveGridList(
                  // Vertical space around the grid
                  minItemWidth: mediaQuery.width < 800
                      ? 400
                      : 430, // The minimum item width (can be smaller, if the layout constraints are smaller)
                  minItemsPerRow:
                      1, // The minimum items to show in a single row. Takes precedence over minItemWidth
                  maxItemsPerRow:
                      4, // The maximum items to show in a single row. Can be useful on large screens
                  listViewBuilderOptions: ListViewBuilderOptions(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics()),
                  // Options that are getting passed to the ListView.builder() function
                  children: funFacts
                      .map((fact) => Container(
                            // height: 37,
                            padding: const EdgeInsets.all(8),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Color(0xFFABB2BF)),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  fact,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Color(0xFFABB2BF),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ))
                      .toList() // The list of widgets in the list
                  ),
            ),
            if (mediaQuery.width > 800)
              SizedBox(
                width: mediaQuery.width * 0.1,
              ),
            if (mediaQuery.width > 800) SvgPicture.asset("assets/funtacts.svg")
          ],
        ),
      ],
    ));
  }
}
