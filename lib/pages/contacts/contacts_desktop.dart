import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../util/constants.dart';
import '../../widgets/desktop_body.dart';

class ContactsDesktop extends StatelessWidget {
  const ContactsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return DesktopBodyWidget(
        contents: Column(
      children: [
        SizedBox(
          height: mediaQuery.height * 0.1,
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
        SizedBox(
          height: mediaQuery.height * 0.4,
        ),
      ],
    ));
  }
}
