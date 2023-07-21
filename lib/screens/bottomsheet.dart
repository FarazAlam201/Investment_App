import 'package:flutter/material.dart';
import 'package:invest_app/model/transactionHistory.dart';
import 'package:invest_app/widgets/descriptext_widget.dart';
import 'package:invest_app/widgets/text_button.dart';
import 'package:invest_app/widgets/text_widget.dart';
import 'package:invest_app/widgets/transactionBar.dart';

class ShowBottomSheet extends StatefulWidget {
  const ShowBottomSheet({super.key});

  @override
  State<ShowBottomSheet> createState() => _ShowBottomSheetState();
}

class _ShowBottomSheetState extends State<ShowBottomSheet> {
  List<TransactionHistory> listofTransactionHistory = [
    TransactionHistory(
        amount: "200.000",
        description: "Buy \"APPL\" Stock",
        date: "TUE 22 Jun 2020"),
    TransactionHistory(
        amount: "150.000",
        description: "Sell \"TLKM\" Stock",
        date: "TUE 22 Jun 2020"),
    TransactionHistory(
        amount: "1,000.240",
        description: "Buy \"FB\" Stock",
        date: "TUE 22 Jun 2020"),
    TransactionHistory(
        amount: "1,000.240",
        description: "Sell \"APPL\" Stock",
        date: "TUE 22 Jun 2020")
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          30, 25, 30, MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: const Center(
                child: ShowText(
              textName: 'My Asset',
              fontsize: 22,
              textAlign: TextAlign.center,
            )),
            trailing: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.cancel_sharp,
                  color: Color(0xffB3B3B3),
                )),
          ),
          const ShowDescripText(
              textName: 'Your total asset portfolio',
              fontsize: 16,
              fontWeight: FontWeight.w500,
              fontColor: Color(0xffB3B3B3)),
          Row(
            children: [
              const Padding(
                  padding: EdgeInsets.only(top: 8.0, right: 15, bottom: 25),
                  child: ShowDescripText(
                      textName: 'N203,935',
                      fontsize: 32,
                      fontColor: Color(0xff000000))),
              Image.asset(
                "assets/images/valueIncrease.png",
                width: 40,
                height: 16,
              )
            ],
          ),
          const ShowText(textName: 'Current Plans', fontsize: 22),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20),
            child: Container(
              width: 354,
              height: 207,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                'assets/images/Portfolio1.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Center(
            child: ShowTextButton(
                textName: 'See All Plans →',
                textAlign: TextAlign.center,
                fontsize: 18,
                fontWeight: FontWeight.w500,
                fontColor: Color(0xffFE555D)),
          ),
          const ShowText(textName: 'History', fontsize: 22),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: ListView.separated(
                padding: const EdgeInsets.only(top: 10),
                physics: const BouncingScrollPhysics(),
                itemCount: listofTransactionHistory.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  color: Color(0xffE7E7E7),
                  thickness: 1,
                  indent: 34,
                  endIndent: 34,
                ),
                itemBuilder: ((context, index) {
                  TransactionHistory item = listofTransactionHistory[index];
                  return TransactionBar(
                    listofTransactionHistory: item,
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
