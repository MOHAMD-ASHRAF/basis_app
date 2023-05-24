import 'package:basis_app/presentation/widget/custom_image.dart';
import 'package:basis_app/presentation/widget/defult_buttom.dart';
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
                const Text(
                  'lorem ipsum',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('lorem ipsum dolor sit ament constractor',
                    style: TextStyle(fontSize: 16, color: Colors.grey)),
                const SizedBox(
                  height: 5,
                ),
                const Text('\$20',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 5,
                ),
                const Text('Rating ',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
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
