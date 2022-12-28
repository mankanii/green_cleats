import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../nav/bottom_nav.dart';
import 'playerProfile/player_profile.dart';
import '../../utils/colors.dart';

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
        appBar: AppBar(
          title: Image.asset(
            'assets/images/greenGC.png',
            fit: BoxFit.cover,
            height: 100,
            width: 100,
          ),
          backgroundColor: AppColors.animationBlueColor,
          elevation: 20,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications),
              tooltip: 'Notifications',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is Chat')));
              },
            ),
            IconButton(
              icon: const Icon(Icons.chat_rounded),
              tooltip: 'Player chat',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a player profile')));
              },
            ),
            IconButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PlayerProfile()),
                )
              },
              padding: EdgeInsets.only(top: 1, bottom: 1, left: 1, right: 4),
              icon: CircleAvatar(
                radius: 300.0,
                backgroundColor: AppColors.khakiColor,
                child: const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    radius: 100.0,
                    backgroundImage: NetworkImage('assets/images/pic.jpg'),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: BottomNavBar(),
      ),
    );
  }
}
