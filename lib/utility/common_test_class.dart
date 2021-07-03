
import 'package:audacity_task/utility/text_style.dart';
import 'package:flutter/material.dart';

class CommonTextClass extends StatelessWidget {
  final String? text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final bool isCentre;

  CommonTextClass({this.text, this.fontWeight, this.fontSize, this.color, required this.isCentre});

  @override
  Widget build(BuildContext context) {
    return Text(text!,
      textAlign: isCentre ? TextAlign.center : TextAlign.left,
      style: commonPoppinsTextStyle(
          color: color,
          fontWeight: fontWeight,
          size: fontSize
      ),);
  }
}