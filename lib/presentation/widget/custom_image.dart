import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {super.key,
      required this.height,
      required this.width,
      index,
      required this.image,
      this.paddingFromRight = 10,
      this.paddingFromTop = 10,  this.circularTopRight = 20,  this.circularBottomRight = 20});

  final String image;
  final double height, width;
  final double paddingFromRight;
  final double paddingFromTop;
  final double circularTopRight;
  final double circularBottomRight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: paddingFromTop, bottom: 10, left: 10, right: paddingFromRight),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(circularTopRight),
            bottomRight: Radius.circular(circularBottomRight)),
        child: Image.network(
          image,
          height: height,
          width: width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
