import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

Widget simpleText() {
  return const Text(
    'Hello Text',
    style: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget styleText() {
  return const Text(
    'Hello Text !',
    style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        letterSpacing: 5,
        wordSpacing: 5,
        backgroundColor: Color.fromARGB(255, 220, 255, 179),
        shadows: [
          Shadow(color: Colors.lightBlue, offset: Offset(2, 2), blurRadius: 5),
        ]),
  );
}

Widget richText() {
  return const Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: 'Hi,',
          style: TextStyle(
            color: Colors.green,
            fontSize: 20,
          ),
        ),
        TextSpan(
          text: 'Yahya',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 22,
            fontWeight: FontWeight.w300,
          ),
        )
      ],
    ),
  );
}

Widget richTextWithWidget() {
  return Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: 'Click here',
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 22,
            fontWeight: FontWeight.w300,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              print('object');
            },
        ),
        const TextSpan(
          text: '  ',
          children: [
            WidgetSpan(
              child: Icon(
                Icons.add,
                size: 25,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
