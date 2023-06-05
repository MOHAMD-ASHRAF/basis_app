import 'package:basis_app/core/color_const.dart';
import 'package:basis_app/presentation/widget/custom_image.dart';
import 'package:basis_app/presentation/widget/text.dart';
import 'package:flutter/material.dart';

class ListRecentlyView extends StatelessWidget {
  const ListRecentlyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: kPrimaryColor,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text1(
              text: 'Recently View',
              size: 18,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => const ItemImageStack(),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 18,
                  );
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class ItemImageStack extends StatelessWidget {
  const ItemImageStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            const CustomImage(
                paddingFromLeft: 0,
                paddingFromTop: 0,
                paddingFromRight: 0,
                paddingFromBottom: 0,
                height: 150,
                width: 200,
                image:
                    'https://img.freepik.com/free-photo/modern-home-creative-interior-decoration-elements_628469-518.jpg?size=626&ext=jpg&uid=R75041609&ga=GA1.1.1417712406.1684331786&semt=ais'),
            Container(
              width: 200,
              height: 60,
              decoration: const BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )),
              child: const Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text1(
                      text: 'loreni psum',
                      color: Colors.white,
                      size: 20,
                    ),
                    Text2(text: 'loreni psum dog')
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
