import 'package:flutter/material.dart';
import 'package:my_portfolio_website/main.dart';
import 'package:my_portfolio_website/widgets/mobile_body.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../model/project_model.dart';
import '../../widgets/project_card.dart';

class ProjectMobile extends StatelessWidget {
  const ProjectMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.maybeOf(context)!.size;
    return MobileBody(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
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
            ListView.builder(
                shrinkWrap: true,
                itemCount: mobileAppProjects.length,
                itemBuilder: (ctx, index) {
                  ProjectModel project = mobileAppProjects[index];
                  return ProjectCard(
                    projectModel: project,
                  );
                }),
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
            ListView.builder(
                shrinkWrap: true,
                itemCount: devopsProjects.length,
                itemBuilder: (ctx, index) {
                  ProjectModel project = devopsProjects[index];
                  return ProjectCard(
                    projectModel: project,
                  );
                }),
            const SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    ));
  }
}
