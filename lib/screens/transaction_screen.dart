import 'package:flutter/material.dart';
import 'package:invest_app/widgets/appbar_widget.dart';
import 'package:invest_app/widgets/bottombar.dart';
import 'package:invest_app/widgets/text_widget.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShowAppBar(
          leadingIcon: Icons.arrow_back_ios_rounded,
          titleName: 'Transactions',
          callback: () {
            toHomePage(context);
          }),
      body: const Center(
          child: ShowText(
              textName: 'Transaction',
              fontsize: 17,
              fontColor: Color(0xff999999))),
    );
  }

  void toHomePage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ShowBottomBAr()));
  }
}
