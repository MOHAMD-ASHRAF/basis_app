import 'package:basis_app/core/color_const.dart';

import 'package:basis_app/presentation/widget/custom_image.dart';
import 'package:basis_app/presentation/widget/defult_buttom.dart';

import 'package:basis_app/presentation/widget/text.dart';
import 'package:flutter/material.dart';


class DetailsProductPage extends StatelessWidget {
  const DetailsProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.black54,
                  size: 28,
                ))
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImage(
                    paddingFromLeft: 0,
                    paddingFromRight: 0,
                      paddingFromTop: 0,
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      image:
                          'https://img.freepik.com/free-photo/vintage-furniture_74190-346.jpg?size=626&ext=jpg&uid=R75041609&ga=GA1.2.1417712406.1684331786&semt=ais'),
                  const SizedBox(height: 10,),
                  Row(
                  children: const [
                    Text1(text: 'Lorem Ipsum',),
                    Spacer(),
                    Text1(text: '\$ 30',color: kSecondaryColor,),
                  ],
                  ),
                  const SizedBox(height: 20,),
                  const Text2(text: 'lorem ipsum dolor sit amen constructor  ',),
                  const SizedBox(height: 20,),
                  const Text2(text: 'Rating',),
                  const SizedBox(height: 20,),
                  const Text1(text: 'Color',),
                  const SizedBox(height: 20,),
                  const Text1(text: 'Quantity',),
                  const SizedBox(height: 30,),
                  const Center(
                    child: DefaultButton(width: 160, text: 'Add To Cart',color: kSecondaryColor,),
                  ),
                  const SizedBox(height: 30,),
                ],
              ),
            ),
            Expanded(child: Container(color: Colors.black54,width: double.infinity , child: const Text('jjjjj'),)),
          ],
        ));
  }
}
