import 'package:basis_app/presentation/pages/MyCartPage.dart';
import 'package:basis_app/presentation/widget/Rating.dart';
import 'package:basis_app/presentation/widget/custom_image.dart';
import 'package:basis_app/presentation/widget/default_button.dart';
import 'package:basis_app/presentation/widget/text.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CustomProduct extends StatelessWidget {
  CustomProduct({Key? key, required this.image, this.onTap, required this.title, required this.description, required this.price}) : super(key: key);
  final String image;
  final String title;
  final String description;
  final double price;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom:20),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text1(text: title),
                  const SizedBox(
                    height: 5,
                  ),
                   Text2(
                    text: description,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                   Text1(text: '$price\$'),
                  const SizedBox(
                    height: 5,
                  ),
                  const Rating(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      DefaultButton(
                          text: 'Add',
                          width: 80,
                          onTap: () {
                            Navigator.pushNamed(context, MyCartPage.id);
                          }),
                      const Spacer(),
                      const Icon(
                        Icons.favorite,
                        size: 32,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
                child: CustomImage(
                   fit: BoxFit.scaleDown,
                    circularBottomRight: 0,
                    circularTopRight: 0,
                    paddingFromRight: 0,
                    paddingFromTop: 0,
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    image: image)
            ),
          ],
        ),
      ),
    );
  }
}
