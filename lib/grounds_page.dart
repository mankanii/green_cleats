import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GroundsPage extends StatefulWidget {
  const GroundsPage({super.key});

  @override
  State<GroundsPage> createState() => _GroundsPageState();
}

class _GroundsPageState extends State<GroundsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Grounds Page"),
        ),
      ),
    );
  }
}