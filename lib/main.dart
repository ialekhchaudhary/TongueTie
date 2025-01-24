import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:tongue_tie_app/screens/auth/login.dart';
import 'package:tongue_tie_app/screens/auth/register.dart';
import 'package:tongue_tie_app/screens/home/home.dart';
import 'package:tongue_tie_app/screens/lesson/lesson.dart';
import 'package:tongue_tie_app/screens/message/message.dart';
import 'package:tongue_tie_app/screens/profile/profile.dart';
import 'package:tongue_tie_app/screens/profile/widgets/aboutus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tongue-Tie',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffCA6D0D)),
        useMaterial3: true,
      ),
      initialRoute: '/',  // Initial route
      getPages: [  // Define routes as GetPage objects for GetX navigation
        GetPage(name: '/', page: () => SignInScreen()),
        GetPage(name: '/register', page: () => RegisterScreen()),
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(name: '/lessons', page: () => LessonsScreen()),
        GetPage(name: '/messages', page: () => MessageScreen()),
        GetPage(name: '/profile', page: () => ProfileScreen()),
        GetPage(name: '/about-us', page: () => AboutUsScreen()),
      ],
    );
  }
}
