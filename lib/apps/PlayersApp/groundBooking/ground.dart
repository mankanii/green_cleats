import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:green_cleats/apps/PlayersApp/groundBooking/ground_checkout.dart';
import 'package:green_cleats/apps/PlayersApp/groundBooking/grounds_page.dart';

import '../../../utils/colors.dart';

class GroundPage extends StatefulWidget {
  const GroundPage({super.key});

  @override
  State<GroundPage> createState() => _GroundPageState();
}

class _GroundPageState extends State<GroundPage> {
  List<String> items = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  List<String> slots = [
    "8:00 AM - 9:00 AM",
    "8:00 AM - 9:00 AM",
    "8:00 AM - 9:00 AM",
    "8:00 AM - 9:00 AM",
    "8:00 AM - 9:00 AM",
    "8:00 AM - 9:00 AM",
    "8:00 AM - 9:00 AM",
    "8:00 AM - 9:00 AM",
    "10:00 AM - 11:00 AM",
    "11:00 AM - 12:00 PM",
  ];

  int currentItem = 0;
  int currentSlot = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200.0,
              width: double.infinity,
              child: Carousel(
                dotSize: 6.0,
                dotSpacing: 15.0,
                autoplay: false,
                images: [
                  Image.network(
                    "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: Column(
                children: [
                  Text(
                    "Sportswing",
                    style: TextStyle(
                        fontSize: 24.0,
                        color: AppColors.animationGreenColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: AppColors.animationBlueColor.withOpacity(0.08),
                    height: 32.0,
                  ),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              currentItem = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: EdgeInsets.all(5),
                            width: 80,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: currentItem == index
                                    ? AppColors.animationGreenColor
                                    : AppColors.whiteColor),
                            child: Center(
                              child: Text(items[index],
                                  style: TextStyle(
                                      color: currentItem == index
                                          ? AppColors.whiteColor
                                          : AppColors.animationBlueColor)),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: AppColors.animationBlueColor.withOpacity(0.08),
                    height: 32.0,
                  ),
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: ListView.builder(
                      // physics: const BouncingScrollPhysics(),
                      itemCount: slots.length,
                      primary: false,
                      itemBuilder: (ctx, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              currentSlot = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: EdgeInsets.all(5),
                            // width: 30,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: currentSlot == index
                                    ? AppColors.whiteColor
                                    : AppColors.animationBlueColor),
                            child: Center(
                              child: Text(slots[index],
                                  style: TextStyle(
                                      color: currentSlot == index
                                          ? AppColors.animationBlueColor
                                          : AppColors.whiteColor)),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: AppColors.animationBlueColor.withOpacity(0.08),
                    height: 32.0,
                  ),
                  Text(
                    "Description",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(
                        fontSize: 16.0, color: AppColors.animationBlueColor),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: AppColors.animationBlueColor.withOpacity(0.08),
                    height: 32.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          "location",
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.animationBlueColor,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GroundCheckout()),
          );
        },
        backgroundColor: AppColors.animationGreenColor,
        label: const Text('4500 Rs / Per Hour - Book Now'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
