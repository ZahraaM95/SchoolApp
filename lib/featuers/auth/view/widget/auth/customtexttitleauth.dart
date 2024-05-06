import 'package:flutter/material.dart';

class CustomTextTitleAuth extends StatelessWidget {
  final String text;
  const CustomTextTitleAuth({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.right,
      style:const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold
      ) ,
    );
  }
}
