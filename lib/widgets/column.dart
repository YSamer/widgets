import 'package:flutter/material.dart';
import 'package:widgets/widgets/image.dart';

// >>>>>>>>CrossAxis<<<<<<<

Widget column() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      assetImage(),
      assetImage(),
      assetImage(),
    ],
  );
}

Widget fullScreenColumn() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Flexible(child: assetImage()),
      Flexible(child: assetImage()),
    ],
  );
}
