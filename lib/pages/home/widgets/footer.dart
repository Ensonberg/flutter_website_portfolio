import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                      const SizedBox(width: 24),
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/brand.svg"),
                            const SizedBox(width: 9),
                            const Text(
                              'Ensonberg',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Media',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Wrap(
                    children: [
                      SvgPicture.asset("assets/Discord.svg"),
                      SvgPicture.asset("assets/Github.svg"),
                      SvgPicture.asset("assets/Twitter.svg"),
                      SvgPicture.asset("assets/Linkedin.svg")
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
