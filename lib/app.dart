import 'package:flutter/material.dart';

import 'screens/general_screen.dart';

class TeslaApp extends StatelessWidget {
  const TeslaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeslaApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GeneralScreen(),
    );
  }
}
