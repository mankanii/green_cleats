import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../nav/bottom_nav.dart';
import '../nav/top_nav.dart';

class PlayerApp extends StatefulWidget {
  const PlayerApp({super.key});

  @override
  State<PlayerApp> createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp> {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Green Cleats',
        debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Container(
              child: Column(
                children: [
                  Expanded(
                    child: TopNavBar(),
                  ),
                  Expanded(
                    child: BottomNavBar(),
                  ),
                ],
              ),
            ),
          ),
        );
  }
}