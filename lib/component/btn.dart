import 'package:flutter/material.dart';
import 'package:session6/constants.dart';

class btn extends StatelessWidget {
  const btn({Key? key, required this.text, required this.function})
      : super(key: key);
  final String text;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xffffffff),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
