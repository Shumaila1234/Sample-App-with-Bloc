import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customContainer(context, height, widht, child) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.2,
    width: MediaQuery.of(context).size.width * 1.0,
    child: child,
    decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(10))),
  );
}
