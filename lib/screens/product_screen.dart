import 'package:flutter/material.dart';
import 'package:invest_app/widgets/appbar_widget.dart';
import 'package:invest_app/widgets/bottombar.dart';
import 'package:invest_app/widgets/text_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  void toHomePage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ShowBottomBAr()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShowAppBar(
          titleName: 'Products',
          leadingIcon: Icons.arrow_back_ios_new_rounded,
          callback: () {
            toHomePage(context);
          }),
      body: const Center(
          child: ShowText(
              textName: 'Product', fontsize: 17, fontColor: Color(0xff999999))),
    );
  }
}
