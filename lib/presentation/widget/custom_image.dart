import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {super.key,
      required this.height,
      required this.width,
      index,
      required this.image,
      this.paddingFromRight = 10,
      this.paddingFromTop = 10,  this.circularTopRight = 20,  this.circularBottomRight = 20, this.paddingFromLeft = 10,  this.paddingFromBottom = 10 });

  final String image;
  final double height, width;
  final double paddingFromRight;
  final double paddingFromTop;
  final double paddingFromBottom;
  final double paddingFromLeft;
  final double circularTopRight;
  final double circularBottomRight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: paddingFromTop, bottom: paddingFromBottom, left: paddingFromLeft, right: paddingFromRight),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20),
            bottomLeft: const Radius.circular(20),
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
