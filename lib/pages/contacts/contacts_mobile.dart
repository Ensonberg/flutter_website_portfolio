import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_website/widgets/footer.dart';
import 'package:my_portfolio_website/widgets/mobile_body.dart';

import '../../util/constants.dart';

class ContactsMobile extends StatefulWidget {
  const ContactsMobile({Key? key}) : super(key: key);

  @override
  State<ContactsMobile> createState() => _ContactsMobileState();
}

class _ContactsMobileState extends State<ContactsMobile> {
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
            SizedBox(
              height: mediaQuery.height * 0.05,
            ),
            SizedBox(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'I’m interested in freelance opportunities. However, if you have other request or question, don’t hesitate to contact me',
                    style: TextStyle(
                      color: Color(0xFFABB2BF),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.1,
                  ),
                  Container(
                    width: mediaQuery.width,
                    // padding: const EdgeInsets.all(16),
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50, color: Color(0xFFABB2BF)),
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
                              const SizedBox(height: 8),
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
            SizedBox(
              height: mediaQuery.height * 0.2,
            ),
            const Footer(),
          ],
        ),
      ),
    ));
  }
}
