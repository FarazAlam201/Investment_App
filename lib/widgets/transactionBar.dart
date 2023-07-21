import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invest_app/model/transactionHistory.dart';
import 'package:invest_app/widgets/descriptext_widget.dart';

class TransactionBar extends StatefulWidget {
  final TransactionHistory listofTransactionHistory;

  const TransactionBar({super.key, required this.listofTransactionHistory});

  @override
  State<TransactionBar> createState() => _TransactionBarState();
}

class _TransactionBarState extends State<TransactionBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Rp ${widget.listofTransactionHistory.amount}",
                style: GoogleFonts.dmSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: widget.listofTransactionHistory.description
                            .contains('Sell')
                        ? const Color(0xff00B907)
                        : const Color(0xff000000))),
            const SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ShowDescripText(
                    textName: widget.listofTransactionHistory.description,
                    fontsize: 14,
                    fontColor: const Color(0xffB3B3B3)),
                ShowDescripText(
                    textName: widget.listofTransactionHistory.date,
                    fontsize: 14,
                    fontColor: const Color(0xffB3B3B3))
              ],
            ),
          ],
        ));
  }
}
