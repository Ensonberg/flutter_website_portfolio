import 'package:flutter/material.dart';
import 'package:my_portfolio_website/main.dart';

import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../model/project_model.dart';
import '../../widgets/desktop_body.dart';
import '../../widgets/project_card.dart';

class ProjectDesktop extends StatelessWidget {
  const ProjectDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.maybeOf(context)!.size;
    return DesktopBodyWidget(
        contents: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 53,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '/',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'projects',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 14,
        ),
        const Text(
          'List of my projects',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 68,
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
            children: List.generate(mobileAppProjects.length, (index) {
              ProjectModel project = mobileAppProjects[index];
              return ProjectCard(
                projectModel: project,
              );
            }), // The list of widgets in the list
          ),
        ),
        const SizedBox(
          height: 81,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '#',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              'devops-projects',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 41,
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
            children: List.generate(devopsProjects.length, (index) {
              ProjectModel project = devopsProjects[index];
              return ProjectCard(
                projectModel: project,
              );
            }), // The list of widgets in the list
          ),
        ),
        const SizedBox(
          height: 200,
        )
      ],
    ));
  }
}
