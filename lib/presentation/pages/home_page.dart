import 'package:basis_app/core/color_const.dart';
import 'package:basis_app/presentation/widget/TapBarView.dart';
import 'package:basis_app/presentation/widget/banner_image.dart';
import 'package:basis_app/presentation/widget/list_of_electronics.dart';
import 'package:basis_app/presentation/widget/list_of_jewelery.dart';
import 'package:basis_app/presentation/widget/list_of_men_clothing.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    print('bulidinnng');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.search),
          ),
        ],
      ),
      body: const Column(
        children: [
          BannerImage(),
          Expanded(
            child: SingleChildScrollView(
              child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      TapBarView(),
                      SizedBox(
                        height: 450,
                        child: TabBarView(children: [
                          ListOfElectronics(),
                          ListOfJewelery(),
                          ListOfMenClothing(),
                        ]),
                      ),
                    ],
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}


