import 'package:flutter/material.dart';

import 'package:whatsapp_app_clone/utils/colors.dart';
import 'package:whatsapp_app_clone/utils/material_colors.dart';
import 'package:whatsapp_app_clone/screens/agreement_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static MaterialColor primarySwatch = createMaterialColor(WAColors.tealGreen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      theme: ThemeData(
        primarySwatch: primarySwatch,
        colorScheme: ColorScheme.fromSwatch(
          brightness: Brightness.light,
          primarySwatch: primarySwatch,
          accentColor: WAColors.lightGreen,
        ),
      ),
      home: const AgreementScreen(),
    );
  }
}
