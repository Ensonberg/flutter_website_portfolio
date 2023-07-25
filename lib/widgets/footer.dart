import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: mediaQuery.width,
          color: Colors.white,
          height: 1,
        ),
        const SizedBox(
          height: 32,
        ),
        SizedBox(
          width: mediaQuery.width * 0.8,
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/brand.svg"),
                            const SizedBox(width: 9),
                            const Text(
                              'Enson  ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'edirinmuogho@gmail.com',
                        style: TextStyle(
                          color: Color(0xFFABB2BF),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Mobile App Developer and Cloud DevOps Engineer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Social Media',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Wrap(
                    children: const [
                      FooterSocialMediaLink(
                        url: 'https://twitter.com/EdirinMuogho',
                        assetPath: "assets/Twitter.svg",
                      ),
                      FooterSocialMediaLink(
                        url: 'https://discordapp.com/channels/@me/ensonberg/',
                        assetPath: "assets/Discord.svg",
                      ),
                      FooterSocialMediaLink(
                        url: 'https://github.com/Ensonberg',
                        assetPath: "assets/Github.svg",
                      ),
                      FooterSocialMediaLink(
                        url:
                            'https://www.linkedin.com/in/muogho-endurance-625b61167/',
                        assetPath: "assets/Linkedin.svg",
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class FooterSocialMediaLink extends StatelessWidget {
  final String url;
  final assetPath;
  const FooterSocialMediaLink(
      {Key? key, required this.url, required this.assetPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      hoverColor: Theme.of(context).primaryColor,
      onPressed: () {
        launchUrl(Uri.parse(url));
      },
      child: SvgPicture.asset(assetPath),
    );
  }
}
