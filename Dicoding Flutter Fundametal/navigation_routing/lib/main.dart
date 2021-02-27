import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:navigation_routing/first_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation and Routing",
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: '-',
      routes: {
        '-': (context) => FirstScreen(),
        '-secondScreen': (context) => SecondScreen(),
        '-secondScreenWithData': (context) => SecondScreenWithData(),
        '-returnDataScreen': (context) => ReturnDataScreen(),
        '-replacementScree': (context) => ReplacementScreen(),
        '-anotherScreen': (context) => AnotherScreen(),
      },
    );
  }
}
