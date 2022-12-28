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
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.people,
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
                        borderSide:
                            BorderSide(color: AppColors.animationGreenColor),
                      ),
                    ),
                  ),
                  DropdownButton<String>(
                    value: dropdownValue,
                    dropdownColor: AppColors.animationGreenColor,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    borderRadius: BorderRadius.circular(10),
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                    underline: Container(
                      height: 2,
                      color: AppColors.whiteColor,
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
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.people,
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
                        borderSide:
                            BorderSide(color: AppColors.animationGreenColor),
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.people,
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
                        borderSide:
                            BorderSide(color: AppColors.animationGreenColor),
                      ),
                    ),
                  ),
                  DropdownButton<String>(
                    value: dropdownTypeValue,
                    dropdownColor: AppColors.animationGreenColor,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    borderRadius: BorderRadius.circular(10),
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                    underline: Container(
                      height: 2,
                      color: AppColors.whiteColor,
                    ),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownTypeValue = value!;
                      });
                    },
                    items:
                        typeList.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  MaterialButton(
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
            )
          ],
        ),
      ),
    );
  }
}
