import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_website/pages/home/home.dart';
import 'package:my_portfolio_website/route/router.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'model/project_model.dart';

final List<ProjectModel> mobileAppProjects = [
  ProjectModel(
      skills: ["Flutter Web", "Dart", "Figma", "Github Actions", "Firebase"],
      assetPath: "assets/images/porfolio.png",
      projectName: "My Portfolio Website",
      liveUrl: "https://my-portfolio-ddb93.web.app/#/",
      githubUrl: "https://github.com/Ensonberg/flutter_website_portfolio",
      projectSubTitle: "Portfolio Website design with Flutter Web"),
  ProjectModel(
      skills: ["Flutter", "Dart", "Figma", "Git"],
      assetPath: "assets/images/TokTok - Thumbnails Figma.png",
      projectName: "TokTok App ",
      githubUrl: "https://github.com/Ensonberg?tab=repositories",
      projectSubTitle: "TikTok Redesign"),
  ProjectModel(
      skills: ["Java-Kotlin", "Firebase", "Onesignals", "Mailchimp"],
      assetPath: "assets/images/urhobo.png",
      projectName: "Urhobo Dictionary App ",
      liveUrl:
          "https://play.google.com/store/apps/details?id=com.ensontech.urhobodictionary",
      projectSubTitle: "App for Learning Urhobo Dictionary App"),
  ProjectModel(
      skills: ["Flutter Web", "Dart", "Flutter", "Git"],
      assetPath: "assets/images/kris.jpg",
      projectName: "Kris Laundry and Unisex Salon",
      liveUrl:
          "https://play.google.com/store/apps/details?id=com.krislaundryandunisex.kriss_service_app",
      projectSubTitle:
          "Laundry and Unisex is a Laundry and Unisex Beauty Company"),
  ProjectModel(
      skills: ["Flutter", "Dart", "Figma"],
      assetPath: "assets/images/foodui.jpg",
      projectName: "Foodie Ui",
      githubUrl: "https://github.com/Ensonberg/Food-Ordering-app-flutter",
      projectSubTitle: "Foodie UI Design"),
];
final List<ProjectModel> devopsProjects = [
  ProjectModel(
      skills: [
        "AWS",
        "Cloud Formation",
        "YML",
      ],
      assetPath: "assets/images/devops1.png",
      projectName: "Deploy-a-High-Availability-Web-App-using-CloudFormation",
      githubUrl:
          "https://github.com/Ensonberg/Deploy-a-High-Availability-Web-App-using-CloudFormation",
      projectSubTitle:
          "Deploy-a-High-Availability-Web-App-using-CloudFormation"),
  ProjectModel(
      skills: [
        "AWS",
        "AWS CLI",
        "Cloud Formation",
        "Ansible",
        "CircleCI",
        "Prometheus"
      ],
      assetPath: "assets/images/devops2.png",
      projectName: "Give your Application Auto-Deploy Superpowers",
      githubUrl: "https://github.com/Ensonberg?tab=repositories",
      projectSubTitle:
          "Fundamentals and benefits of CI/CD to achieve, build, and deploy automation for cloud-based software products"),
  ProjectModel(
      skills: ["AWS Lambda", "AWS", "Kubernetes", "Python", "API", "Docker"],
      assetPath: "assets/images/devops3.png",
      projectName: "Operationalize-a-Machine-Learning-Microservice-API",
      githubUrl:
          "https://github.com/Ensonberg/Operationalize-a-Machine-Learning-Microservice-API",
      projectSubTitle:
          "The Operationalize ML project contains a Machine Learning Microservice, built on Scikit-Learn"),
];
void main() {
  //GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color color = Color(0xff282C33);
    MaterialColor myColor = MaterialColor(
      const Color(0xff1E1E1E).value,
      <int, Color>{
        50: color.withOpacity(0.1),
        100: color.withOpacity(0.2),
        200: color.withOpacity(0.3),
        300: color.withOpacity(0.4),
        400: color.withOpacity(0.5),
        500: color.withOpacity(0.6),
        600: color.withOpacity(0.7),
        700: color.withOpacity(0.8),
        800: color.withOpacity(0.9),
        900: color.withOpacity(1),
      },
    );
    return ResponsiveApp(builder: (context) {
      return MaterialApp.router(
        title: 'Portfolio Website',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          primaryColor: const Color(0xffC778DD),
          fontFamily: GoogleFonts.firaCode().fontFamily,

          //primarySwatch: myColor,
          scaffoldBackgroundColor: color,
        ),
        //localizationsDelegates: AppLocalizations.localizationsDelegates,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider,
      );
    });
  }
}
