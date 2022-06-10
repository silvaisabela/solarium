import 'package:flutter/material.dart';
import 'package:solarium/pages/entry.dart';
import 'package:solarium/themes/solarium_theme.dart';
import 'userReports.dart' as globals;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: solariumTheme,
      home: const Entry(),
    );
  }
}
