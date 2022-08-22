import 'package:flutter/material.dart';

Widget simpleTextField() {
  bool isError = true;
  final controller = TextEditingController();
  String text = '';
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    controller: controller,
    onChanged: (value) {
      text = value;
      // setState(() {
      //   text = value;
      // });
    },
    decoration: const InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'User Name',
      hintText: 'Enter Your Name',
    ),
  );
}

Widget advancedTextField() {
  bool isError = false;
  String text = '';
  final controller = TextEditingController();
  controller.addListener(() {
    text = controller.text;
    // setState(() {
    //   text = value;
    // });
  });
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    controller: controller,
    onChanged: (value) {
      text = value;
      // setState(() {
      //   text = value;
      // });
    },
    decoration: InputDecoration(
      filled: true,
      contentPadding: const EdgeInsets.all(15),
      fillColor: Colors.white,
      hintText: 'Your email',
      errorText: isError ? 'Error' : null,
      hintStyle: const TextStyle(color: Colors.lightBlue),
      enabledBorder: const UnderlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide: BorderSide(color: Colors.blue),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    ),
  );
}

Widget secureTextField() {
  bool isError = false;
  String text = '';
  final controller = TextEditingController();
  Color noneColor = const Color.fromARGB(0, 255, 255, 255);
  controller.addListener(() {
    text = controller.text;
    // setState(() {
    //   text = value;
    // });
  });
  bool isSecure = true;
  return TextFormField(
    obscureText: isSecure,
    keyboardType: TextInputType.visiblePassword,
    controller: controller,
    decoration: InputDecoration(
      suffixIcon: IconButton(
        padding: const EdgeInsets.all(0),
        color: noneColor,
        highlightColor: noneColor,
        hoverColor: noneColor,
        focusColor: noneColor,
        splashColor: noneColor,
        disabledColor: noneColor,
        onPressed: () {
          // setState(() {
          //   isSecure = !isSecure;
          // });
        },
        icon: isSecure
            ? const Icon(Icons.visibility, color: Colors.blue)
            : const Icon(Icons.visibility_off, color: Colors.blue),
      ),
      filled: true,
      contentPadding: const EdgeInsets.all(15),
      fillColor: Colors.white,
      errorText: isError ? 'Error' : null,
      hintText: 'Your password',
      hintStyle: const TextStyle(color: Colors.blue),
      enabledBorder: const UnderlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide: BorderSide(color: Colors.blue),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    ),
  );
}
