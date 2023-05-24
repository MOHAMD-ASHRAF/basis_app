
import 'package:basis_app/presentation/widget/custom_image.dart';
import 'package:flutter/material.dart';

class ExploreImage extends StatelessWidget {
   ExploreImage({
   super.key,
  });
  final List<String> imageList = [
   'https://img.freepik.com/free-photo/black-white-room-empty-chair_1203-3985.jpg?size=626&ext=jpg&uid=R75041609&ga=GA1.2.1417712406.1684331786&semt=ais',
    'https://img.freepik.com/free-photo/empty-modern-room-with-furniture_23-2149178888.jpg?size=626&ext=jpg&uid=R75041609&ga=GA1.1.1417712406.1684331786&semt=ais',
    'https://img.freepik.com/free-psd/chair-pillow_176382-874.jpg?size=626&ext=jpg&uid=R75041609&ga=GA1.2.1417712406.1684331786&semt=ais',
    'https://img.freepik.com/free-photo/interior-house-sofa-couch-decor_1203-4832.jpg?size=626&ext=jpg&uid=R75041609&ga=GA1.2.1417712406.1684331786&semt=ais'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(itemBuilder: (context,index) =>ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: CustomImage(width: 150, height: 200, image: imageList[index],),
        ),
        scrollDirection: Axis.horizontal,
        itemCount: imageList.length,
        ),
      ),
    );
  }
}




