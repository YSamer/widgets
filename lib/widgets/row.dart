import 'package:flutter/material.dart';
import 'package:widgets/widgets/image.dart';

// >>>>>>>>MainAxis<<<<<<<

Widget row() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      assetImage(),
      assetImage(),
      assetImage(),
    ],
  );
}
