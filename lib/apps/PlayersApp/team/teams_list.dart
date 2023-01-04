import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:green_cleats/utils/colors.dart';

class Team extends StatefulWidget {
  const Team({super.key});

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.animationBlueColor,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        children: [
          Stack(
            children: [
              Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover),
              Positioned(
                // The Positioned widget is used to position the text inside the Stack widget
                bottom: 10,
                right: 10,

                child: Container(
                  // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                  width: 300,
                  color: Colors.black54,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'LIST OF TEAMS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          TeamsText("", ""),
        ],
      ),
    );
  }
}

Widget TeamsText(String teamName, String teamNum) {
  return Text("${teamNum}. ${teamName}");
}
