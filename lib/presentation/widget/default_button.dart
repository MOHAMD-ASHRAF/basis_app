import 'package:basis_app/core/color_const.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, required this.width, required this.text, this.onTap, this.color = kPrimaryColor}) : super(key: key);
  final double width;
  final String text;
  final void Function()? onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
             BoxShadow(
              blurRadius: 3,
              color: Colors.grey
            )
          ]
        ),
        width: width,
        height: 35,
        child: Center(
         child: Text(text,style: const TextStyle(color: Colors.white,fontSize: 18),),
        ),
      ),
    );
  }
}
