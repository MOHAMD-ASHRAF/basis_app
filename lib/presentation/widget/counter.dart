import 'package:basis_app/presentation/widget/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.minus)),
        SizedBox(width: 10,),
        Text1(text: '7',color: Colors.grey,),
        SizedBox(width: 10,),
        IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.add_circled_solid)),

      ],
    );
  }
}