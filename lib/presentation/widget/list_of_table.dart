import 'package:basis_app/presentation/widget/custom_product.dart';
import 'package:flutter/material.dart';

class ListOfTable extends StatelessWidget {
   ListOfTable({Key? key}) : super(key: key);
  final List<String> imageList = [
    'https://img.freepik.com/free-photo/beautiful-burning-candles-interior-room-scandinavian-style_169016-13289.jpg?size=626&ext=jpg&uid=R75041609&ga=GA1.2.1417712406.1684331786&semt=ais',
    'https://img.freepik.com/free-photo/modern-home-creative-interior-decoration-elements_628469-518.jpg?size=626&ext=jpg&uid=R75041609&ga=GA1.1.1417712406.1684331786&semt=ais',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context,index){
       return  CustomProduct(image: imageList[index],);
      },
      scrollDirection: Axis.vertical,
      itemCount: imageList.length,
    );
  }
}
