import 'package:flutter/material.dart';
import 'package:session6/Model/DataGelAl.dart';
import 'package:session6/Model/DataProducts.dart';
import 'package:session6/component/MenuListItem.dart';
import 'package:session6/component/TabMenu.dart';
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
            GelAl(
              items: items,
            ),
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
                          controller: ScrollController(),
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
