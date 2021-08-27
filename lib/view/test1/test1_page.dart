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
        child: Stack(
          children: [
            Padding(
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
            DraggableScrollableSheet(
              initialChildSize: 0.28,
              minChildSize: 0.28,
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: _buildSheet(),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Container _buildSheet() {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 9, 23, 20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0.0, -5.0),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 4.3,
              width: 103,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: const Color(0xFF47623F),
              ),
            ),
          ),
          const SizedBox(height: 28),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 65,
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset("assets/vector.png")),
                        Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            height: 58,
                            width: 58,
                            child: Hero(
                              tag: "",
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(150),
                                child: const Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/photo2.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "David Morel",
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "B 1201 FA",
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF92D274),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(21),
                  height: 77,
                  width: 77,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF3AB648), Color(0xFF526430)],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  child: Image.asset("assets/phone.png"),
                ),
              )
            ],
          ),
          const SizedBox(height: 31),
        ],
      ),
    );
  }
}
