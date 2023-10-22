import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  String text;
  double? size;
  Color? color;
  FontWeight? fontWeight;
  int? maxLines;
  TextAlign? textAlign;
  TextDecoration? textDecoration;

  AppText(
    this.text, {
    super.key,
    this.size,
    this.color,
    this.fontWeight,
    this.maxLines,
    this.textAlign,
    this.textDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight,
          decoration: textDecoration),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
