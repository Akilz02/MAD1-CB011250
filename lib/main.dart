//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test02/models/shop.dart';
import 'package:test02/pages/edit_profile_page.dart';
import 'package:test02/pages/profile_page.dart';
import 'package:test02/theme/theam_provider.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
          child: const MyApp(),
      ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BubbleTeaShop(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //   primarySwatch: Colors.brown),
        theme: Provider.of<ThemeProvider>(context).themeData,
        // Change the initial route to '/login'
        initialRoute: '/login',
        //Define the routes for pages
        routes: {
          '/login': (context) => LoginPage(),
          '/register': (context) => RegisterPage(),
          '/home': (context) => const HomePage(),
          '/edit_profile': (context) => EditProfilePage(),
          '/profile': (context) => const ProfilePage(),
        },
      ),
    );
  }
}
