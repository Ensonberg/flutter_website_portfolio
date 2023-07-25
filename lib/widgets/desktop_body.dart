import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:my_portfolio_website/widgets/header.dart';

import 'footer.dart';

class DesktopBodyWidget extends StatefulWidget {
  final Widget contents;
  const DesktopBodyWidget({Key? key, required this.contents}) : super(key: key);

  @override
  State<DesktopBodyWidget> createState() => _DesktopBodyWidgetState();
}

class _DesktopBodyWidgetState extends State<DesktopBodyWidget> {
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
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Container(
                        height: 191,
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SvgPicture.asset(
                      "assets/Github.svg",
                      height: 42,
                      fit: BoxFit.cover,
                      width: 42,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        "assets/flutter.svg",
                        height: 32,
                        fit: BoxFit.cover,
                        width: 32,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        "assets/docker.svg",
                        height: 32,
                        fit: BoxFit.cover,
                        width: 32,
                      ),
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
                                const Text(
                                  "Enson",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            const Header()
                          ],
                        ),
                      ),
                      widget.contents
                    ],
                  ),
                ),
                // SizedBox(
                //   width: mediaQuery.width * 0.1,
                // ),
                const SizedBox(
                  height: 191,
                  width: 1,
                ),
              ],
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
