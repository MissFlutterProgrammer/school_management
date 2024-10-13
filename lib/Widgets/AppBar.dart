// ignore_for_file: file_names, use_super_parameters

import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool menuenabled;
  final bool notificationenabled;
  final Function ontap;
  const CommonAppBar({
    Key? key,
    required this.title,
    required this.menuenabled,
    required this.notificationenabled,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: menuenabled == true
          ? IconButton(
              color: Colors.black,
              onPressed: ontap(),
              icon: const Icon(
                Icons.menu,
              ),
            )
          : null,
      // actions: [
      //   notificationenabled == true
      //       ? InkWell(
      //           onTap: () {},
      //           child: Image.asset(
      //             "assets/notification.png",
      //             width: 35,
      //           ),
      //         )
      //       : const SizedBox(width: 10),
      // ],
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
