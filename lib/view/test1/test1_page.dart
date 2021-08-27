import 'package:flutter/material.dart';
import 'package:ordo_test/custom_widgets/custom_appbar.dart';

class Test1Page extends StatefulWidget {
  const Test1Page({Key? key}) : super(key: key);

  @override
  _Test1PageState createState() => _Test1PageState();
}

class _Test1PageState extends State<Test1Page> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFFCF8F8),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(18, screenHeight * 0.03, 18.43, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(
                backButtonAsset: "assets/rounded_arrow_green.jpg",
                title: "LACAK PESANAN",
                titleColor: 0xFF545454,
                iconAssets: [
                  "assets/shopping_bag.png",
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              Container(), //peta
            ],
          ),
        ),
      ),
    );
  }
}
