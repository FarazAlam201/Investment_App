import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invest_app/screens/bottomsheet.dart';
import 'package:invest_app/widgets/appbar_widget.dart';
import 'package:invest_app/widgets/custom_button.dart';
import 'package:invest_app/widgets/descriptext_widget.dart';
import 'package:invest_app/widgets/text_button.dart';
import 'package:invest_app/widgets/text_widget.dart';
import 'package:invest_app/model/transactionHistory.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var cardList = [
    'assets/images/CardStock1.png',
    'assets/images/CardStock2.png',
    'assets/images/CardStock3.png',
  ];
  var newsTitle = [
    "Basic type of investments",
    "How much can you start wit..",
    "Welcome to New NASDAQ",
  ];
  var newsDescription = [
    "This is how you set your foot for 2020 Stock market recession. What's next...",
    "What do you like to see? It's a very different market from 2018. The way...",
    "When we talk about the wall street, what looks good might be different",
  ];
  var newsImage = [
    'assets/images/Ellipse1.png',
    'assets/images/Ellipse2.png',
    'assets/images/Ellipse3.png',
  ];
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
    double newsWidth = MediaQuery.of(context).size.width * 0.62;
    return Scaffold(
      appBar: ShowAppBar(
        leadingIcon: Icons.menu,
        leadingIconSize: 24,
        actionIcon: Icons.notifications,
        actionIconSize: 24,
        callback: () {},
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: ShowText(
            textName: 'Welcome, Jessie.',
            fontsize: 34,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: InkWell(
            onTap: () {
              showMyAsset();
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              margin: const EdgeInsets.only(top: 34.0),
              width: 354,
              height: 125,
              decoration: BoxDecoration(
                  color: const Color(0xff31A078),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Your total asset portfolio',
                        style: GoogleFonts.sourceSerifPro(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffFFFFFF)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'N203,935',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFFFFFF)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: CustomButton(
                              btnName: 'Invest now',
                              callback: () {},
                              height: 40,
                              width: 125,
                              fontsize: 14,
                              buttonBackgroundColor: const Color(
                                0xffFEFFFE,
                              ),
                              fontColor: const Color(
                                0xff31A078,
                              ),
                              borderRadius: 15.0),
                        )
                      ],
                    ),
                  ]),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ShowText(
                  textName: 'Best Plans',
                  fontsize: 22,
                  fontColor: Color(0xff000000)),
              ShowTextButton(
                  textName: 'See All →',
                  fontsize: 18,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.right,
                  fontColor: Color(0xffFE555D))
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 170,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cardList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 143,
                margin: EdgeInsets.only(
                  left: index == 0 ? 30 : 15,
                  right: index == cardList.length - 1 ? 30 : 0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(cardList[index]), fit: BoxFit.cover),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 40),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: ShowText(
              textName: 'Investment Guide',
              fontsize: 22,
              fontColor: Color(0xff000000)),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: newsImage.length,
            separatorBuilder: (BuildContext context, int index) => Divider(
              color: const Color(0xff4A4A4A).withOpacity(0.2),
              thickness: 1,
              indent: 30,
              endIndent: 30,
              height: 0.01,
            ),
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 414,
                height: 92,
                child: Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ShowText(
                              textName: newsTitle[index],
                              fontsize: 18,
                              fontColor: const Color(0xff4F4F4F),
                            ),
                            SizedBox(
                              width: newsWidth,
                              child: ShowDescripText(
                                textName: newsDescription[index],
                                fontsize: 14,
                                fontColor: const Color(0xff474747),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 61,
                          height: 61,
                          child: Image.asset(
                            newsImage[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ]),
    );
  }

  void showMyAsset() {
    listofTransactionHistory;
    showModalBottomSheet(
        elevation: 1,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        context: context,
        builder: (context) {
          return ShowBottomSheet();
        });
  }
}
