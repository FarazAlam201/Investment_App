import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowText extends StatelessWidget {
  final String textName;
  final double? fontsize;
  final Color? fontColor;
  final TextAlign? textAlign;
  const ShowText({
    super.key,
    required this.textName,
    required this.fontsize,
    this.fontColor = const Color(0xff000000),
    this.textAlign,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: GoogleFonts.dmSans(
        fontSize: fontsize,
        fontWeight: FontWeight.w700,
        color: fontColor,
      ),
    );
  }
}
