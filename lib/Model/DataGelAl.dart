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
