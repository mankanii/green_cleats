import 'dart:js';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:green_cleats/authentication/login_page.dart';
import 'package:green_cleats/utils/colors.dart';
import 'package:green_cleats/widgets/big_text.dart';
import 'package:green_cleats/widgets/gender_widget.dart';
import 'package:intl/intl.dart';

// class TrainerRegistrationPage extends StatelessWidget {
//   const TrainerRegistrationPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
const List<String> list = <String>[
  'Football Coach',
  'Physical Trainer',
  'Gym Trainer',
  'Other'
];

class TrainerRegistrationPage extends StatefulWidget {
  const TrainerRegistrationPage({super.key});

  @override
  State<TrainerRegistrationPage> createState() =>
      _TrainerRegistrationPageState();
}

class _TrainerRegistrationPageState extends State<TrainerRegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.animationGreenColor,
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: NetworkImage("assets/images/"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Container(
          padding: const EdgeInsets.all(40),
          margin: new EdgeInsets.only(left: 0, top: 130, right: 0, bottom: 0),
          decoration: BoxDecoration(
            color: AppColors.animationBlueColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60.0),
                topRight: Radius.circular(60.0)),
          ),
          // padding: EdgeInsets.symmetric(
          //     vertical: MediaQuery.of(context).size.height * 0.05,
          //     horizontal: MediaQuery.of(context).size.width * 0.4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                child: headerImage(context),
              ),
              Form(
                  child: Container(
                      // height: MediaQuery.of(context).size.height * 0.7,
                      child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: userInputWidget("Name", Icons.person),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: userInputWidget("Email", Icons.email_rounded),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: userInputWidget(
                        "Phone Number", Icons.phone_callback_rounded),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: datePicker(context),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: expertiseDropDown()),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: GenderWidget(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: signUpButton(context),
                  ),
                  divider(),
                  // RichText(
                  //   text: TextSpan(
                  //       text: 'Are you a trainer?',
                  //       style: TextStyle(
                  //           color: AppColors.whiteColor, fontSize: 20),
                  //       children: <TextSpan>[
                  //         TextSpan(
                  //             text: ' Register',
                  //             style: TextStyle(
                  //                 color: AppColors.animationGreenColor,
                  //                 fontSize: 20))
                  //       ]),
                  // ),
                  // RichText(
                  //   text: TextSpan(
                  //       text: 'You have a ground?',
                  //       style: TextStyle(
                  //           color: AppColors.whiteColor, fontSize: 20),
                  //       children: <TextSpan>[
                  //         TextSpan(
                  //             text: ' Register',
                  //             style: TextStyle(
                  //                 color: AppColors.animationGreenColor,
                  //                 fontSize: 20))
                  //       ]),
                  // ),
                  RichText(
                    text: TextSpan(
                        text: 'Already have an account?',
                        style: TextStyle(
                            color: AppColors.whiteColor, fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Log in',
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () => {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()),
                                      )
                                    },
                              style: TextStyle(
                                  color: AppColors.animationGreenColor,
                                  fontSize: 20))
                        ]),
                  ),
                ],
              )))
            ],
          ),
        ),
      ),
    );
  }

  Widget headerImage(BuildContext _context) {
    return Container(
      child: Image.asset(
        "assets/images/greenGC.png",
        height: 100,
        width: 100,
      ),
    );
  }

  Widget userInputWidget(text, icon) {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(icon, color: AppColors.whiteColor),
        labelStyle: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 20,
            fontWeight: FontWeight.w400),
        labelText: text,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.whiteColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.animationGreenColor),
        ),
      ),
    );
  }

  Widget signUpButton(BuildContext _context) {
    return Container(
      height: MediaQuery.of(_context).size.height * 0.07,
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
            _context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        child: Center(
          child: Text(
            'SIGN UP',
            style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 20,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: AppColors.animationGreenColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  Widget divider() {
    return Container(
      margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: (Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Divider(color: Colors.black, thickness: 1),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text("OR"),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Divider(color: Colors.black, thickness: 1),
              ],
            ),
          ),
        ],
      )),
    );
  }

  TextEditingController _date = TextEditingController();
  Widget datePicker(context) {
    return TextField(
      controller: _date,
      style: TextStyle(
          color: AppColors.whiteColor,
          fontSize: 20,
          fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        icon: Icon(Icons.calendar_today_rounded, color: AppColors.whiteColor),
        labelText: "Date of birth",
        labelStyle: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 20,
            fontWeight: FontWeight.w400),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.whiteColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.animationGreenColor),
        ),
      ),
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2101));

        if (pickedDate != null) {
          setState(() {
            _date.text = DateFormat('yyyy-MM-dd').format(pickedDate);
          });
        }
      },
    );
  }

  Widget passwordInputWidget() {
    return TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.lock_rounded, color: AppColors.whiteColor),
          labelStyle: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 20,
              fontWeight: FontWeight.w400),
          labelText: "Password",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.whiteColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.animationGreenColor),
          ),
        ));
  }

  String dropdownValue = list.first;
  Widget expertiseDropDown() {
    return DropdownButton<String>(
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
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
