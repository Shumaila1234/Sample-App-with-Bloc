import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customTextWidget(context, text) {
  return Text(text,
      style: TextStyle(
        fontSize: 20,
        color: Theme.of(context).iconTheme.color,
        fontFamily: 'montserrat',
      ));
}
