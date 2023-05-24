import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_website/widgets/text_view.dart';

import '../../../style/app_colors.dart';

class HomeDesktopWidget extends StatelessWidget {
  const HomeDesktopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(
                width: mediaQuery.width * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: mediaQuery.width * 0.7,
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
                          width: mediaQuery.width * 0.3,
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
                                width: mediaQuery.width * 0.3,
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
                                    border:
                                        Border.all(color: AppColors.primary)),
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
                          height: mediaQuery.height * 0.5,
                          width: mediaQuery.width * 0.3,
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 84,
                                  child: SvgPicture.asset("assets/Logo.svg")),
                              Image.asset(
                                "assets/image.png",
                                fit: BoxFit.fill,
                                width: mediaQuery.width * 0.3,
                                height: mediaQuery.height * 0.46,
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
                                  height: 37,
                                  width: 469,
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
                                        SizedBox(
                                          width: 10,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: 'Currently working on',
                                            style: TextStyle(
                                                color: AppColors.gray,
                                                fontFamily:
                                                    GoogleFonts.firaCode()
                                                        .fontFamily,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                            children: [
                                              TextSpan(
                                                text: ' Portfolio',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily:
                                                        GoogleFonts.firaCode()
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
                      ],
                    ),
                    const SizedBox(
                      height: 112,
                    ),
                    SizedBox(
                      width: mediaQuery.width * 0.7,
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
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
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
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
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
                      width: mediaQuery.width * 0.7,
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
                      width: mediaQuery.width * 0.72,
                      child: ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: mediaQuery.width * 0.22,
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
                      width: mediaQuery.width * 0.7,
                      child: Row(
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: '#',
                                        style: TextStyle(
                                            color: AppColors.primary,
                                            fontFamily: GoogleFonts.firaCode()
                                                .fontFamily,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 32),
                                        children: [
                                          TextSpan(
                                            text: 'skills',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily:
                                                    GoogleFonts.firaCode()
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
                                      width: mediaQuery.width * 0.3,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      SvgPicture.asset("assets/skill-bg.svg"),
                                )
                              ],
                            ),
                          ),
                          Flexible(
                              flex: 2,
                              child: Container(
                                height: 300,
                                color: Colors.red,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: mediaQuery.width * 0.1,
              ),
              // Column(
              //   children: [
              //     Container(
              //       height: 191,
              //       width: 1,
              //       color: Colors.white,
              //     ),
              //     const SizedBox(
              //       height: 8,
              //     ),
              //     SvgPicture.asset(
              //       "assets/Github.svg",
              //       height: 32,
              //       fit: BoxFit.cover,
              //       width: 32,
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
