import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  const Text1({Key? key, required this.text, this.color,  this.size = 24}) : super(key: key);
   final String text;
   final Color? color;
   final double size;
  @override
  Widget build(BuildContext context) {
    return  Text(text,style: TextStyle(fontSize: size, fontWeight: FontWeight.bold,color: color));
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
