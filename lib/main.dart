import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tongue_tie_app/screens/auth/login.dart';
import 'package:tongue_tie_app/screens/lesson/lesson.dart';
import 'package:tongue_tie_app/screens/message/message.dart';
import 'package:tongue_tie_app/screens/profile/profile.dart';
import 'package:tongue_tie_app/screens/profile/widgets/aboutus.dart';

import 'screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tongue-Tie',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffCA6D0D)),
        useMaterial3: true,
      ),
      home: SignInScreen(),
    );
  }
}
