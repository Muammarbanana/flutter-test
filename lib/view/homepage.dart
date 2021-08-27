import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ordo_test/custom_widgets/rounded_button.dart';
import 'package:ordo_test/view/test2/test2_parent.dart';
import 'package:ordo_test/view/test3/test3_parent.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(57, screenHeight * 0.206, 52, 0),
          child: Column(
            children: [
              const Text(
                "Made By",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "[A. Muammar]",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.123),
              RoundedButton(onPressed: () {}, text: "Test 1"),
              SizedBox(height: screenHeight * 0.03),
              RoundedButton(
                  onPressed: () {
                    Get.to(() => const Test2());
                  },
                  text: "Test 2"),
              SizedBox(height: screenHeight * 0.03),
              RoundedButton(
                  onPressed: () {
                    Get.to(() => const Test3());
                  },
                  text: "Test 3")
            ],
          ),
        ),
      ),
    );
  }
}
