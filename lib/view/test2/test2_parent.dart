import 'package:flutter/material.dart';
import 'package:ordo_test/view/test2/test2_page.dart';

class Test2 extends StatefulWidget {
  const Test2({Key? key}) : super(key: key);

  @override
  _Test2State createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Test2Page(),
    const Test2Page(),
    const Test2Page(),
    const Test2Page(),
    const Test2Page(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/chrome_reader_mode.png"),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/swap_horiz.png"),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/move_to_inbox.png"),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/assessment.png"),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/mdi_racing_helmet.png"),
            ),
            label: "",
          ),
        ],
        currentIndex: _selectedIndex,
        elevation: 0,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xFFC6C4C4),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: const Color(0xFFC6C4C4),
      ),
    );
  }
}
