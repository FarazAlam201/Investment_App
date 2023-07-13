import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnName;
  final VoidCallback? callback;
  final double? fontsize;
  final double? width;
  final double? height;
  final Color? buttonBackgroundColor;
  final Color? fontColor;
  final double? borderRadius;
  const CustomButton({
    super.key,
    required this.btnName,
    required this.callback,
    this.height = 60,
    this.width = 354,
    this.fontsize = 17,
    this.buttonBackgroundColor = const Color(0xff31A062),
    this.fontColor = const Color(0xffFFFFFF),
    this.borderRadius = 20,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius!),
          color: buttonBackgroundColor,
        ),
        child: Center(
          child: Text(
            btnName,
            style: TextStyle(
              fontSize: fontsize,
              color: fontColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
