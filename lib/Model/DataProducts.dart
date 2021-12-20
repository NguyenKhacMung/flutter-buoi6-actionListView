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
