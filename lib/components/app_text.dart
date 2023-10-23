import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  String text;
  double? size;
  Color? color;
  FontWeight? fontWeight;
  int? maxLines;
  TextAlign? textAlign;
  TextDecoration? textDecoration;
  FontStyle? fontStyle;

  AppText(
    this.text, {
    super.key,
    this.size,
    this.color,
    this.fontWeight,
    this.maxLines,
    this.textAlign,
    this.textDecoration,
    this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          decoration: textDecoration),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
