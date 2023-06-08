import 'package:basis_app/core/color_const.dart';
import 'package:basis_app/presentation/pages/MyCartPage.dart';
import 'package:basis_app/presentation/widget/Rating.dart';
import 'package:basis_app/presentation/widget/counter.dart';
import 'package:basis_app/presentation/widget/custom_image.dart';
import 'package:basis_app/presentation/widget/default_button.dart';
import 'package:basis_app/presentation/widget/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDetailsData extends StatelessWidget {
  const CustomDetailsData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Text1(
                text: 'Lorem Ipsum',
              ),
              Spacer(),
              Text1(
                text: '\$ 30',
                color: kSecondaryColor,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text2(
            maxLine: 3,
            text: 'lorem ipsum dolor sit amen constructor lorem ipsum dolor sit amen constructor lorem ipsum dolor sit amen constructor lorem ipsum dolor sit amen constructor ',
          ),
          const SizedBox(
            height: 20,
          ),
          const Rating(rating: 5,),
          const SizedBox(
            height: 16,
          ),
          const Text1(
            text: 'Color',
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            children: [
               Text1(
                text: 'Quantity',
              ),
              SizedBox(width: 16,),
              Counter()
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: DefaultButton(
              width: 160,
              text: 'Add To Cart',
              color: kSecondaryColor,
              onTap: (){
                Navigator.pushNamed(context, MyCartPage.id);
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

