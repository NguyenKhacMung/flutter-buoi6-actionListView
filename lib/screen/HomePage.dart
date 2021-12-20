import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:session6/component/AppBar.dart';
import 'package:session6/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(
        notification: () {},
        more: () {},
        title: "Starbucks",
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(18, 30, 18, 27),
                    padding: EdgeInsets.fromLTRB(26, 60, 26, 20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/bg.png"),
                        alignment: Alignment(-1, 0),
                      ),
                      color: Color(0xff4AA366),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(26, 59, 52, 0.4),
                          spreadRadius: 0,
                          blurRadius: 33,
                          offset: Offset(0, 10), // changes position of shadow
                        ),
                      ],
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "55,35 TL",
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text(
                                    "Yükleme yap",
                                    style: TextStyle(
                                      color: Color(0xffffffff),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 20,
                                    color: Color(0xffffffff),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        // Image.asset(
                        //   "assets/images/Chart.png",
                        //   width: 125,
                        //   height: 125,
                        //   fit: BoxFit.cover,
                        // ),
                        Container(
                          height: 125,
                          width: 125,
                          child: Stack(
                            children: [
                              PieChart(
                                PieChartData(
                                  sectionsSpace: 0,
                                  startDegreeOffset: -90,
                                  sections: [
                                    PieChartSectionData(
                                      color: Color(0xff1D4D4F).withOpacity(0.6),
                                      value: 50,
                                      radius: 8,
                                      showTitle: false,
                                    ),
                                    PieChartSectionData(
                                      color: Colors.transparent,
                                      value: 20,
                                      radius: 13,
                                      title: "6/15",
                                      titleStyle: TextStyle(
                                        color: Color(0xff1D4D4F),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      titlePositionPercentageOffset: -0.05,
                                    ),
                                    PieChartSectionData(
                                      color: Color(0xff1D4D4F),
                                      value: 50,
                                      radius: 13,
                                      showTitle: false,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned.fill(
                                child: InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/images/chart2.png",
                                    // width: 60,
                                    // height: 62,
                                    // fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star_outline,
                                            color: Color(0xffC1A063),
                                            size: 30,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "0",
                                            style: TextStyle(
                                              color: Color(0xff2E2D38),
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "Yıldız bakiyesi",
                                        style: TextStyle(
                                          color: Color(0xff2E2D38),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset("assets/images/img1.png"),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "0",
                                            style: TextStyle(
                                              color: Color(0xff2E2D38),
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "İkram içecek",
                                        style: TextStyle(
                                          color: Color(0xff2E2D38),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Ink(
                                decoration: BoxDecoration(
                                  color: Color(0xffDFE4EC),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 16),
                                    child: Text("Detaylar"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sipariş Detayı",
                              style: heading,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  color: buttonGrey,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 10),
                                child: Text(
                                  "Hazırlanıyor",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: darkGrey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "assets/images/im1.png",
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Hazelnut Coffee",
                                  style: heading,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Adet: 2",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: darkColor,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    Text(
                                      "Boyut: Venti",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: darkColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Mağaza Adresi",
                              style: TextStyle(
                                fontSize: 14,
                                color: gray,
                              ),
                            ),
                            Text(
                              "Alma Zamını",
                              style: TextStyle(
                                fontSize: 14,
                                color: gray,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/address.png"),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Kozyatağı Kadıköy-(6.7km)",
                              style: TextStyle(
                                fontSize: 14,
                                color: darkColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(),
                            Image.asset("assets/images/time2.png"),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "13:00",
                              style: TextStyle(
                                fontSize: 14,
                                color: darkColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.2,
                  )
                ],
              ),
            ),
            DraggableScrollableSheet(
                minChildSize: 0.2,
                maxChildSize: 0.7,
                initialChildSize: 0.3,
                builder: (BuildContext context, scrollController) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
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
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15, bottom: 23),
                          width: 81,
                          height: 6,
                          decoration: BoxDecoration(
                            color: Color(0xffDFE4EC),
                            borderRadius: BorderRadius.circular(32),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                              controller: scrollController,
                              scrollDirection: Axis.vertical,
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {
                                // final items = item[index];
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Kampanyalar",
                                      style: TextStyle(
                                        color: Color(0xff2E2D38),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 21,
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(
                                          20,
                                        ),
                                      ),
                                      child: Image.asset(
                                        "assets/images/img2.png",
                                        width: double.infinity,
                                        height: 144,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "Lorem Ipsum",
                                      style: TextStyle(
                                        color: Color(0xff2E2D38),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 9,
                                    ),
                                    Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet gravida quam aliquam aenean fermentum non accumsan.",
                                      style: TextStyle(
                                        color: Color(0xff2E2D38),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 23,
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment(1, 0.9),
        child: FloatingActionButton(
          backgroundColor: Color(0xff4AA366),
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
