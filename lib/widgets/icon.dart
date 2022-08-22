import 'package:flutter/material.dart';

Widget simpleIcon() {
  return const Icon(
    Icons.email,
    size: 30,
    color: Colors.lightBlue,
  );
}

Widget imageIcon() {
  return const ImageIcon(
    AssetImage('assets/icons/setting.png'),
    color: Colors.lightBlue,
  );
}
