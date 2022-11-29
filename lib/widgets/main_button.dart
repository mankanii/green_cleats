import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final String? image;
  final Color? txtColor;
  final Color btnColor;

  const MainButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.image,
      this.txtColor,
      required this.btnColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
      height: 70.0,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
          color: btnColor, borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (image != null)
            Image.asset(
              'assets/images/$image',
              height: 25.0,
              width: 60.0,
            ),
          Text(text)
        ],
      ),
    ));
  }
}
