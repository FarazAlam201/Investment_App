import 'package:flutter/material.dart';
import 'package:invest_app/screens/createacc_screen.dart';
import 'package:invest_app/screens/home_screen.dart';
import 'package:invest_app/widgets/appbar_widget.dart';
import 'package:invest_app/widgets/custom_button.dart';
import 'package:invest_app/widgets/descriptext_widget.dart';
import 'package:invest_app/widgets/text_button.dart';
import 'package:invest_app/widgets/text_widget.dart';
import 'package:invest_app/widgets/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                textName: 'Login account',
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
                  const Padding(
                    padding: EdgeInsets.only(bottom: 3, left: 115),
                    child: ShowTextButton(
                      textName: 'Forgot Password?',
                      fontsize: 17,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: CustomButton(
                        btnName: 'Log in',
                        callback: () {
                          toHomePage(context);
                        }),
                  ),
                ],
              ),
            ),
            ShowTextButton(
              textName: 'Don\'t have an account?',
              callback: () {
                toCreatAccPage(context);
              },
              fontsize: 17,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  void toCreatAccPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CreatAccScreen()));
  }

  void toHomePage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }
}
