import 'package:flutter/material.dart';
import 'package:widgets/widgets/button.dart';
import 'package:widgets/widgets/column.dart';
import 'package:widgets/widgets/container.dart';
import 'package:widgets/widgets/icon.dart';
import 'package:widgets/widgets/image.dart';
import 'package:widgets/widgets/row.dart';
import 'package:widgets/widgets/text.dart';
import 'package:widgets/widgets/text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(child: Text('Widget')),
      ),
      body: Center(child: textButton()),
    );
  }
}
