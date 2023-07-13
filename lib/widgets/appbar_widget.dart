import 'package:flutter/material.dart';

class ShowAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconData? leadingIcon;
  final IconData? actionIcon;
  final Color? iconColor;
  final double? leadingIconSize;
  final double? actionIconSize;
  final VoidCallback? callback;

  const ShowAppBar({
    Key? key,
    required this.leadingIcon,
    this.actionIcon,
    this.iconColor = const Color(0xff000000),
    this.leadingIconSize,
    this.actionIconSize,
    required this.callback,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: IconButton(
          onPressed: callback,
          icon: Icon(leadingIcon),
          iconSize: leadingIconSize,
          color: iconColor,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
            onPressed: callback,
            icon: Icon(actionIcon),
            iconSize: leadingIconSize,
            color: iconColor,
          ),
        ),
      ],
    );
  }
}
