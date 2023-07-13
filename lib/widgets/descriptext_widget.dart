import 'package:flutter/material.dart';

class ShowDescripText extends StatelessWidget {
  final String textName;
  final double? fontsize;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  const ShowDescripText({
    super.key,
    required this.textName,
    required this.fontsize,
    required this.fontColor,
    this.textAlign,
    this.fontWeight = FontWeight.w400,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: TextStyle(
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: fontColor,
      ),
    );
  }
}
