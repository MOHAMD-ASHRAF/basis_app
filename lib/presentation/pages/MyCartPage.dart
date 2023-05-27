import 'package:basis_app/core/color_const.dart';
import 'package:basis_app/presentation/widget/defult_button.dart';
import 'package:basis_app/presentation/widget/item_my_cart.dart';
import 'package:basis_app/presentation/widget/text.dart';
import 'package:flutter/material.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({Key? key}) : super(key: key);
  static String id = 'MyCartPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back,color: Colors.black,),),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text1(text: 'MyCart',size: 28,color: Colors.black,),
          ),
          Expanded(
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
               itemBuilder: (context, index) {
                return const ItemMyCart();
              },
                separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemCount: 10,
            scrollDirection: Axis.vertical,
          )),

          Container(
            width: double.infinity,
            height: 180,
            color: kPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text1(
                        text: 'Total price',
                        color: Colors.white,
                        size: 18,
                      ),
                      Spacer(),
                      Text1(
                        text: '100\$',
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                    child: DefaultButton(
                      color: kSecondaryColor,
                      width: 150,
                      text: 'Check Out',
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
