import 'package:doc_div/core/my_styles.dart';
import 'package:flutter/material.dart';

class MyTextBtn extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color color;
  final Color textColor;
  final double width;

  const MyTextBtn({
    super.key,
    required this.onTap,
    required this.text,
    required this.color,
    required this.textColor,
    this.width = 250,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: MyStyles.title24Whitew300
              .copyWith(fontWeight: FontWeight.w500, color: textColor),
        ),
      ),
    );
  }
}
