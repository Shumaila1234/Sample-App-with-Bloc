import 'package:bloc_app/constant/constants.dart';
import 'package:bloc_app/core/hexColor.dart';
import 'package:flutter/material.dart';

appbar(context, String title) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(appBarHeight),
    child: AppBar(
      backgroundColor: HexColor(drawerColor),
      title: Text(
        title,
        style: const TextStyle(fontFamily: 'montserrat'),
      ),
      // actions: <Widget>[
      //   IconButton(
      //     icon: const Icon(
      //       Icons.settings,
      //       color: Colors.white,
      //     ),
      //     onPressed: () {
      //       Navigator.push(
      //           context, MaterialPageRoute(builder: (context) => Setting()));
      //     },
      //   )
      // ],
    ),
  );
}
