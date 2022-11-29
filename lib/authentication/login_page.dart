import 'dart:js';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:green_cleats/apps/player_app.dart';
import 'package:green_cleats/authentication/ground_registration_page.dart';
import 'package:green_cleats/authentication/main_posting_page.dart';
import 'package:green_cleats/authentication/main_registration_page.dart';
import 'package:green_cleats/authentication/trainer_registration_page.dart';
import 'package:green_cleats/utils/colors.dart';
import 'package:green_cleats/widgets/big_text.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          margin: new EdgeInsets.only(left: 0, top: 200, right: 0, bottom: 0),
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
                      // height: MediaQuery.of(context).size.height * 0.30,
                      child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: userInputWidget(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: passwordInputWidget(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 140.0),
                    child: loginButton(context),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: divider(),
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Are you a trainer?',
                        style: TextStyle(
                            color: AppColors.whiteColor, fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Register',
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () => {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                TrainerRegistrationPage()),
                                      )
                                    },
                              style: TextStyle(
                                  color: AppColors.animationGreenColor,
                                  fontSize: 20))
                        ]),
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'You have a ground?',
                        style: TextStyle(
                            color: AppColors.whiteColor, fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Register',
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () => {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                GroundRegistrationPage()),
                                      )
                                    },
                              style: TextStyle(
                                  color: AppColors.animationGreenColor,
                                  fontSize: 20))
                        ]),
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Don\'t have an account?',
                        style: TextStyle(
                            color: AppColors.whiteColor, fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Sign up',
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () => {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MainRegistration()),
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

  Widget userInputWidget() {
    return TextFormField(
      decoration: InputDecoration(
        labelStyle: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 20,
            fontWeight: FontWeight.w400),
        labelText: "Username/Email",
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

  Widget passwordInputWidget() {
    return TextFormField(
        obscureText: true,
        decoration: InputDecoration(
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

  Widget loginButton(BuildContext _context) {
    return Container(
      height: MediaQuery.of(_context).size.height * 0.07,
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
            _context,
            MaterialPageRoute(builder: (context) => PlayerApp()),
          );
        },
        child: Center(
          child: Text(
            'LOGIN',
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
                Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
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
                Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
