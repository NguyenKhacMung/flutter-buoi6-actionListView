import 'package:flutter/material.dart';

class listItem extends StatefulWidget {
  const listItem({
    Key? key,
    required this.img,
    required this.title,
    required this.size,
  }) : super(key: key);

  final String img;
  final String title;
  final String size;
  @override
  _listItemState createState() => _listItemState();
}

class _listItemState extends State<listItem> {
  bool action = true;
  int count = 1;
  void setCount(bool val) {
    setState(() {
      if (val) {
        count++;
      } else if (count > 1) {
        count--;
      }
    });
  }

  void changeAction() {
    setState(() {
      action = !action;
    });
  }

  List<String> dropDown = ['Venti', 'Two', 'Free'];
  String select = 'Venti';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 17, 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              widget.img,
              width: 86,
              height: 86,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    color: Color(0xff2E2D38),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  widget.size,
                  style: TextStyle(
                    color: Color(0xff2E2D38),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                if (!action)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 7),
                        decoration: BoxDecoration(
                          color: Color(0xffDFE4EC),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
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
                            SizedBox(
                              width: 13,
                            ),
                            Text(
                              "$count",
                              style: TextStyle(
                                color: Color(0xff4D5661),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 13,
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
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffDFE4EC),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 3.5),
                        child: DropdownButton<String>(
                          value: select,
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Icon(Icons.keyboard_arrow_down),
                          ),
                          iconSize: 17,
                          elevation: 0,
                          isDense: true,
                          underline: SizedBox(),
                          style: TextStyle(
                            color: Color(0xff4D5661),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              select = newValue!;
                            });
                          },
                          items: dropDown.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changeAction();
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Color(0xff4AA366),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Icon(
                            Icons.check,
                            size: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
              ],
            ),
          ),
          if (action)
            InkWell(
              onTap: () {
                changeAction();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 21, vertical: 5),
                decoration: BoxDecoration(
                  color: Color(0xff4AA366),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  "Ekle",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
