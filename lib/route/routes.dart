abstract class Routes {
  Routes._();

  static const HOME = Paths.HOME;
  static const PROJECTS = Paths.PROJECTS;
  static const CONTACTME = Paths.CONTACTME;
  static const ABOUTME = Paths.ABOUTME;
}

abstract class Paths {
  Paths._();
  // main Routes
  static const HOME = '/';
  static const PROJECTS = '/projects';
  static const CONTACTME = '/contact-me';
  static const ABOUTME = '/about-me';
}
