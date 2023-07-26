import 'package:flutter/material.dart';
import 'package:my_portfolio_website/model/project_model.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel projectModel;
  const ProjectCard({
    Key? key,
    required this.projectModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // height: 391,
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 0.50,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: Color(0xFFABB2BF),
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //  width: 330.58,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(projectModel.assetPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
              child: SizedBox(
                //  width: 100,
                height: 100,
                child: ResponsiveGridList(
                  // Vertical space around the grid
                  minItemWidth:
                      100, // The minimum item width (can be smaller, if the layout constraints are smaller)
                  minItemsPerRow:
                      1, // The minimum items to show in a single row. Takes precedence over minItemWidth
                  maxItemsPerRow:
                      4, // The maximum items to show in a single row. Can be useful on large screens
                  listViewBuilderOptions: ListViewBuilderOptions(
                      shrinkWrap: true,
                      physics:
                          const NeverScrollableScrollPhysics()), // Options that are getting passed to the ListView.builder() function
                  children: List.generate(
                    projectModel.skills.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Text(
                        projectModel.skills[index],
                        style: const TextStyle(
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
            ),
            Container(
              width: double.infinity,
              // height: 153,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      projectModel.projectName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      projectModel.projectSubTitle,
                      style: const TextStyle(
                        color: Color(0xFFABB2BF),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (projectModel.liveUrl != null)
                          RawMaterialButton(
                            onPressed: () {
                              _launchUrl(projectModel.liveUrl!);
                            },
                            hoverColor: Theme.of(context).primaryColor,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 0.50, color: Color(0xFFC778DD)),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Live <~>',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        const SizedBox(width: 16),
                        if (projectModel.githubUrl != null)
                          RawMaterialButton(
                            onPressed: () {
                              _launchUrl(projectModel.githubUrl!);
                            },
                            hoverColor: Theme.of(context).primaryColor,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 0.50, color: Color(0xFFABB2BF)),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Github >=',
                                    style: TextStyle(
                                      color: Color(0xFFABB2BF),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
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
    );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
