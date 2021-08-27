import 'package:flutter/material.dart';
import 'package:ordo_test/view/test1/test1_page.dart';

class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Test1Page(),
    const Test1Page(),
    const Test1Page(),
    const Test1Page(),
    const Test1Page(),
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
              AssetImage("assets/assignment.png"),
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
              AssetImage("assets/home_alt_fill.png"),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/notifications_none.png"),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/person.png"),
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
