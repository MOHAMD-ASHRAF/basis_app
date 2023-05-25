import 'package:basis_app/core/color_const.dart';
import 'package:basis_app/presentation/widget/custom_image.dart';
import 'package:basis_app/presentation/widget/text.dart';
import 'package:flutter/material.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          Expanded(child: ListView.separated(itemBuilder: (context,index){ return ItemMyCart();}, separatorBuilder: (context,index)=>SizedBox(height: 20,), itemCount: 10,scrollDirection: Axis.vertical,))
        ],
      ),
    );
  }
}

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
            children: [
              const Text1(text: 'mohamed ashraf',),
              const SizedBox(height: 10,),
              const Text2(text: 'mo ashraf elhegawey'),
              const SizedBox(height: 10,),
              const Text1(
                text: '\$ 30',
                color: kSecondaryColor,
              ),

            ],
          ),
        )
      ],
    );
  }
}
