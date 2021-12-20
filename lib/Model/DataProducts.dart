import 'package:session6/constants.dart';

List<itemMenu> itemMenus = [
  itemMenu(
    id: '0',
    img: pathImage + "im1.png",
    title: "Hazelnut Coffee",
    size: "20 TL",
  ),
  itemMenu(
    id: '1',
    img: pathImage + "im2.png",
    title: "Caramel Frappucino",
    size: "20 TL",
  ),
  itemMenu(
    id: '2',
    img: pathImage + "im1.png",
    title: "Caramel Frappucino",
    size: "20 TL",
  ),
  itemMenu(
    id: '3',
    img: pathImage + "im3.png",
    title: "Mocha Frappuccino",
    size: "20 TL",
  ),
  itemMenu(
    id: '4',
    img: pathImage + "im4.png",
    title: "Espresso Frappuccino",
    size: "20 TL",
  ),
  itemMenu(
    id: '5',
    img: pathImage + "im1.png",
    title: "Caramel Frappucino",
    size: "20 TL",
  ),
  itemMenu(
    id: '6',
    img: pathImage + "im3.png",
    title: "Mocha Frappuccino",
    size: "20 TL",
  ),
];

class itemMenu {
  final String img;
  final String title;
  final String size;
  final String id;

  itemMenu({
    required this.id,
    required this.img,
    required this.title,
    required this.size,
  });
}
