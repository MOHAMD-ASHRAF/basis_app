import 'package:basis_app/core/color_const.dart';
import 'package:basis_app/core/services/services_locator.dart';
import 'package:basis_app/presentation/controller/product_bloc.dart';
import 'package:basis_app/presentation/widget/TapBarView.dart';
import 'package:basis_app/presentation/widget/banner_image.dart';
import 'package:basis_app/presentation/widget/list_of_electronics.dart';
import 'package:basis_app/presentation/widget/list_of_jewelery.dart';
import 'package:basis_app/presentation/widget/list_of_table.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProductBloc>()..add(GetElectronicsProductsEvent())..add(GetJeweleryProductsEvent()),
      child: Scaffold(
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
        body: Column(
          children: [
            const BannerImage(),
            Expanded(
              child: SingleChildScrollView(
                child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        const TapBarView(),
                        SizedBox(
                          height: 450,
                          child: TabBarView(children: [
                            const ListOfElectronics(),
                            const ListOfJewelery(),
                            ListOfTable(),
                          ]),
                        ),
                      ],
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


