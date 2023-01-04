import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:green_cleats/apps/PlayersApp/groundBooking/payment.dart';
import 'package:green_cleats/utils/colors.dart';

class GroundCheckout extends StatefulWidget {
  const GroundCheckout({super.key});

  @override
  State<GroundCheckout> createState() => _GroundCheckoutState();
}

class _GroundCheckoutState extends State<GroundCheckout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.animationBlueColor,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            // Text(
            //   "Ground",
            //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21.0),
            // ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 90.0,
                  height: 90.0,
                  child: Icon(
                    Icons.stadium_outlined,
                    color: AppColors.whiteColor,
                    size: 80,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.animationGreenColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 150.0,
                        child: Text(
                          "Sportswing",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: AppColors.animationGreenColor),
                        )),
                    Container(
                        width: 150.0,
                        child: Text(
                          "8:00 PM - 9:00 PM",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.animationBlueColor),
                        )),
                    Container(
                        width: 150.0,
                        child: Text(
                          textAlign: TextAlign.center,
                          "WEDNESDAY",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.animationBlueColor),
                        )),
                  ],
                ),
                Text(
                  "\u20A8 4500",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.animationBlueColor,
                      fontSize: 20),
                ),
              ],
            ),
            Divider(
              thickness: 1.0,
              color: AppColors.animationGreenColor.withOpacity(0.4),
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Name",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.blackColor,
                      fontSize: 18),
                ),
                Text(
                  "Shayan Ali Mankani",
                  style: TextStyle(color: AppColors.blackColor, fontSize: 18),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Phone Number",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.blackColor,
                      fontSize: 18),
                ),
                Text(
                  "03200242342",
                  style: TextStyle(color: AppColors.blackColor, fontSize: 18),
                ),
              ],
            ),
            Divider(
              thickness: 1.0,
              color: AppColors.animationGreenColor.withOpacity(0.4),
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.blackColor,
                      fontSize: 20),
                ),
                Text(
                  "\u20A8 4500",
                  style: TextStyle(color: AppColors.blackColor, fontSize: 20),
                ),
              ],
            ),
            Spacer(),
            MaterialButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Payment()),
                )
              },
              height: 60.0,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: AppColors.animationGreenColor,
              child: Text(
                "PROCEED TO CHECKOUT",
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 14.0)
          ],
        ),
      ),
    );
  }
}
