import 'package:flutter/material.dart';

Widget assetImage() {
  return Image.asset(
    'assets/images/img1.jpg',
    height: 100,
    width: 100,
  );
}

Widget networkImage() {
  return Image.network(
    'https://firebasestorage.googleapis.com/v0/b/graket-academy.appspot.com/o/courses%2Fimages%2Fflutter.jpg?alt=media&token=5281ae2c-9ce4-4490-b249-e78b35f15fc8',
    height: 300,
    width: 300,
  );
}

Widget networkBundleImage() {
  return FadeInImage.assetNetwork(
    placeholder: 'assets/images/img2.jpg',
    image:
        'https://firebasestorage.googleapis.com/v0/b/graket-academy.appspot.com/o/courses%2Fimages%2Fflutter.jpg?alt=media&token=5281ae2c-9ce4-4490-b249-e78b35f15fc8',
    height: 300,
    width: 300,
  );
}
