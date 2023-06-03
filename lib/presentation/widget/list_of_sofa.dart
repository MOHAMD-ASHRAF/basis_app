import 'package:basis_app/presentation/widget/custom_product.dart';
import 'package:flutter/material.dart';

class ListOfSofa extends StatelessWidget {
   ListOfSofa({Key? key}) : super(key: key);
  final List<String> imageList = [
    'https://img.freepik.com/free-photo/contemporary-living-room-interior-design-with-white-sofa_53876-126774.jpg?size=626&ext=jpg&uid=R75041609&ga=GA1.2.1417712406.1684331786&semt=ais',
    'https://img.freepik.com/free-photo/red-pillows-indoor-cushion-modern_1203-4799.jpg?size=626&ext=jpg&uid=R75041609&ga=GA1.2.1417712406.1684331786&semt=ais',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context,index){
       return  CustomProduct(image: imageList[index],);
      },
      scrollDirection: Axis.vertical,
      itemCount: imageList.length,
    );
  }
}
