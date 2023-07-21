import 'package:flutter/material.dart';
import 'package:invest_app/screens/createacc_screen.dart';
import 'package:invest_app/screens/login_screen.dart';
import 'package:invest_app/widgets/custom_button.dart';
import 'package:invest_app/widgets/text_button.dart';
import 'package:invest_app/widgets/text_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Layer2.png',
              width: 300.01,
              height: 273.23,
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 41, right: 41, top: 18, bottom: 17),
              child: ShowText(
                textName: 'Stay on top of your finance with us.',
                textAlign: TextAlign.center,
                fontsize: 34,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 41, right: 41, bottom: 60),
              child: Text(
                'We are your new financial Advisors to recommend the best investments for you.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff4F4F4F),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 11,
              ),
              child: CustomButton(
                btnName: 'Create account',
                callback: () {
                  toCreatAccPage(context);
                },
                height: 60,
                width: 364,
                fontsize: 17,
                buttonBackgroundColor: const Color(0xff31A062),
                borderRadius: 20.0,
              ),
            ),
            ShowTextButton(
              callback: () {
                toLoginPage(context);
              },
              textName: 'Login',
              fontsize: 17,
            ),
          ],
        ),
      ),
    );
  }

  void toLoginPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  void toCreatAccPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CreatAccScreen()),
    );
  }
}
