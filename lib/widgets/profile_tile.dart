import 'package:flutter/material.dart';
import 'package:invest_app/widgets/descriptext_widget.dart';

class ProfileTile extends StatelessWidget {
  final Icon? leadIcon;
  final String title;
  final VoidCallback callback;
  final String imagepath;

  ProfileTile(
      {this.imagepath = "",
      this.leadIcon,
      required this.title,
      required this.callback});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Card(
        child: ListTile(
            leading: imagepath.isNotEmpty
                ? Image(width: 24, height: 24, image: AssetImage(imagepath))
                : leadIcon,
            title: ShowDescripText(
              textName: title,
              fontsize: 17,
              fontColor: const Color(0xff333333),
              fontWeight: FontWeight.w600,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color(0xff333333),
            )),
      ),
    );
  }
}
