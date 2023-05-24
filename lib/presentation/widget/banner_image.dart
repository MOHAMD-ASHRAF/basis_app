import 'package:basis_app/core/color_const.dart';
import 'package:basis_app/presentation/widget/explore_image.dart';
import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 270,
      color: kPrimaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Padding(
            padding: EdgeInsets.only(left: 20,top: 20,bottom: 10),
            child: Text('Explore',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),),
          ),
          ExploreImage()
        ],
      ),
    );
  }
}
