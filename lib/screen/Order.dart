import 'package:flutter/material.dart';
import 'package:session6/Model/MenuListItem.dart';
import 'package:session6/Model/TabMenu.dart';
import 'package:session6/component/AppBar.dart';
import 'package:session6/component/GelAl.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        notification: () {},
        more: () {},
        title: "Sipariş Yarat",
      ),
      body: SafeArea(
        child: Column(
          children: [
            GelAl(items: items),
            SizedBox(
              height: 7,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 13),
                      child: Text(
                        "Menu",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfff2E2D38),
                        ),
                      ),
                    ),
                    tabMenu(),
                    SizedBox(
                      height: 13,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: itemMenus.length,
                          itemBuilder: (BuildContext context, int index) {
                            final item = itemMenus[index];
                            return listItem(
                              img: item.img,
                              size: item.size,
                              title: item.title,
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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

List<itemMenu> itemMenus = [
  itemMenu(
    img: "assets/images/im1.png",
    title: "Hazelnut Coffee",
    size: "20 TL",
  ),
  itemMenu(
    img: "assets/images/im2.png",
    title: "Caramel Frappucino",
    size: "20 TL",
  ),
  itemMenu(
    img: "assets/images/im1.png",
    title: "Caramel Frappucino",
    size: "20 TL",
  ),
  itemMenu(
    img: "assets/images/im3.png",
    title: "Mocha Frappuccino",
    size: "20 TL",
  ),
  itemMenu(
    img: "assets/images/im4.png",
    title: "Espresso Frappuccino",
    size: "20 TL",
  ),
  itemMenu(
    img: "assets/images/im1.png",
    title: "Caramel Frappucino",
    size: "20 TL",
  ),
  itemMenu(
    img: "assets/images/im3.png",
    title: "Mocha Frappuccino",
    size: "20 TL",
  ),
];

class itemMenu {
  final String img;
  final String title;
  final String size;

  itemMenu({
    required this.img,
    required this.title,
    required this.size,
  });
}
