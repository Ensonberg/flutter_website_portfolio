import 'package:flutter/material.dart';
import 'package:my_portfolio_website/model/skill_model.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class SkillCard extends StatelessWidget {
  final SkillModel skillModel;
  const SkillCard({Key? key, required this.skillModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: 300,
      height: 220,
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.3, color: Color(0xFFABB2BF)),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Text(
              skillModel.skillTitle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                //fontFamily: ,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Divider(
            height: 1,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: ResponsiveGridList(
              // Vertical space around the grid
              minItemWidth:
                  60, // The minimum item width (can be smaller, if the layout constraints are smaller)
              minItemsPerRow:
                  1, // The minimum items to show in a single row. Takes precedence over minItemWidth
              maxItemsPerRow:
                  2, // The maximum items to show in a single row. Can be useful on large screens
              listViewBuilderOptions: ListViewBuilderOptions(
                  shrinkWrap: true,
                  physics:
                      const NeverScrollableScrollPhysics()), // Options that are getting passed to the ListView.builder() function
              children: List.generate(
                skillModel.skillList.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text(
                    skillModel.skillList[index],
                    style: TextStyle(
                      color: Color(0xFFABB2BF),
                      fontSize: 16,
                      //fontFamily: 'Fira Code',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ), // The list of widgets in the list
            ),
          ),
          // Container(
          //   padding: const EdgeInsets.symmetric(horizontal: 8),
          //   child: Column(
          //     mainAxisSize: MainAxisSize.min,
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Container(
          //         child: Row(
          //           mainAxisSize: MainAxisSize.min,
          //           mainAxisAlignment: MainAxisAlignment.start,
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Text(
          //               'TypeScript',
          //               style: TextStyle(
          //                 color: Color(0xFFABB2BF),
          //                 fontSize: mediaQuery.width * 0.01,
          //                 //fontFamily: 'Fira Code',
          //                 fontWeight: FontWeight.w400,
          //               ),
          //             ),
          //             SizedBox(width: 8),
          //             Text(
          //               "Lua",
          //               style: TextStyle(
          //                 color: Color(0xFFABB2BF),
          //                 fontSize: mediaQuery.width * 0.01,
          //                 fontWeight: FontWeight.w400,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       const SizedBox(height: 8),
          //       Row(
          //         mainAxisSize: MainAxisSize.min,
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text(
          //             'Python',
          //             style: TextStyle(
          //               color: Color(0xFFABB2BF),
          //               fontSize: mediaQuery.width * 0.01,
          //               fontWeight: FontWeight.w400,
          //             ),
          //           ),
          //           const SizedBox(width: 8),
          //           Text(
          //             'JavaScript',
          //             style: TextStyle(
          //               color: Color(0xFFABB2BF),
          //               fontSize: mediaQuery.width * 0.01,
          //               fontFamily: 'Fira Code',
          //               fontWeight: FontWeight.w400,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
