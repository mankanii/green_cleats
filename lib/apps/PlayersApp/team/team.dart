import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:green_cleats/utils/colors.dart';
import 'package:green_cleats/widgets/big_text.dart';

class MyTeam extends StatefulWidget {
  const MyTeam({super.key});

  @override
  State<MyTeam> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.animationBlueColor,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 30.0, left: 10, right: 10, bottom: 0),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.khakiColor,
                          radius: 70,
                          child: const CircleAvatar(
                            backgroundImage:
                                NetworkImage('assets/images/pic.jpg'),
                            radius: 68,
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 4,
                                      color: AppColors.backgroundColor),
                                  color: AppColors.animationBlueColor),
                              child: Icon(
                                Icons.edit,
                                color: AppColors.whiteColor,
                              ),
                            ))
                      ],
                    ),
                    VerticalDivider(
                      width: 20,
                      thickness: 5,
                      // indent: 20,
                      // endIndent: 0,
                      color: AppColors.khakiColor,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "FC Barcelona",
                          size: 22,
                          color: AppColors.animationGreenColor,
                        ),
                        RichText(
                            text: TextSpan(
                          text: "Level: ",
                          style: TextStyle(
                              color: AppColors.animationGreenColor,
                              fontSize: 16,
                              fontStyle: FontStyle.italic),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Professional",
                              style: TextStyle(
                                  color: AppColors.animationBlueColor,
                                  fontSize: 18,
                                  fontStyle: FontStyle.normal),
                            ),
                          ],
                        )),
                        RichText(
                            text: TextSpan(
                          text: "Type: ",
                          style: TextStyle(
                              color: AppColors.animationGreenColor,
                              fontSize: 16,
                              fontStyle: FontStyle.italic),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Fullfield and Futsal",
                              style: TextStyle(
                                  color: AppColors.animationBlueColor,
                                  fontSize: 18,
                                  fontStyle: FontStyle.normal),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 18.0, left: 12.0, right: 12.0, bottom: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "Description",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: AppColors.animationGreenColor),
                        // textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Started playing football in 2011/12, 5+ years of experience as a captain. Furthermore, have also worked as a fitness trainer with two teams.",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: AppColors.animationBlueColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "Area",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: AppColors.animationGreenColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "-",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: AppColors.animationBlueColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "Players",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: AppColors.animationGreenColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Lewandowski",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: AppColors.animationBlueColor),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
