import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:green_cleats/utils/colors.dart';

const List<String> levelsList = <String>[
  'U15',
  'U20',
  'Ameture Club',
  'Proffetional Club',
  'District',
  'Depart',
];
const List<String> typeList = <String>[
  'Futsal',
  'Fullfield',
  'Both',
];

class TeamReg extends StatefulWidget {
  const TeamReg({super.key});

  @override
  State<TeamReg> createState() => _TeamRegState();
}

class _TeamRegState extends State<TeamReg> {
  String dropdownValue = levelsList.first;
  String dropdownTypeValue = typeList.last;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.animationBlueColor,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    'CREATE YOUR TEAM',
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.edit_outlined,
                              color: AppColors.animationBlueColor),
                          labelStyle: TextStyle(
                              color: AppColors.animationBlueColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                          labelText: "Team Name",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: AppColors.animationBlueColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.animationGreenColor),
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.description_outlined,
                              color: AppColors.animationBlueColor),
                          labelStyle: TextStyle(
                              color: AppColors.animationBlueColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                          labelText: "Description",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: AppColors.animationBlueColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.animationGreenColor),
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.location_searching_rounded,
                              color: AppColors.animationBlueColor),
                          labelStyle: TextStyle(
                              color: AppColors.animationBlueColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                          labelText: "Area",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: AppColors.animationBlueColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.animationGreenColor),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("level"),
                          DropdownButton<String>(
                            value: dropdownValue,
                            dropdownColor: AppColors.animationGreenColor,
                            icon: const Icon(Icons.arrow_downward),
                            elevation: 16,
                            borderRadius: BorderRadius.circular(10),
                            style: TextStyle(
                                color: AppColors.animationBlueColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                            underline: Container(
                              height: 2,
                              color: AppColors.animationBlueColor,
                            ),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            items: levelsList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                          Text("type"),
                          DropdownButton<String>(
                            value: dropdownTypeValue,
                            dropdownColor: AppColors.animationGreenColor,
                            icon: const Icon(Icons.arrow_downward),
                            elevation: 16,
                            borderRadius: BorderRadius.circular(10),
                            style: TextStyle(
                                color: AppColors.animationBlueColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                            underline: Container(
                              height: 2,
                              color: AppColors.animationBlueColor,
                            ),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownTypeValue = value!;
                              });
                            },
                            items: typeList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  MaterialButton(
                    height: 50,
                    color: AppColors.animationGreenColor,
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        'Request for Approval',
                        style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              )),
            ),
          )
        ],
      ),
    );
  }
}
