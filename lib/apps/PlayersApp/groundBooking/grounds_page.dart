import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:green_cleats/apps/PlayersApp/groundBooking/ground.dart';
import 'package:green_cleats/utils/colors.dart';

import '../../../widgets/big_text.dart';
import '../Blogs/blog.dart';

final List<Map> grounds = [
  {
    "groundName": "Sportswing",
    "charges": "4500",
    "duration": "Per Hour",
    "location": "Tariq Road, near Imtiaz, PECHS",
    "tag": "futsal"
  },
  {
    "groundName": "Airfield",
    "charges": "5000",
    "duration": "Per Hour",
    "location": "KMC, Kasmir Road, PECHS",
    "tag": "futsal"
  },
  {
    "groundName": "KMC",
    "charges": "7000",
    "duration": "Two Hour",
    "location": "Near Civil Hospital, Saddar",
    "tag": "fullfield"
  },
  {
    "groundName": "Madhu",
    "charges": "8000",
    "duration": "Two Hour",
    "location": "University Road, near METRO",
    "tag": "fullfield"
  },
];

class GroundsPage extends StatefulWidget {
  const GroundsPage({super.key});

  @override
  State<GroundsPage> createState() => _GroundsPageState();
}

class _GroundsPageState extends State<GroundsPage> {
  List<String> items = [
    "All",
    "Futsal",
    "Fullfield",
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.whiteColor,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none),
                hintText: "Search",
                hintStyle: TextStyle(
                    color: AppColors.animationBlueColor, fontSize: 16.0),
                prefixIcon: Icon(Icons.search),
                prefixIconColor: AppColors.backgroundColor,
              ),
            ),
          ),
          Column(
            children: [
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
                          current = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: current == index
                                ? AppColors.animationGreenColor
                                : AppColors.whiteColor),
                        child: Center(
                          child: Text(items[index],
                              style: TextStyle(
                                  color: current == index
                                      ? AppColors.whiteColor
                                      : AppColors.animationBlueColor)),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
          ListView.separated(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(10.0),
            itemCount: grounds.length,
            itemBuilder: (context, index) {
              return _buildGroundItem(context, index);
            },
            separatorBuilder: (context, index) => const SizedBox(height: 10.0),
          ),
        ],
      ),
    );
  }
}

Widget _buildGroundItem(context, int index) {
  Map ground = grounds[index];
  return Padding(
    padding: EdgeInsets.all(4.0),
    child: SizedBox(
      height: 300,
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        front: frontCard(context, index),
        back: backCard(index),
      ),
    ),
  );
}

Widget frontCard(context, int index) {
  Map ground = grounds[index];
  return Card(
    semanticContainer: true,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    child: Column(
      children: [
        const SizedBox(
          height: 200,
          width: double.infinity,
          child: Hero(
            tag: "blogImage",
            child: Image(
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 8.0, bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(ground["groundName"],
                        style: TextStyle(
                            color: AppColors.animationGreenColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GroundPage()),
                        );
                      },
                      child: Text('Book Me'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.animationGreenColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget backCard(int index) {
  Map ground = grounds[index];
  return Card(
    semanticContainer: true,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    child: Column(
      children: [
        const SizedBox(
          height: 200,
          width: double.infinity,
          child: Hero(
            tag: "blogImage",
            child: Image(
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 8.0, bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${ground["charges"]} Rs / ${ground["duration"]}",
                        style: TextStyle(
                            color: AppColors.khakiColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    Text.rich(
                      TextSpan(
                        children: [
                          const WidgetSpan(
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          TextSpan(
                              text: ground["location"],
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              )),
                        ],
                      ),
                      style: TextStyle(height: 2.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
