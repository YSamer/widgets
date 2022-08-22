import 'package:flutter/material.dart';
import 'package:widgets/widgets/image.dart';

Widget container() {
  return Container(
    height: 200,
    width: 200,
    margin: const EdgeInsets.all(20),
    padding: const EdgeInsets.all(10),
    child: assetImage(),
  );
}

Widget styleContainer() {
  return Container(
    height: 200,
    width: 200,
    margin: const EdgeInsets.all(20),
    padding: const EdgeInsets.all(10),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.lime,
      border: Border.all(color: Colors.green, width: 2),
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(
          color: Colors.blue,
          offset: Offset(5, 5),
          blurRadius: 5,
        ),
      ],
    ),
    child: assetImage(),
  );
}

Widget transformContainer() {
  return Container(
    height: 200,
    width: 200,
    margin: const EdgeInsets.all(20),
    padding: const EdgeInsets.all(10),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.lime,
      border: Border.all(color: Colors.green, width: 2),
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(
          color: Colors.blue,
          offset: Offset(5, 5),
          blurRadius: 5,
        ),
      ],
    ),
    transform: Matrix4.rotationZ(0.1),
    child: assetImage(),
  );
}

Widget expandConstraintsContainer() {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.all(20),
    padding: const EdgeInsets.all(10),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.lime,
      border: Border.all(color: Colors.green, width: 2),
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(
          color: Colors.blue,
          offset: Offset(5, 5),
          blurRadius: 5,
        ),
      ],
    ),
    constraints: const BoxConstraints.expand(height: 100),
    child: assetImage(),
  );
}
