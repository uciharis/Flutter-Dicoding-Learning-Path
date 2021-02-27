import 'package:flutter/material.dart';

import 'animated_container.dart';
import 'custom_animated.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animasi",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => AnimasiContainer(),
        "/customAnimasi": (context) => CustomAnimasi(),
      },
    );
  }
}
