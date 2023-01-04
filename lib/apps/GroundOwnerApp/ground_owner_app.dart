import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:green_cleats/utils/colors.dart';

class GroundOwnerApp extends StatefulWidget {
  const GroundOwnerApp({super.key});

  @override
  State<GroundOwnerApp> createState() => _GroundOwnerAppState();
}

class _GroundOwnerAppState extends State<GroundOwnerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Green Cleats - Ground Owner',
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
          actions: [
            MaterialButton(
              onPressed: () => {},
              color: AppColors.animationGreenColor,
              child: Center(
                  child: Text(
                "Log Out",
                style: TextStyle(color: AppColors.whiteColor),
              )),
            )
          ],
        ),
        backgroundColor: AppColors.backgroundColor,
        body: ListView(),
      ),
    );
  }
}
