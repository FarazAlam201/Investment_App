import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invest_app/widgets/descriptext_widget.dart';

class BankAccountBar extends StatelessWidget {
  final String bankName;
  final String username;
  final String imgpath;

  const BankAccountBar({
    super.key,
    required this.bankName,
    required this.username,
    required this.imgpath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 355,
      height: 111,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        shadowColor: Colors.grey,
        child: Center(
          child: ListTile(
            tileColor: const Color(0xffFFFFFF).withOpacity(0.1),
            leading: Image.asset(
              "assets/images/$imgpath.png",
              width: 47,
              height: 47,
            ),
            title: ShowDescripText(
              textName: bankName,
              fontsize: 17,
              fontColor: const Color(0xff555555),
              fontWeight: FontWeight.w600,
            ),
            subtitle: Text(
              username,
              style: GoogleFonts.catamaran(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xff333333),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              icon: const Icon(
                Icons.more_vert_rounded,
                color: Color(0xff333333),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
