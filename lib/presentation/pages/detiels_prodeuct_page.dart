
import 'package:basis_app/presentation/widget/custom_details_data.dart';

import 'package:flutter/material.dart';
import '../widget/list_recently_view.dart';

class DetailsProductPage extends StatelessWidget {
  const DetailsProductPage({Key? key}) : super(key: key);
  static String id = 'DetailsProductPage';

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
        body: const Column(
          children: [
            CustomDetailsData(),
           Expanded(
             child: Column(
               children: [
                  ListRecentlyView(),
               ],
             ),
           )
          ],
        ));
  }
}


