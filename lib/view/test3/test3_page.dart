import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ordo_test/view/homepage.dart';

class Test3Page extends StatefulWidget {
  const Test3Page({Key? key}) : super(key: key);

  @override
  _Test3PageState createState() => _Test3PageState();
}

class _Test3PageState extends State<Test3Page> {
  List<Widget> rebateList = [];
  List<Widget> rebateHistoryList = [];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    rebateList = _generateDummyRebateList();
    rebateHistoryList = _generateDummyRebateHistory();

    return Scaffold(
      backgroundColor: const Color(0xFFFEF9F9),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding:
                    EdgeInsets.fromLTRB(18, screenHeight * 0.03, 18.43, 60),
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
                                child: Image.asset(
                                    "assets/rounded_arrow_orange.jpg"),
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
                                child: Image.asset(
                                    "assets/assessment_gradient.png"),
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
                    ),
                    SizedBox(height: screenHeight * 0.05),
                    _buildCard("Total Bonus", "Rp. 5.000.000,00"),
                    SizedBox(height: screenHeight * 0.02),
                    _buildCard("Pending Bonus", "Rp. 50.000,00"),
                    SizedBox(height: screenHeight * 0.02),
                    Container(
                      padding: const EdgeInsets.only(top: 11, bottom: 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Daftar Rebate",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 26,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          primary: Colors.orange,
                                          elevation: 0,
                                        ),
                                        onPressed: () {},
                                        child: const Text(
                                          "Semua",
                                          style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    SizedBox(
                                      height: 26,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          primary: Colors.blue,
                                          elevation: 0,
                                        ),
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            Text(
                                              "Filter",
                                              style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 9,
                                              width: 9,
                                              child: ImageIcon(
                                                AssetImage(
                                                    "assets/options.png"),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            height: 1,
                            width: double.infinity,
                            color: const Color(0xFFBBBBBB),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [...rebateList],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Container(
                      padding: const EdgeInsets.fromLTRB(11, 11, 11, 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Riwayat Rebate",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Colors.orange,
                            ),
                          ),
                          const SizedBox(height: 19),
                          ...rebateHistoryList,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.white.withOpacity(0.7),
              ),
            )
          ],
        ),
      ),
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

  Container _buildCard(String text, String nominal) {
    return Container(
      padding: const EdgeInsets.fromLTRB(32, 23, 0, 23),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 20.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          Text(
            nominal,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Color(0xFF6D6D6D),
            ),
          ),
        ],
      ),
    );
  }

  Row _buildRebateList(String id, String nominal, String tanggal) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "ID Transaksi",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            Text(
              id,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Color(0xFF3D6670),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Rebate",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            Text(
              nominal,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0xFF41BE06),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Tanggal",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            Text(
              tanggal,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0xFF41BE06),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row _buildRebateHistory(String id, String tanggal, String nominal) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              height: 33,
              width: 33,
              child: Image.asset("assets/receipt.png"),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  id,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF212529),
                  ),
                ),
                Text(
                  tanggal,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Color(0xFF6C757D),
                  ),
                ),
              ],
            )
          ],
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(12, 5, 12, 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.orange,
          ),
          child: Text(
            nominal,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  List<Widget> _generateDummyRebateList() {
    List<Widget> rebateList = [];
    rebateList
        .add(_buildRebateList("#EC1201211", "Rp. 150.000", "14 Juli 2021"));
    rebateList.add(const SizedBox(height: 18));
    rebateList
        .add(_buildRebateList("#EC1201211", "Rp. 150.000", "15 Juli 2021"));
    rebateList.add(const SizedBox(height: 18));
    rebateList
        .add(_buildRebateList("#EC1201211", "Rp. 150.000", "15 Juli 2021"));
    rebateList.add(const SizedBox(height: 18));
    rebateList
        .add(_buildRebateList("#EC1201211", "Rp. 150.000", "17 Juli 2021"));
    rebateList.add(const SizedBox(height: 18));
    rebateList
        .add(_buildRebateList("#EC1201211", "Rp. 150.000", "17 Juli 2021"));
    rebateList.add(const SizedBox(height: 18));
    rebateList
        .add(_buildRebateList("#EC1201211", "Rp. 150.000", "18 Juli 2021"));
    return rebateList;
  }

  List<Widget> _generateDummyRebateHistory() {
    List<Widget> listRebateHistory = [];
    listRebateHistory.add(
        _buildRebateHistory("#REBATEC120211", "20 Juli 2021", "Rp. 150.000"));
    listRebateHistory.add(const SizedBox(height: 18));
    listRebateHistory.add(
        _buildRebateHistory("#REBATEC120211", "20 Juli 2021", "Rp. 150.000"));
    listRebateHistory.add(const SizedBox(height: 18));
    listRebateHistory.add(
        _buildRebateHistory("#REBATEC120211", "20 Juli 2021", "Rp. 150.000"));
    listRebateHistory.add(const SizedBox(height: 18));
    listRebateHistory.add(
        _buildRebateHistory("#REBATEC120211", "20 Juli 2021", "Rp. 150.000"));
    listRebateHistory.add(const SizedBox(height: 18));
    listRebateHistory.add(
        _buildRebateHistory("#REBATEC120211", "20 Juli 2021", "Rp. 150.000"));
    listRebateHistory.add(const SizedBox(height: 18));
    listRebateHistory.add(
        _buildRebateHistory("#REBATEC120211", "20 Juli 2021", "Rp. 150.000"));
    listRebateHistory.add(const SizedBox(height: 18));
    return listRebateHistory;
  }
}
