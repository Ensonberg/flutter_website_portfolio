import '../model/project_model.dart';
import '../model/skill_model.dart';

const aboutMeFull =
    "Hello, i’m Enson!\n\nI am Self-taught Mobile App developer based in Akure Nigeria. Proven ability to design, develop, and deliver high-quality, cross-platform mobile apps using Flutter. Expertise in all phases of the mobile app development lifecycle, from ideation to deployment. Strong problem-solving and analytical skills. Ability to work independently and as part of a team. \n\nI am confident that my skills and experience would be a valuable asset to your team. I am a highly motivated and results-oriented individual with a passion for mobile app development. I am eager to learn new technologies and am always looking for ways to improve my skills. I am confident that I can make a significant contribution to your company. ";

final List<String> funFacts = [
  "I was born in Delta State Nigeria",
  "My favorite food is Banga Soup",
  "I don't know how to swim",
  "I love listening for music ",
];

final List<SkillModel> skills = [
  SkillModel(
    skillTitle: 'Languages',
    skillList: [
      "Dart",
      "Java",
      "Kotlin",
      "Swift",
      "JavaScript",
    ],
  ),
  SkillModel(
    skillTitle: 'Frameworks',
    skillList: [
      "Flutter",
      "JetPack Compose",
      "Swift UI",
    ],
  ),
  SkillModel(
    skillTitle: 'Frameworks',
    skillList: [
      "Flutter",
      "JetPack Compose",
      "Swift UI",
    ],
  ),
  SkillModel(
    skillTitle: 'Tools',
    skillList: [
      "Android Studio",
      "XCode",
      "VSCode",
      "Git",
      "Linux",
      "Figma",
      // "Flutter Flow",
    ],
  ),
  SkillModel(
    skillTitle: 'Databases',
    skillList: [
      "Firestore",
      "SQLite",
      "Mongo db",
      "Cockroach db",
    ],
  ),
  SkillModel(
    skillTitle: 'Others',
    skillList: [
      "CIRCLE CI",
      "AWS",
      "GCLOUD",
      "YAML",
      "XML",
      "HTML",
      "CSS",
    ],
  )
];
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
