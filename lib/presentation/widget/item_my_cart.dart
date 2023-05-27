import 'package:basis_app/core/color_const.dart';
import 'package:basis_app/presentation/widget/counter.dart';
import 'package:basis_app/presentation/widget/custom_image.dart';
import 'package:basis_app/presentation/widget/text.dart';
import 'package:flutter/material.dart';

class ItemMyCart extends StatelessWidget {
  const ItemMyCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomImage(height: 160, width: 200,paddingFromTop: 0, paddingFromRight:20,image: 'https://img.freepik.com/free-photo/vintage-furniture_74190-346.jpg?size=626&ext=jpg&uid=R75041609&ga=GA1.2.1417712406.1684331786&semt=ais'),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
               Text1(text: 'mohamed ashraf',),
               SizedBox(height: 10,),
               Text2(text: 'mo ashraf elhegawey'),
               SizedBox(height: 10,),
               Text1(
                text: '\$ 30',
                color: kSecondaryColor,
              ),
              Counter(),
            ],
          ),
        )
      ],
    );
  }
}