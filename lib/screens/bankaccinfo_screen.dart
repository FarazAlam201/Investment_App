import 'package:flutter/material.dart';
import 'package:invest_app/widgets/appbar_widget.dart';
import 'package:invest_app/widgets/bankaccbar.dart';

class ShowBankInfoScreen extends StatelessWidget {
  const ShowBankInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShowAppBar(
          leadingIcon: Icons.arrow_back_ios_rounded,
          callback: () {
            Navigator.pop(context);
          },
          titleName: 'Bank of account info'),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: const [
          BankAccountBar(
              bankName: "Bank of Amrica - 0182128xxx",
              username: "Faraz Alam",
              imgpath: "bankofAmerica"),
          SizedBox(
            height: 15,
          ),
          BankAccountBar(
              bankName: "Zenith Bank - 0182128xxx",
              username: "Faraz Alam",
              imgpath: "zenithbank"),
        ],
      ),
    );
  }
}
