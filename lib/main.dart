import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'launchscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Матимаша',
      color: Color(0xFF8EC5FC),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ZenAntique',
        primarySwatch: Colors.blue,
      ),
      home: launchScreen(),

    );
  }
}