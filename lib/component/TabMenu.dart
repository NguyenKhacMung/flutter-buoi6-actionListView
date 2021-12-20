import 'package:flutter/material.dart';

class tabMenu extends StatefulWidget {
  const tabMenu({Key? key}) : super(key: key);

  @override
  _tabMenuState createState() => _tabMenuState();
}

class _tabMenuState extends State<tabMenu> {
  int onTab = 0;
  List<String> tabs = [
    "Çok Satanlar",
    "Yiyecek",
    "Yeniler",
    "Kahveler",
    "Çok Satanlar",
    "Yiyecek",
    "Yeniler",
    "Kahveler",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24),
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tabs.length,
          itemBuilder: (BuildContext context, int index) {
            final tab = tabs[index];
            return InkWell(
              onTap: () {
                setState(() {
                  onTab = index;
                });
              },
              child: Container(
                margin: EdgeInsets.only(left: 6),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color:
                      index == onTab ? Color(0xffDFE4EC) : Colors.transparent,
                  border: Border.all(
                    color: Color(0xffDFE4EC),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  tab,
                  style: TextStyle(
                    color: Color(0xff2E2D38),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
