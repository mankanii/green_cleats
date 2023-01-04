import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:green_cleats/apps/PlayersApp/groundBooking/payment_success.dart';
import 'package:green_cleats/utils/colors.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int? value = 0;
  final paymentLabels = [
    'Credit Card / Debit Card',
    'Cash on ground',
    'Easy Paisa / Jazz Cash'
  ];
  final paymentIcons = [Icons.credit_card, Icons.money_off, Icons.payment];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.animationBlueColor,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Choose your payment method",
              style: TextStyle(color: Colors.grey[400], fontSize: 28.0),
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Radio(
                        activeColor: AppColors.animationGreenColor,
                        value: index,
                        groupValue: value,
                        onChanged: (i) => setState(() => value = i)),
                    title: Text(
                      paymentLabels[index],
                      style: TextStyle(color: AppColors.animationBlueColor),
                    ),
                    trailing: Icon(
                      paymentIcons[index],
                      color: AppColors.animationGreenColor,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: paymentLabels.length),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentSuccess()),
                )
              },
              height: 60.0,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: AppColors.animationGreenColor,
              child: Text(
                "PAY",
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
