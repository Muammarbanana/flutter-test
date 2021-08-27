import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ordo_test/view/homepage.dart';

class Test2Page extends StatefulWidget {
  const Test2Page({Key? key}) : super(key: key);

  @override
  _Test2PageState createState() => _Test2PageState();
}

class _Test2PageState extends State<Test2Page> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFFCF8F8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(18, screenHeight * 0.03, 18.43, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.offAll(const HomePage());
                          },
                          child: SizedBox(
                            height: 22,
                            width: 22,
                            child: Image.asset("assets/rounded_arrow.jpg"),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "PORTFOLIO VENDOR",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF202237),
                          ),
                        )
                      ],
                    ),
                    const ImageIcon(
                      AssetImage("assets/notifications.png"),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 52,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 48,
                          backgroundImage: AssetImage("assets/photo1.png"),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "5.0",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Rating",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "100",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Review",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "162",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Pesanan",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.009),
                const Text(
                  "Dina Florist",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const Text(
                    "Toko Bunga terbaiks se Indonesia Raya \nHarga Murah Produk Berkualitas"),
                SizedBox(height: screenHeight * 0.012),
                SizedBox(
                  height: 29,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: const BorderSide(
                        width: 0.5,
                        color: Colors.grey,
                      ),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "PORTFOLIO",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.002),
                GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  crossAxisCount: 3,
                  children: [
                    buildCard("assets/flower1.png", "Nama Customer", 5.0),
                    buildCard("assets/flower3.png", "Nama Customer", 5.0),
                    buildCard("assets/flower2.png", "Nama Customer", 5.0),
                    buildCard("assets/flower2.png", "Nama Customer", 5.0),
                    buildCard("assets/flower1.png", "Nama Customer", 5.0),
                    buildCard("assets/flower3.png", "Nama Customer", 5.0),
                    buildCard("assets/flower1.png", "Nama Customer", 5.0),
                    buildCard("assets/flower2.png", "Nama Customer", 5.0),
                    buildCard("assets/flower3.png", "Nama Customer", 5.0),
                    buildCard("assets/flower3.png", "Nama Customer", 5.0),
                    buildCard("assets/flower1.png", "Nama Customer", 5.0),
                    buildCard("assets/flower2.png", "Nama Customer", 5.0),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Stack buildCard(String image, String customerName, double rating) {
    return Stack(
      children: [
        Image.asset(image),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.only(left: 5),
            height: 22,
            width: double.infinity,
            color: Colors.black.withOpacity(0.41),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Nama Customer",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            margin: const EdgeInsets.only(top: 7, right: 6),
            width: 38,
            height: 13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [Color(0xFF202237), Color(0xFF595FA0)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 8.5,
                  width: 8.5,
                  child: Image.asset("assets/star.png"),
                ),
                Text(
                  rating.toString(),
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
