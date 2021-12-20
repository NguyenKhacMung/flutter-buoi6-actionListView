import 'package:flutter/material.dart';
import 'package:session6/Model/DataGelAl.dart';

class GelAl extends StatefulWidget {
  const GelAl({Key? key, required this.items}) : super(key: key);
  final List<item> items;

  @override
  _GelAlState createState() => _GelAlState();
}

class _GelAlState extends State<GelAl> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(16),
      color: Colors.white,
      height: 212,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Gel Al Seçimi",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xff2E2D38),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: widget.items.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = widget.items[index];
                  return Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 11, vertical: item.title == "" ? 17 : 11),
                    margin: EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color(0xffDFE4EC),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (item.title != "") ...[
                          Text(
                            item.title,
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff6F8094),
                            ),
                          ),
                          SizedBox(
                            height: 6.5,
                          ),
                        ],
                        Row(
                          children: [
                            Image.asset(
                              item.icon,
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Text(
                                item.subTitle,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff2E2D38),
                                ),
                              ),
                            ),
                            Text(
                              item.value,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff1D4D4F),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
