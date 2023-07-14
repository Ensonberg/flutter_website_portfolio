import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_website/pages/home/home.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
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
      return MaterialApp(
        title: 'Portfolio Website',
        theme: ThemeData(
          useMaterial3: true,
          primaryColor: const Color(0xffC778DD),
          fontFamily: GoogleFonts.firaCode().fontFamily,

          //primarySwatch: myColor,
          scaffoldBackgroundColor: color,
        ),
        home: Home(),
      );
    });
  }
}
