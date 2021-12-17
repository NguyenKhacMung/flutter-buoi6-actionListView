import 'package:flutter/material.dart';
import 'package:session6/route/path.dart';
import 'package:session6/screen/HomePage.dart';
import 'package:session6/screen/Order.dart';

class Home extends StatefulWidget {
  static String path = home;
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  List<String> icons = [
    "assets/images/tab1.png",
    "assets/images/tab2.png",
    "assets/images/tab3.png",
    "assets/images/tab4.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          HomePage(),
          Order(),
        ],
        onPageChanged: _onItemTapped,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: List.generate(
            icons.length,
            (index) => BottomNavigationBarItem(
              icon: Image.asset(
                icons[index],
                color: _selectedIndex == index
                    ? Color(0xff4AA366)
                    : Color(0xff6F8094),
              ),
              label: '',
            ),
          ),
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onTabTapped,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
