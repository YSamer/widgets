import 'package:flutter/material.dart';
import 'package:widgets/api/use_api.dart';
import 'package:widgets/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: const UseAPI(),
    );
  }
}