import 'package:flutter/material.dart';
import 'package:green_cleats/apps/PlayersApp/team/team.dart';
import 'package:green_cleats/apps/PlayersApp/team/team_registration.dart';
import 'package:green_cleats/apps/PlayersApp/team/teams_list.dart';
import 'package:green_cleats/utils/colors.dart';

import 'groundBooking/booking_history.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                //Log Out
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xff3F5069),
                        Color.fromARGB(255, 99, 125, 165),
                        Color.fromARGB(255, 141, 178, 233),
                      ],
                    )),
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                            AppColors.whiteColor),
                        // textStyle: (),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Log Out",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.logout_rounded,
                            size: 30,
                            color: AppColors.whiteColor,
                          )
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  color: AppColors.animationGreenColor.withOpacity(0.4),
                  height: 32.0,
                ),
                // Features
                textButtonF("Teams", Team()),
                textButtonF("My Team", MyTeam()),
                textButtonF("Create Your Team", TeamReg()),
                Divider(
                  thickness: 1.0,
                  color: AppColors.animationGreenColor.withOpacity(0.4),
                  height: 32.0,
                ),
                textButtonF("Booking History", BookingHistory()),
                Divider(
                  thickness: 1.0,
                  color: AppColors.animationGreenColor.withOpacity(0.4),
                  height: 32.0,
                ),
                textButtonF2("Events"),
                Divider(
                  thickness: 1.0,
                  color: AppColors.animationGreenColor.withOpacity(0.4),
                  height: 32.0,
                ),
                textButtonF2("Change Password"),
                textButtonF2("About Us"),
                textButtonF2("Contact Us"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox textButtonF2(String textName) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(255, 141, 178, 233),
            Color.fromARGB(255, 99, 125, 165),
            Color(0xff3F5069),
          ],
        )),
        child: TextButton(
          style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all<Color>(AppColors.whiteColor),
            // textStyle: (),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textName,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_right_alt_rounded,
                size: 30,
                color: AppColors.whiteColor,
              )
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  SizedBox textButtonF(String textName, Widget need) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(255, 141, 178, 233),
            Color.fromARGB(255, 99, 125, 165),
            Color(0xff3F5069),
          ],
        )),
        child: TextButton(
          style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all<Color>(AppColors.whiteColor),
            // textStyle: (),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textName,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_right_alt_rounded,
                size: 30,
                color: AppColors.whiteColor,
              )
            ],
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => need),
            );
          },
        ),
      ),
    );
  }
}
