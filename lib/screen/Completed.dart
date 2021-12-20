import 'package:flutter/material.dart';
import 'package:session6/component/AppBar.dart';
import 'package:session6/component/btn.dart';
import 'package:session6/constants.dart';
import 'package:session6/route/path.dart';

class Completed extends StatefulWidget {
  static String path = completed;
  const Completed({Key? key}) : super(key: key);

  @override
  _CompletedState createState() => _CompletedState();
}

class _CompletedState extends State<Completed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        title: "Sipariş Tamamlandı",
        more: () {},
        notification: () {},
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
            ),
            Image.asset(
              pathImage + "Success.png",
              width: 114,
              height: 114,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Bizden sipariş verdiğiniz için teşekkürler!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: darkColor,
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.5,
                            color: Color(0xffDFE4EC),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 21,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 13, right: 3),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Tebrikler",
                                    style: heading,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: darkGreen,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "+ 2",
                                          style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Icon(
                                          Icons.star_border,
                                          color: gold,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13),
                              child: Row(
                                children: [
                                  Image.asset(
                                    pathImage + "im1.png",
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Bizden 2 puan kazandın"),
                                      Text(
                                        "Hazelnut Coffee",
                                        style: heading,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 13),
                        decoration: BoxDecoration(
                          color: buttonGrey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            Text("Best sellers to best sellers increased"),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 110,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      width: 20,
                                      decoration: BoxDecoration(
                                        color: darkGreen,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 17,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: darkGreen,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "7 / 10",
                                  style: TextStyle(
                                    color: darkGreen,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 29, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(143, 155, 179, 0.2),
                    spreadRadius: 0,
                    blurRadius: 16,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: btn(
                text: "Öde",
                function: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, home, (route) => false);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
