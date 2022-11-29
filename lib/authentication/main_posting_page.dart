import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:green_cleats/utils/colors.dart';
import 'package:green_cleats/widgets/big_text.dart';

class MainPostingPage extends StatefulWidget {
  const MainPostingPage({super.key});

  @override
  State<MainPostingPage> createState() => _MainPostingPageState();
}

class _MainPostingPageState extends State<MainPostingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Container(
                      child: BigText(text: 'Green Cleats'),
                      // child: Image.asset(
                      //   'assets/images/greenGC.png',
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    child: Icon(
                      Icons.image,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.khakiColor),
                  )
                ]),
          ),
        ),
      ],
    ));
  }
}
