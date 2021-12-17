import 'package:flutter/material.dart';
import 'package:session6/component/AppBar.dart';
import 'package:session6/component/btn.dart';
import 'package:session6/constants.dart';
import 'package:session6/route/path.dart';

class MenuDetail extends StatefulWidget {
  static String path = menuDetail;
  const MenuDetail({Key? key}) : super(key: key);

  @override
  _MenuDetailState createState() => _MenuDetailState();
}

class _MenuDetailState extends State<MenuDetail> {
  int count = 1;
  int active = 1;
  void setCount(bool val) {
    setState(() {
      if (val) {
        count++;
      } else if (count > 1) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> img = [
      'assets/images/S.png',
      'assets/images/img1.png',
      'assets/images/L.png',
    ];
    return Scaffold(
      appBar: appBar(
        title: "Ürün Detayı",
        more: () {},
        notification: () {},
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 65),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/im1.png",
                          width: 232,
                          height: 232,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 65),
                      Text(
                        "Toffee Nut Frappuccino",
                        style: title,
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "Toffee nut syrup is blended with ice and milk, then topped with whipped cream and a delicious toffee nut flavoured topping.",
                        style: TextStyle(
                          fontSize: 14,
                          color: darkColor.withOpacity(0.5),
                        ),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.05),
                    spreadRadius: 0,
                    blurRadius: 30,
                    offset: Offset(0, -15),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "24,50 TL",
                    style: TextStyle(
                      color: darkColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5 - 28,
                        padding: EdgeInsets.symmetric(
                            horizontal: 14, vertical: 11.5),
                        decoration: BoxDecoration(
                          color: Color(0xffDFE4EC),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setCount(false);
                              },
                              child: Icon(
                                Icons.remove,
                                color: Color(0xff4D5661),
                                size: 17,
                              ),
                            ),
                            Text(
                              "$count",
                              style: TextStyle(
                                color: Color(0xff4D5661),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setCount(true);
                              },
                              child: Icon(
                                Icons.add,
                                color: Color(0xff4D5661),
                                size: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      for (int i = 0; i < img.length; i++) ...[
                        InkWell(
                          onTap: () {
                            setState(() {
                              active = i;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 42,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: i == active
                                  ? darkGreen.withOpacity(0.4)
                                  : softGrey,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 1.22,
                                color: i == active ? darkGreen : buttonGrey,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(img[i]),
                            ),
                          ),
                        ),
                        if (i < img.length - 1)
                          SizedBox(
                            width: 10,
                          ),
                      ]
                    ],
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  btn(
                    text: "Satın Al",
                    function: () {
                      Navigator.pushNamed(context, completed);
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
