import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ordo_test/view/homepage.dart';

class Test3Page extends StatefulWidget {
  const Test3Page({Key? key}) : super(key: key);

  @override
  _Test3PageState createState() => _Test3PageState();
}

class _Test3PageState extends State<Test3Page> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFFEF9F9),
      body: Stack(children: [
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(18, screenHeight * 0.06, 18.43, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.offAll(() => const HomePage());
                          },
                          child: SizedBox(
                            height: 22,
                            width: 22,
                            child:
                                Image.asset("assets/rounded_arrow_orange.jpg"),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "FINANSIAL",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF545454),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: 22,
                            width: 22,
                            child:
                                Image.asset("assets/assessment_gradient.png"),
                          ),
                        ),
                        const SizedBox(width: 17),
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: 22,
                            width: 22,
                            child: Image.asset("assets/bell.png"),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
      floatingActionButton: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 3, right: 3),
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            colors: [Color(0xFF53B2FC), Color(0xFF127CCE)],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Complain",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 28, left: 91),
              child: ImageIcon(
                AssetImage("assets/arrow_narrow_right.png"),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
