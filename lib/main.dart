import 'package:flutter/material.dart';
import 'package:green_cleats/apps/PlayersApp/main_posting_page.dart';
import 'package:green_cleats/authentication/main_registration_page.dart';
import 'package:green_cleats/nav/bottom_nav.dart';

import 'authentication/login_page.dart';
// import 'nav/top_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Green Cleats',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: const LoginPage(),
          ),
        ));
  }
}
