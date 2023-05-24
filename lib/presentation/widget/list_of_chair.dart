import 'package:basis_app/presentation/widget/custom_product.dart';
import 'package:flutter/material.dart';

class ListOfChair extends StatelessWidget {
   ListOfChair({Key? key}) : super(key: key);
  final List<String> imageList = [
    'https://img.freepik.com/free-photo/black-white-room-empty-chair_1203-3985.jpg?size=626&ext=jpg&uid=R75041609&ga=GA1.2.1417712406.1684331786&semt=ais',
    'https://img.freepik.com/free-photo/vintage-furniture_74190-346.jpg?size=626&ext=jpg&uid=R75041609&ga=GA1.2.1417712406.1684331786&semt=ais',
    'https://img.freepik.com/free-photo/green-vintage-sofa_1203-3142.jpg?size=626&ext=jpg&uid=R75041609&ga=GA1.2.1417712406.1684331786&semt=ais',
    'https://img.freepik.com/free-photo/still-life-minimalist-lifestyle_23-2149743871.jpg?size=626&ext=jpg&uid=R75041609&ga=GA1.2.1417712406.1684331786&semt=ais'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
       return  CustomProduct(image: imageList[index],);
      },
      scrollDirection: Axis.vertical,
      itemCount: imageList.length,
    );
  }
}
