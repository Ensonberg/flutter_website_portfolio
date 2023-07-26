import 'package:flutter/material.dart';
import 'package:my_portfolio_website/util/constants.dart';
import 'package:my_portfolio_website/widgets/footer.dart';
import 'package:my_portfolio_website/widgets/mobile_body.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../widgets/skill_card.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.maybeOf(context)!.size;
    return MobileBody(
        child: Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 42,
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
            Center(child: Image.asset("assets/profile_image_2.png")),
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
            ResponsiveGridList(
              // Vertical space around the grid
              minItemWidth:
                  300, // The minimum item width (can be smaller, if the layout constraints are smaller)
              minItemsPerRow:
                  1, // The minimum items to show in a single row. Takes precedence over minItemWidth
              maxItemsPerRow:
                  1, // The maximum items to show in a single row. Can be useful on large screens
              listViewBuilderOptions: ListViewBuilderOptions(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics()),
              // Options that are getting passed to the ListView.builder() function
              children: skills
                  .map((skillModel) => SkillCard(skillModel: skillModel))
                  .toList(), // The list of widgets in the list
            ),
            SizedBox(
              height: 48,
            ),
            ListView.builder(
                itemCount: funFacts.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Container(
                      // height: 37,
                      padding: const EdgeInsets.all(8),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.50, color: Color(0xFFABB2BF)),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            funFacts[index],
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color(0xFFABB2BF),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            Footer(),
          ],
        ),
      ),
    ));
  }
}
