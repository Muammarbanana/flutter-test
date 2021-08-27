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
              initialChildSize: 0.25,
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
          Padding(
            padding: const EdgeInsets.only(left: 34),
            child: Row(
              children: [
                SizedBox(
                  height: 17,
                  width: 17,
                  child: Image.asset("assets/clock.png"),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Status",
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 14,
                        color: Color(0xFF47623F),
                      ),
                    ),
                    Text(
                      "Sedang Mengambil Barang",
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF061737),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: SizedBox(
              width: 5,
              child: Image.asset("assets/dots.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 34),
            child: Row(
              children: [
                SizedBox(
                  height: 17,
                  width: 17,
                  child: Image.asset("assets/pin.png"),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Alamat Anda",
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 14,
                        color: Color(0xFF47623F),
                      ),
                    ),
                    Text(
                      "Taman Indah Dago No. 612",
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF061737),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 19),
          const Text(
            "Pesanan",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 19),
          _buildOrder(
            "assets/stroberi.png",
            "Strawberry",
            "100 Gram",
            "Rp. 75.000",
            "2 Item",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo .",
          ),
          _buildOrder(
            "assets/stroberi.png",
            "Nanas",
            "100 Gram",
            "Rp. 75.000",
            "2 Item",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo .",
          ),
          const Text(
            "Catatan Pesanan",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 3),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo .",
            style: TextStyle(
              fontSize: 11,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  Column _buildOrder(String photo, String name, String weight, String price,
      String itemCount, String note) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(21),
                  height: 77,
                  width: 77,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  child: Image.asset(photo),
                ),
                const SizedBox(width: 13),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      weight,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 11,
                        color: Color(0xFF979696),
                      ),
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF47623F),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 53),
              child: Text(
                itemCount,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          "Catatan Item",
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          note,
          style: const TextStyle(
            fontSize: 10,
          ),
          textAlign: TextAlign.justify,
        ),
        Container(
          margin: const EdgeInsets.only(top: 14, bottom: 19),
          width: double.infinity,
          height: 1,
          color: Colors.grey.withOpacity(0.3),
        )
      ],
    );
  }
}
