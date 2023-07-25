class ProjectModel {
  final List<String> skills;
  final String assetPath;
  final String? githubUrl;
  final String? liveUrl;
  final String projectName;
  final String projectSubTitle;

  ProjectModel(
      {required this.skills,
      required this.assetPath,
      this.githubUrl,
      this.liveUrl,
      required this.projectName,
      required this.projectSubTitle});
}
