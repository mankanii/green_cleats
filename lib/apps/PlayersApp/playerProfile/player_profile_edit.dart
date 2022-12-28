import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:green_cleats/utils/colors.dart';
import 'package:green_cleats/widgets/add_image_PPeditMode.dart';
import 'package:green_cleats/widgets/rating_bar.dart';

class ProfileEditMode extends StatefulWidget {
  const ProfileEditMode({super.key});

  @override
  State<ProfileEditMode> createState() => _ProfileEditModeState();
}

class _ProfileEditModeState extends State<ProfileEditMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text("Edit Profile",
            style: TextStyle(color: AppColors.animationBlueColor)),
        backgroundColor: AppColors.animationGreenColor,
        leading: GestureDetector(
          child: Icon(
            Icons.close_rounded,
            color: AppColors.animationBlueColor,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(padding: EdgeInsets.all(12.0), children: [
          buildTextField("Full Name*", ""),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: buildTextField("Position*", "")),
              SizedBox(
                width: 10,
              ),
              Expanded(child: buildTextField("Age*", "")),
            ],
          ),
          buildTextField("Description", ""),
          buildTextField("Achievements", ""),
          buildTextField("Experience", ""),
          editModeText("Ratings"),
          const RatingBarWidget(),
          // editModeText("Current Teams"),
          editModeText("Images"),
          const AddImage(),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Save',
        backgroundColor: AppColors.animationGreenColor,
        child: const Text("Save"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: AppColors.animationGreenColor,
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 90),
              child: IconButton(
                icon: Icon(
                  Icons.people,
                  color: AppColors.animationGreenColor,
                ),
                onPressed: () {
                  //Nothing is to be done here
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding editModeText(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: Text(
        label,
        style: TextStyle(
          color: AppColors.animationBlueColor,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Padding buildTextField(String labelText, String placeholder) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        style: TextStyle(color: AppColors.animationBlueColor),
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.animationGreenColor)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.animationBlueColor)),
          contentPadding: const EdgeInsets.only(bottom: 3),
          labelText: labelText,
          labelStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.animationBlueColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: TextStyle(
            color: AppColors.animationBlueColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
