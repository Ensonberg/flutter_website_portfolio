import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_website/widgets/footer.dart';
import 'package:my_portfolio_website/widgets/skill_card.dart';
import 'package:my_portfolio_website/widgets/mobile_body.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';
import '../../model/project_model.dart';
import '../../style/app_colors.dart';
import '../../util/constants.dart';
import '../../widgets/text_view.dart';
import '../../widgets/mobile_drawer.dart';
import '../../widgets/project_card.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  late ScrollController _scrollController;
  @override
  void initState() {
    // initialize scroll controllers
    _scrollController = ScrollController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return MobileBody(
        child: SingleChildScrollView(
      controller: _scrollController,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              children: [
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Enson is a ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: 'Mobile Developer',
                        style: TextStyle(
                          color: Color(0xFFC778DD),
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: 'DevOps Engineer',
                        style: TextStyle(
                          color: Color(0xFFC778DD),
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'He crafts astonishing and world changing mobile application that run on iOS, Android and Web',
                  style: TextStyle(
                    color: Color(0xFFABB2BF),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: mediaQuery.height * 0.44,
                  width: mediaQuery.width * 0.8,
                  child: Stack(
                    children: [
                      Positioned(
                          top: 84, child: SvgPicture.asset("assets/Logo.svg")),
                      Image.asset(
                        "assets/image.png",
                        fit: BoxFit.fill,
                        width: mediaQuery.width * 0.8,
                        height: mediaQuery.height * 0.4,
                      ),
                      Positioned(
                          right: 0,
                          bottom: 56,
                          child: SvgPicture.asset(
                            "assets/Dots.svg",
                            height: 84,
                            width: mediaQuery.width * 0.2,
                          )),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          //height: 37,
                          width: mediaQuery.width * 0.8,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.primary)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                    height: 16,
                                    width: 16,
                                    color: AppColors.primary),
                                const SizedBox(
                                  width: 10,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: 'Currently working on',
                                    style: TextStyle(
                                        color: AppColors.gray,
                                        fontFamily:
                                            GoogleFonts.firaCode().fontFamily,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                    children: [
                                      TextSpan(
                                        text: ' DeySpeak',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: GoogleFonts.firaCode()
                                                .fontFamily,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: mediaQuery.width * 0.8,
                  height: 182,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 30,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white)),
                          child: const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: TextView(
                              text: "Do hard things by solving big problems",
                              fontWeight: FontWeight.w500,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 10,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white)),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: TextView(
                              text: "- Fred Swaniker",
                              fontWeight: FontWeight.w500,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        left: 8,
                        child: Container(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            height: 42,
                            width: 29,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset("assets/quote.svg"),
                            )),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 40,
                        child: Container(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            height: 42,
                            width: 29,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset("assets/quote.svg"),
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 74,
                ),
                SizedBox(
                  width: mediaQuery.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: '#',
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontFamily: GoogleFonts.firaCode().fontFamily,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 32),
                              children: [
                                TextSpan(
                                  text: 'projects',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily:
                                          GoogleFonts.firaCode().fontFamily,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 32),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 0,
                          ),
                          Container(
                            color: AppColors.primary,
                            height: 1,
                            width: mediaQuery.width * 0.1,
                          ),
                        ],
                      ),

                      // SizedBox(
                      //   width: mediaQuery.width * 0.25,
                      // ),
                      const TextView(
                        text: 'View all ~~>',
                        size: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, index) {
                      ProjectModel project = mobileAppProjects[index];
                      return ProjectCard(
                        projectModel: project,
                      );
                    }),
                const SizedBox(
                  height: 48,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '#',
                        style: TextStyle(
                            color: AppColors.primary,
                            fontFamily: GoogleFonts.firaCode().fontFamily,
                            fontWeight: FontWeight.w500,
                            fontSize: 32),
                        children: [
                          TextSpan(
                            text: 'skills',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: GoogleFonts.firaCode().fontFamily,
                                fontWeight: FontWeight.w500,
                                fontSize: 32),
                          ),
                        ],
                      ),
                    ),

                    // Container(
                    //   color: AppColors.primary,
                    //   height: 1,
                    //   width: mediaQuery.width * 0.2,
                    // ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: mediaQuery.width * 0.54,
                  child: Wrap(
                    //verticalDirection: VerticalDirection.up,
                    alignment: WrapAlignment.spaceAround,
                    children: [
                      SkillCard(
                        skillModel: skills[0],
                      ),
                      Column(
                        children: [
                          SkillCard(
                            skillModel: skills[1],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          SkillCard(
                            skillModel: skills[2],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SkillCard(
                            skillModel: skills[3],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          SkillCard(
                            skillModel: skills[4],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                SizedBox(
                  width: mediaQuery.width * 0.8,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: '#',
                                      style: TextStyle(
                                          color: AppColors.primary,
                                          fontFamily:
                                              GoogleFonts.firaCode().fontFamily,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 32),
                                      children: [
                                        TextSpan(
                                          text: 'about-me',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: GoogleFonts.firaCode()
                                                  .fontFamily,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 32),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0,
                                  ),
                                  Container(
                                    color: AppColors.primary,
                                    height: 1,
                                    width: mediaQuery.width * 0.1,
                                  ),
                                ],
                              ),
                            ],
                          ),

                          // SizedBox(
                          //   width: mediaQuery.width * 0.25,
                          // ),
                          const TextView(
                            text: 'View all ~~>',
                            size: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: mediaQuery.width * 0.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Hello, i’m Enson!\n\nI am Self-taught Mobile App developer based in Akure Nigeria. Proven ability to design, develop, and deliver high-quality, cross-platform mobile apps using Flutter. Expertise in all phases of the mobile app development lifecycle, from ideation to deployment. Strong problem-solving and analytical skills. Ability to work independently and as part of a team.',
                                  style: TextStyle(
                                    color: Color(0xFFABB2BF),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 27,
                                ),
                                RawMaterialButton(
                                  hoverColor: Theme.of(context).primaryColor,
                                  onPressed: () {},
                                  child: Container(
                                    //width: 148,
                                    height: 37,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                    decoration: const ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.50,
                                            color: Color(0xFFC778DD)),
                                      ),
                                    ),
                                    child: const Text(
                                      'Read more ->',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                Column(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: '#',
                            style: TextStyle(
                                color: AppColors.primary,
                                fontFamily: GoogleFonts.firaCode().fontFamily,
                                fontWeight: FontWeight.w500,
                                fontSize: 32),
                            children: [
                              TextSpan(
                                text: 'contacts',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily:
                                        GoogleFonts.firaCode().fontFamily,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 32),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 0,
                        ),
                        Container(
                          color: AppColors.primary,
                          height: 1,
                          width: mediaQuery.width * 0.3,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    SizedBox(
                      width: mediaQuery.width * 0.8,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Text(
                            'I’m interested in freelance opportunities. However, if you have other request or question, don’t hesitate to contact me',
                            style: TextStyle(
                              color: Color(0xFFABB2BF),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: mediaQuery.width,
                            // padding: const EdgeInsets.all(16),
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Color(0xFFABB2BF)),
                              ),
                            ),
                            child: Column(
                              children: [
                                const Text(
                                  'Message me here',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RawMaterialButton(
                                        hoverColor:
                                            Theme.of(context).primaryColor,
                                        onPressed: () {
                                          _launchDiscord();
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                                "assets/Discord.svg"),
                                            Text(
                                              'ensonberg',
                                              style: TextStyle(
                                                color: Color(0xFFABB2BF),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      RawMaterialButton(
                                        hoverColor:
                                            Theme.of(context).primaryColor,
                                        onPressed: () {
                                          sendEmail();
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                                "assets/Email.svg"),
                                            const Text(
                                              'edirinmuogho@gmail.com',
                                              style: TextStyle(
                                                color: Color(0xFFABB2BF),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Footer(),
          ],
        ),
      ),
    ));
  }

  Future<void> _launchDiscord() async {
    if (!await launchUrl(
        Uri.parse("https://discordapp.com/channels/@me/ensonberg/"))) {
      throw Exception('Could not launch ');
    }
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  void sendEmail() {
    final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: 'edirinmuogho@gmail.com',
        query: encodeQueryParameters(<String, String>{
          'subject': '',
        }));
    launchUrl(emailLaunchUri);
  }
}
