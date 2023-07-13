import 'package:flutter/material.dart';

class ShowTextButton extends StatelessWidget {
  final String textName;
  final double? fontsize;
  final Color? fontColor;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final VoidCallback? callback;
  const ShowTextButton({
    super.key,
    required this.textName,
    required this.fontsize,
    this.textAlign,
    this.fontWeight = FontWeight.w600,
    this.fontColor = const Color(0xff31A062),
    this.callback,
  });
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      child: Text(
        textName,
        style: TextStyle(
          fontSize: fontsize,
          fontWeight: fontWeight,
          color: fontColor,
        ),
      ),
    );
  }
}
