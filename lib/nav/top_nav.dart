import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:green_cleats/utils/colors.dart';

import '../player_profile.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/greenGC.png',
          fit: BoxFit.cover,
          height: 100,
          width: 100,
        ),
        backgroundColor: AppColors.animationBlueColor,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Notifications',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('This is Chat')));
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
          Padding(
            padding: const EdgeInsets.only(bottom: 6, right: 10.0),
            child: Container(
                alignment: const Alignment(0.6, 0.6),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.khakiColor,
                  child: Padding(
                      padding: const EdgeInsets.all(2), // Border radius
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PlayerProfile()),
                          );
                        },
                        child: ClipOval(
                            child: Image.network(
                          'assets/images/pic.jpg',
                          fit: BoxFit.cover,
                          width: 80,
                          height: 80,
                        )),
                      )),
                )),
          )

          // IconButton(
          //   icon: const Icon(Icons.navigate_next),
          //   tooltip: 'Go to the next page',
          //   onPressed: () {
          //     Navigator.push(context, MaterialPageRoute<void>(
          //       builder: (BuildContext context) {
          //         return Scaffold(
          //           appBar: AppBar(
          //             title: const Text('Next page'),
          //           ),
          //           body: const Center(
          //             child: Text(
          //               'This is the next page',
          //               style: TextStyle(fontSize: 24),
          //             ),
          //           ),
          //         );
          //       },
          //     ));
          //   },
          // ),
        ],
      ),
    );
  }
}
