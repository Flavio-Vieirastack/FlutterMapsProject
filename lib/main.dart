import 'package:flutter/material.dart';

import 'home_app.dart';
import 'markers_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Maps',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => const HomeApp(),
        "/markers" : (context) => const MarkersApp(),
      },
    );
  }
}
