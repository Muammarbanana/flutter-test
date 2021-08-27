import 'package:flutter/material.dart';
import 'package:ordo_test/view/test3/test3_page.dart';

class Test3 extends StatefulWidget {
  const Test3({Key? key}) : super(key: key);

  @override
  _Test3State createState() => _Test3State();
}

class _Test3State extends State<Test3> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Test3Page(),
    const Test3Page(),
    const Test3Page(),
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
              AssetImage("assets/home_alt_fill.png"),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/notes.png"),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/restore.png"),
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
