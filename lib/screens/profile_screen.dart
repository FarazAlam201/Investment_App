import 'package:flutter/material.dart';
import 'package:invest_app/screens/bankaccinfo_screen.dart';
import 'package:invest_app/screens/signup_screen.dart';
import 'package:invest_app/widgets/appbar_widget.dart';
import 'package:invest_app/widgets/bottombar.dart';
import 'package:invest_app/widgets/descriptext_widget.dart';
import 'package:invest_app/widgets/profile_tile.dart';
import 'package:invest_app/widgets/text_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  void logout(BuildContext context) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => SignupScreen()),
        ModalRoute.withName(' '));
  }

  void toHomePage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ShowBottomBAr()));
  }

  void toBankInfoPage(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => (ShowBankInfoScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShowAppBar(
          leadingIcon: Icons.arrow_back_ios_rounded,
          callback: () {
            toHomePage(context);
          }),
      body: Center(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(right: 130, bottom: 30),
            child: ShowText(textName: 'Profile', fontsize: 34),
          ),
          const CircleAvatar(
            radius: 75,
            backgroundImage: AssetImage('assets/images/ProfileImg.png'),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 21, bottom: 7),
            child: ShowDescripText(
                textName: 'Faraz Alam',
                fontsize: 22,
                fontWeight: FontWeight.w600,
                fontColor: Color(0xff000000)),
          ),
          const ShowDescripText(
              textName: 'Flutter Developer',
              fontsize: 17,
              fontColor: Color(0xff000000)),
          Expanded(
            child: SizedBox(
              width: 354,
              child: ListView(
                padding: const EdgeInsets.only(right: 15, left: 15, top: 30),
                physics: const BouncingScrollPhysics(),
                children: [
                  ProfileTile(
                      imagepath: "assets/images/contactIcon.png",
                      title: "Contact Info",
                      callback: () {}),
                  ProfileTile(
                      imagepath: "assets/images/fundingIcon.png",
                      title: "Source of Funding info",
                      callback: () {}),
                  ProfileTile(
                      imagepath: "assets/images/bankIcon.png",
                      title: "Bank Account Info",
                      callback: () {
                        toBankInfoPage(context);
                      }),
                  ProfileTile(
                      imagepath: "assets/images/docIcon.png",
                      title: "Document Info",
                      callback: () {}),
                  ProfileTile(
                      imagepath: "assets/images/settingIcon.png",
                      title: "Settings",
                      callback: () {}),
                  ProfileTile(
                      leadIcon: const Icon(
                        Icons.logout_rounded,
                        color: Color(0xff333333),
                      ),
                      title: "Log Out",
                      callback: () {
                        logout(context);
                      }),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
