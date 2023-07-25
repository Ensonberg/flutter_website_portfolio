import 'package:flutter/material.dart';
import 'package:my_portfolio_website/widgets/mobile_body.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../home/widgets/skill_card.dart';

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
            const SizedBox(
              child: Text(
                'Hello, i’m Enson!\n\nI am Self-taught Mobile App developer based in Akure Nigeria. Proven ability to design, develop, and deliver high-quality, cross-platform mobile apps using Flutter. Expertise in all phases of the mobile app development lifecycle, from ideation to deployment. Strong problem-solving and analytical skills. Ability to work independently and as part of a team. \n\nI am confident that my skills and experience would be a valuable asset to your team. I am a highly motivated and results-oriented individual with a passion for mobile app development. I am eager to learn new technologies and am always looking for ways to improve my skills. I am confident that I can make a significant contribution to your company. ',
                style: TextStyle(
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
              children: const [
                SkillCard(
                  skillTitle: 'Languages',
                  skillList: [
                    "Dart",
                    "Java",
                    "Kotlin",
                    "Swift",
                    "JavaScript",
                  ],
                ),
                SkillCard(
                  skillTitle: 'Frameworks',
                  skillList: [
                    "Flutter",
                    "JetPack Compose",
                    "Swift UI",
                  ],
                ),
                SkillCard(
                  skillTitle: 'Tools',
                  skillList: [
                    "Android Studio",
                    "XCode",
                    "VSCode",
                    "Git",
                    "Linux",
                    "Figma",
                    // "Flutter Flow",
                  ],
                ),
                SkillCard(
                  skillTitle: 'Databases',
                  skillList: [
                    "Firestore",
                    "SQLite",
                    "Mongo db",
                    "Cockroach db",
                  ],
                ),
                SkillCard(
                  skillTitle: 'Others',
                  skillList: [
                    "CIRCLE CI",
                    "AWS",
                    "GCLOUD",
                    "YAML",
                    "XML",
                    "HTML",
                    "CSS",
                  ],
                ),
              ], // The list of widgets in the list
            ),
          ],
        ),
      ),
    ));
  }
}
