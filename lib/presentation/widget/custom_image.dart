import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {super.key,
        index,
      required this.height,
      required this.width,
      required this.image,
      this.paddingFromRight = 10,
      this.paddingFromTop = 10,
      this.circularTopRight = 20,
      this.circularBottomRight = 20,
      this.paddingFromLeft = 10,
      this.paddingFromBottom = 10,
      this.fit =BoxFit.cover,
      });
  final String image;
  final double height, width,paddingFromRight,paddingFromTop, paddingFromBottom,paddingFromLeft,circularTopRight,circularBottomRight;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: paddingFromTop,
          bottom: paddingFromBottom,
          left: paddingFromLeft,
          right: paddingFromRight),
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
          fit: fit,
        ),
      ),
    );
  }
}
