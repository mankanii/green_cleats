import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:green_cleats/apps/PlayersApp/Blogs/blogs_page.dart';
import 'package:green_cleats/apps/PlayersApp/groundBooking/grounds_page.dart';
import 'package:green_cleats/apps/PlayersApp/main_posting_page.dart';
import 'package:green_cleats/apps/PlayersApp/more_page.dart';
import 'package:green_cleats/apps/PlayersApp/trainer_page.dart';
import 'package:green_cleats/utils/colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    // BlogsPage(),
    GroundsPage(),
    MainPostingPage(),
    TrainerPage(),
    MorePage(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.animationBlueColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.khakiColor,
        unselectedItemColor: AppColors.animationGreenColor,
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.read_more), label: "Blogs"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.stadium_outlined), label: "Grounds"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.add_home_work_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.fitness_center_outlined), label: "Trainer"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.more_horiz_sharp), label: "More"),
        ],
      ),
    );
  }
}
