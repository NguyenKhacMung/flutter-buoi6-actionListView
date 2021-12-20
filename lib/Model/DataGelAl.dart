import 'package:session6/constants.dart';

List<item> items = [
  item(
    icon: pathImage + "time.png",
    title: "Paketinizi alma zamanı",
    subTitle: "13:00",
    value: "Değiştir",
  ),
  item(
    icon: pathImage + "house.png",
    title: "",
    subTitle: "Kadıköy, İstanbul",
    value: "Değiştir",
  ),
];

class item {
  final String icon;
  final String title;
  final String subTitle;
  final String value;

  item({
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.value,
  });
}
