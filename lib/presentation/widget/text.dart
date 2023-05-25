import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  const Text1({Key? key, required this.text, this.color}) : super(key: key);
   final String text;
   final Color? color;
  @override
  Widget build(BuildContext context) {
    return  Text(text,style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: color));
  }
}


class Text2 extends StatelessWidget {
  const Text2({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Text(text,style:const TextStyle(fontSize: 16, color: Colors.grey));
  }
}
