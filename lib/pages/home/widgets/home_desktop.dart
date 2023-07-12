import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_website/widgets/text_view.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

import '../../../style/app_colors.dart';

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
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        controller: _scrollController,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 191,
                  width: 1,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 8,
                ),
                SvgPicture.asset(
                  "assets/Github.svg",
                  height: 32,
                  fit: BoxFit.cover,
                  width: 32,
                )
              ],
            ),
            // SizedBox(
            //   width: mediaQuery.width * 0.05,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: mediaQuery.width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/brand.svg"),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Enson",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: '#',
                                style: const TextStyle(
                                    color: AppColors.gray,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                                children: [
                                  TextSpan(
                                    text: 'Home',
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: mediaQuery.width * 0.03,
                            ),
                            RichText(
                              text: TextSpan(
                                text: '#',
                                style: const TextStyle(
                                    color: AppColors.gray,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                                children: [
                                  TextSpan(
                                    text: 'Work',
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: mediaQuery.width * 0.03,
                            ),
                            RichText(
                              text: TextSpan(
                                text: '#',
                                style: const TextStyle(
                                    color: AppColors.gray,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                                children: [
                                  TextSpan(
                                    text: 'about-me',
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: mediaQuery.width * 0.03,
                            ),
                            RichText(
                              text: TextSpan(
                                text: '#',
                                style: const TextStyle(
                                    color: AppColors.gray,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                                children: [
                                  TextSpan(
                                    text: 'contacts',
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   width: mediaQuery.width * 0.03,
                            // )
                          ],
                        )
                      ],
                    ),
                  ),
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
                                    fontFamily:
                                        GoogleFonts.firaCode().fontFamily,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 32),
                                children: [
                                  TextSpan(
                                    text: 'Mobile App Developer',
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w600,
                                        fontFamily:
                                            GoogleFonts.firaCode().fontFamily,
                                        fontSize: 32),
                                  ),
                                  TextSpan(
                                    text: ' and',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontFamily:
                                            GoogleFonts.firaCode().fontFamily,
                                        fontSize: 32),
                                  ),
                                  TextSpan(
                                    text: ' Cloud DevOps Engineer',
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontFamily:
                                            GoogleFonts.firaCode().fontFamily,
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
                                    'He crafts responsive websites where technologies meet creativity',
                                fontWeight: FontWeight.w400,
                                height: 2,
                                size: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.primary)),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    surfaceTintColor: AppColors.primary,
                                    foregroundColor: AppColors.primary,
                                    shape: const RoundedRectangleBorder()),
                                onPressed: () {},
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextView(
                                    text: 'Contact me!!',
                                  ),
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
                                top: 84,
                                child: SvgPicture.asset("assets/Logo.svg")),
                            Image.asset(
                              "assets/image.png",
                              fit: BoxFit.fill,
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
                                    border:
                                        Border.all(color: AppColors.primary)),
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
                                              fontFamily: GoogleFonts.firaCode()
                                                  .fontFamily,
                                              fontWeight: FontWeight.w500,
                                              fontSize:
                                                  mediaQuery.width * 0.012),
                                          children: [
                                            TextSpan(
                                              text: ' Portfolio',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily:
                                                      GoogleFonts.firaCode()
                                                          .fontFamily,
                                                  fontSize:
                                                      mediaQuery.width * 0.012),
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
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white)),
                            child: const Padding(
                              padding: EdgeInsets.all(18.0),
                              child: TextView(
                                text: "Do hard things to solve big problems",
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
                                    fontFamily:
                                        GoogleFonts.firaCode().fontFamily,
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
                              width: mediaQuery.width * 0.3,
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
                  SizedBox(
                    height: 428,
                    width: mediaQuery.width * 0.8,
                    child: ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: mediaQuery.width * 0.258,
                              height: 391,
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.gray)),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 106,
                  ),
                  SizedBox(
                    width: mediaQuery.width * 0.8,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        fontFamily:
                                            GoogleFonts.firaCode().fontFamily,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 32),
                                    children: [
                                      TextSpan(
                                        text: 'skills',
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
                                // Container(
                                //   color: AppColors.primary,
                                //   height: 1,
                                //   width: mediaQuery.width * 0.2,
                                // ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset("assets/skill-bg.svg"),
                            )
                          ],
                        ),
                        SizedBox(
                          width: mediaQuery.width * 0.05,
                        ),
                        Container(
                          width: mediaQuery.width * 0.54,
                          height: 280,
                          child: Wrap(
                            alignment: WrapAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 178,
                                height: 103,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                decoration: const ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.3, color: Color(0xFFABB2BF)),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Languages',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              //fontFamily: ,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  'TypeScript',
                                                  style: TextStyle(
                                                    color: Color(0xFFABB2BF),
                                                    fontSize: 16,
                                                    //fontFamily: 'Fira Code',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                SizedBox(width: 8),
                                                Text(
                                                  'Lua',
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
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                'Python',
                                                style: TextStyle(
                                                  color: Color(0xFFABB2BF),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              const SizedBox(width: 8),
                                              Text(
                                                'JavaScript',
                                                style: TextStyle(
                                                  color: Color(0xFFABB2BF),
                                                  fontSize: 16,
                                                  fontFamily: 'Fira Code',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: mediaQuery.width * 0.15,
                                    height: 103,
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.50,
                                            color: Color(0xFFABB2BF)),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Databases',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontFamily: 'Fira Code',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text(
                                                      'SQLite',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontFamily: 'Fira Code',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    SizedBox(width: 8),
                                                    Text(
                                                      'PostgreSQL',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontFamily: 'Fira Code',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Container(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Mongo',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontFamily: 'Fira Code',
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                  ),
                                  Container(
                                    width: mediaQuery.width * 0.15,
                                    height: 103,
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.50,
                                            color: Color(0xFFABB2BF)),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Other',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontFamily: 'Fira Code',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'HTML',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontFamily: 'Fira Code',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                    Text(
                                                      'CSS',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontFamily: 'Fira Code',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                    Text(
                                                      'EJS',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontFamily: 'Fira Code',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                    Text(
                                                      'SCSS',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontFamily: 'Fira Code',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Container(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'REST',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontFamily: 'Fira Code',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                    Text(
                                                      'Jinja',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontFamily: 'Fira Code',
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 196,
                                    height: 132,
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    decoration: const ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.50,
                                            color: Color(0xFFABB2BF)),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                'Tools',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text(
                                                      'VSCode',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    SizedBox(width: 8),
                                                    Text(
                                                      'Neovim',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    SizedBox(width: 8),
                                                    Text(
                                                      'Linux',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontFamily: 'Fira Code',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    'Figma',
                                                    style: TextStyle(
                                                      color: Color(0xFFABB2BF),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 8),
                                                  Text(
                                                    'XFCE',
                                                    style: TextStyle(
                                                      color: Color(0xFFABB2BF),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 8),
                                                  Text(
                                                    'Arch',
                                                    style: TextStyle(
                                                      color: Color(0xFFABB2BF),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 8),
                                              Container(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text(
                                                      'Git',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    SizedBox(width: 11),
                                                    Text(
                                                      'Font Awesome',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                  ),
                                  Container(
                                    width: 196,
                                    height: 132,
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    decoration: const ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.50,
                                            color: Color(0xFFABB2BF)),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                'Frameworks',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text(
                                                      'React',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    SizedBox(width: 8),
                                                    Text(
                                                      'Vue',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Container(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text(
                                                      'Disnake',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                    Text(
                                                      'Discord.js',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontFamily: 'Fira Code',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Container(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text(
                                                      'Flask',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    SizedBox(width: 11),
                                                    Text(
                                                      'Express.js',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFABB2BF),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   width: mediaQuery.width * 0.1,
            // ),
            Column(
              children: [
                Container(
                  height: 191,
                  width: 1,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 8,
                ),
                SvgPicture.asset(
                  "assets/Github.svg",
                  height: 32,
                  fit: BoxFit.cover,
                  width: 32,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
