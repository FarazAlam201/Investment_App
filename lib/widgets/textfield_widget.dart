import 'package:flutter/material.dart';

class ShowTextField extends StatelessWidget {
  final String textHint;
  final bool hiddenData;
  final TextInputAction moveToNextTextField;

  const ShowTextField({
    Key? key,
    required this.textHint,
    this.hiddenData = false,
    this.moveToNextTextField = TextInputAction.next,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: moveToNextTextField,
      obscureText: hiddenData,
      cursorColor: const Color(0xff31A062),
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: textHint,
        hintStyle: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: Color(0xff828282),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xff31A062)),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xff828282)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
