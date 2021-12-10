import 'package:flutter/material.dart';

class appBar extends StatelessWidget with PreferredSizeWidget {
  const appBar({
    Key? key,
    required this.title,
    required this.more,
    required this.notification,
  }) : super(key: key);

  final String title;
  final Function more;
  final Function notification;
  @override
  Size get preferredSize => Size.fromHeight(60.0);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: Color(0xff1D4D4F),
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            notification();
          },
          icon: Image.asset(
            "assets/images/nt.png",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () {
              more();
            },
            icon: Icon(Icons.more_vert),
          ),
        ),
      ],
    );
  }
}
