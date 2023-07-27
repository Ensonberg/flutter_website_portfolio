import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_website/model/project_model.dart';

import 'package:my_portfolio_website/widgets/skill_card.dart';
import 'package:my_portfolio_website/widgets/text_view.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../main.dart';
import '../../route/routes.dart';
import '../../style/app_colors.dart';
import '../../util/constants.dart';
import '../../widgets/desktop_body.dart';
import '../../widgets/footer.dart';
import '../../widgets/project_card.dart';

class HomeDesktopWidget extends StatefulWidget {
  const HomeDesktopWidget({Key? key}) : super(key: key);

  @override
  State<HomeDesktopWidget> createState() => _HomeDesktopWidgetState();
}

class _HomeDesktopWidgetState extends State<HomeDesktopWidget> {
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
    return DesktopBodyWidget(
        contents: Column(
      children: [
        const SizedBox(
          height: 62,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: mediaQuery.width * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Enson is a ',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: GoogleFonts.firaCode().fontFamily,
                          fontWeight: FontWeight.w600,
                          fontSize: 32),
                      children: [
                        TextSpan(
                          text: 'Mobile App Developer',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w600,
                              fontFamily: GoogleFonts.firaCode().fontFamily,
                              fontSize: 32),
                        ),
                        TextSpan(
                          text: ' and',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: GoogleFonts.firaCode().fontFamily,
                              fontSize: 32),
                        ),
                        TextSpan(
                          text: ' Cloud DevOps Engineer',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontFamily: GoogleFonts.firaCode().fontFamily,
                              fontWeight: FontWeight.w600,
                              fontSize: 32),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    width: mediaQuery.width * 0.4,
                    child: const TextView(
                      text:
                          'He crafts astonishing and world changing mobile application that run on iOS, Android and Web',
                      fontWeight: FontWeight.w400,
                      height: 2,
                      size: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      sendEmail();
                    },
                    hoverColor: Theme.of(context).primaryColor,
                    child: Container(
                      width: 148,
                      height: 37,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.50, color: Color(0xFFC778DD)),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Contact me!!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Fira Code',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: mediaQuery.width * 0.1,
            ),
            SizedBox(
              height: mediaQuery.height * 0.44,
              width: mediaQuery.width * 0.3,
              child: Stack(
                children: [
                  Positioned(
                      top: 84, child: SvgPicture.asset("assets/Logo.svg")),
                  Image.asset(
                    "assets/image.png",
                    fit: BoxFit.cover,
                    width: mediaQuery.width * 0.26,
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
                      width: mediaQuery.width * 0.3,
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
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                text: 'Currently working on',
                                style: TextStyle(
                                    color: AppColors.gray,
                                    fontFamily:
                                        GoogleFonts.firaCode().fontFamily,
                                    fontWeight: FontWeight.w500,
                                    fontSize: mediaQuery.width * 0.012),
                                children: [
                                  TextSpan(
                                    text: ' DeySpeak',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontFamily:
                                            GoogleFonts.firaCode().fontFamily,
                                        fontSize: mediaQuery.width * 0.012),
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
          ],
        ),
        const SizedBox(
          height: 112,
        ),
        SizedBox(
          width: mediaQuery.width * 0.8,
          height: 150,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: 30,
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
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
                bottom: 0,
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
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
                              fontFamily: GoogleFonts.firaCode().fontFamily,
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

              // SizedBox(
              //   width: mediaQuery.width * 0.25,
              // ),
              RawMaterialButton(
                onPressed: () {
                  context.goNamed(Routes.PROJECTS);
                },
                hoverColor: Theme.of(context).primaryColor,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextView(
                    text: 'View all ~~>',
                    size: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 48,
        ),
        SizedBox(
          //  height: 500,
          width: mediaQuery.width * 0.8,
          child: ResponsiveGridList(
            horizontalGridSpacing: 0, // Horizontal space between grid items
            verticalGridSpacing: 0, // Vertical space between grid items
            horizontalGridMargin: 0, // Horizontal space around the grid
            verticalGridMargin: 0, // Vertical space around the grid
            minItemWidth:
                300, // The minimum item width (can be smaller, if the layout constraints are smaller)
            minItemsPerRow:
                1, // The minimum items to show in a single row. Takes precedence over minItemWidth
            maxItemsPerRow:
                5, // The maximum items to show in a single row. Can be useful on large screens
            listViewBuilderOptions: ListViewBuilderOptions(
                shrinkWrap: true,
                physics:
                    const NeverScrollableScrollPhysics()), // Options that are getting passed to the ListView.builder() function
            children: List.generate(4, (index) {
              ProjectModel project = mobileAppProjects[index];
              return ProjectCard(
                projectModel: project,
              );
            }), // The list of widgets in the list
          ),
        ),
        const SizedBox(
          height: 106,
        ),
        SizedBox(
          width: mediaQuery.width * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
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
                      SizedBox(
                        width: 0,
                      ),
                      // Container(
                      //   color: AppColors.primary,
                      //   height: 1,
                      //   width: mediaQuery.width * 0.2,
                      // ),
                    ],
                  ),
                  if (mediaQuery.width >= 1000)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        "assets/skill-bg.svg",
                        width: mediaQuery.width * 0.18,
                        fit: BoxFit.cover,
                      ),
                    )
                ],
              ),
              SizedBox(
                width: mediaQuery.width * 0.05,
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
              )
            ],
          ),
        ),
        SizedBox(
          height: 112,
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
                                  fontFamily: GoogleFonts.firaCode().fontFamily,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 32),
                              children: [
                                TextSpan(
                                  text: 'about-me',
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
                    width: mediaQuery.width * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          aboutMeShort,
                          style: TextStyle(
                            color: Color(0xFFABB2BF),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 27,
                        ),
                        RawMaterialButton(
                          hoverColor: Theme.of(context).primaryColor,
                          onPressed: () {
                            context.goNamed(Routes.ABOUTME);
                          },
                          child: Container(
                            //width: 148,
                            height: 37,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Color(0xFFC778DD)),
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
                  Flexible(child: Image.asset("assets/profile_image_2.png"))
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 113,
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
                            fontFamily: GoogleFonts.firaCode().fontFamily,
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
                alignment: WrapAlignment.spaceBetween,
                runAlignment: WrapAlignment.center,
                runSpacing: 16,
                children: [
                  const SizedBox(
                    width: 505,
                    child: Text(
                      'I’m interested in freelance opportunities. However, if you have other request or question, don’t hesitate to contact me',
                      style: TextStyle(
                        color: Color(0xFFABB2BF),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50, color: Color(0xFFABB2BF)),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RawMaterialButton(
                                hoverColor: Theme.of(context).primaryColor,
                                onPressed: () {
                                  launchWhatsapp();
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/whatsapp.svg",
                                      height: 32,
                                      width: 32,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '+2347066790766',
                                      style: TextStyle(
                                        color: Color(0xFFABB2BF),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              RawMaterialButton(
                                hoverColor: Theme.of(context).primaryColor,
                                onPressed: () {
                                  launchDiscord();
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("assets/Discord.svg"),
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
                                hoverColor: Theme.of(context).primaryColor,
                                onPressed: () {
                                  sendEmail();
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("assets/Email.svg"),
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
        const SizedBox(
          height: 145,
        ),
      ],
    ));
  }
}
