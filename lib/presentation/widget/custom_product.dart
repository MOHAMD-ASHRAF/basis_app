import 'package:basis_app/presentation/widget/custom_image.dart';
import 'package:basis_app/presentation/widget/defult_buttom.dart';
import 'package:basis_app/presentation/widget/text.dart';
import 'package:flutter/material.dart';

class CustomProduct extends StatelessWidget {
  const CustomProduct({Key? key, required this.image}) : super(key: key);
   final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text1(text: 'lorem ipsum'),
                const SizedBox(
                  height: 5,
                ),
                const Text2(text: 'lorem ipsum dolor sit ament constractor',),
                const SizedBox(
                  height: 5,
                ),
                const Text1(text: '\$20'),
                const SizedBox(
                  height: 5,
                ),
                const Text1(text: 'Rating',),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const[
                     DefaultButton(
                      text: 'Add',
                      width: 80,
                    ),
                    Spacer(),
                     Icon(
                      Icons.favorite,
                      size: 32,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
              child: CustomImage(
                circularBottomRight: 0,
                   circularTopRight: 0,
                   paddingFromRight: 0,
                  paddingFromTop: 0,
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  image: image)
          ),
        ],
      ),
    );
  }
}
