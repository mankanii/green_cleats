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
      body: ListView(
        children: [
          Text("List of Teams"),
          TeamsText("", ""),
        ],
      ),
    );
  }
}

Widget TeamsText(String teamName, String teamNum) {
  return Text("${teamNum}. ${teamName}");
}
