import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session6/Model/MenuListItem.dart';
import 'package:session6/component/AppBar.dart';
import 'package:session6/component/GelAl.dart';
import 'package:session6/component/ItemsDetail.dart';
import 'package:session6/component/btn.dart';
import 'package:session6/constants.dart';
import 'package:session6/route/path.dart';

class Detail extends StatefulWidget {
  static String path = detail;
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  List<item> items = [
    item(
      icon: "assets/images/time.png",
      title: "Paketinizi alma zamanı",
      subTitle: "13:00",
      value: "Değiştir",
    ),
    item(
      icon: "assets/images/house.png",
      title: "",
      subTitle: "Kadıköy, İstanbul",
      value: "Değiştir",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    bool toggle = false;
    return Scaffold(
      appBar: appBar(
        title: "Sipariş Detayı",
        more: () {},
        notification: () {},
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GelAl(
                      items: items,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 13),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Menu",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xfff2E2D38),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Add more",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff1D4D4F),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ItemsDetail(
                            img: "assets/images/im1.png",
                            title: "Hazelnut Coffee",
                            size: "20 TL",
                            ok: () {
                              Navigator.pushNamed(context, menuDetail);
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 24,
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 26),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Color(0xffDFE4EC),
                                    width: 2,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total",
                                    style: heading,
                                  ),
                                  Text(
                                    "20.000 TL",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: darkColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      color: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 23),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Ödeme Şekli",
                                style: heading,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      "Yükleme yap",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: darkGreen,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 20,
                                      color: darkGreen,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 19, vertical: 18),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/bg.png"),
                                    alignment: Alignment(-1, 0),
                                  ),
                                  color: Color(0xff4AA366),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Toplam Param",
                                      style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      "55,35 TL",
                                      style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 19, vertical: 18),
                                decoration: BoxDecoration(
                                  color: Color(0xffDFE4EC),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: [
                                    Text("Kredi Banka Kartı"),
                                    Container(
                                      height: 10,
                                      child: CupertinoSwitch(
                                        activeColor: Color(0xfffe734c),
                                        value: !toggle,
                                        onChanged: (bool value) {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
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
                  Navigator.pushNamed(context, menuDetail);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
