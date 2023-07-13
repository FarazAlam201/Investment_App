import 'package:flutter/material.dart';
import 'package:invest_app/screens/login_screen.dart';
import 'package:invest_app/widgets/appbar_widget.dart';
import 'package:invest_app/widgets/custom_button.dart';
import 'package:invest_app/widgets/descriptext_widget.dart';
import 'package:invest_app/widgets/text_button.dart';
import 'package:invest_app/widgets/text_widget.dart';
import 'package:invest_app/widgets/textfield_widget.dart';

class CreatAccScreen extends StatefulWidget {
  const CreatAccScreen({super.key});

  @override
  State<CreatAccScreen> createState() => _CreatAccScreenState();
}

class _CreatAccScreenState extends State<CreatAccScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShowAppBar(
        leadingIcon: Icons.arrow_back_ios,
        callback: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ShowText(
                textName: 'Create an account',
                fontsize: 34,
                fontColor: Color(0xff000000)),
            const ShowDescripText(
                textName: 'Invest and double your income now',
                fontsize: 17,
                fontColor: Color(0xff4F4F4F)),
            Container(
              margin: const EdgeInsets.only(
                  top: 87, left: 24, right: 25, bottom: 38),
              child: Column(
                children: [
                  const ShowTextField(
                    textHint: 'Full name',
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: ShowTextField(
                      textHint: 'Email Address',
                    ),
                  ),
                  const ShowTextField(
                    textHint: 'Password',
                    hiddenData: true,
                    moveToNextTextField: TextInputAction.done,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: CustomButton(
                        btnName: 'Create account', callback: () {}),
                  ),
                ],
              ),
            ),
            ShowTextButton(
              textName: 'Already have an account?',
              callback: () {
                toLoginPage(context);
              },
              fontsize: 17,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  void toLoginPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }
}
