import 'package:animate_do/animate_do.dart';
import 'package:basis_app/core/utils/enums.dart';
import 'package:basis_app/presentation/controller/product_bloc.dart';
import 'package:basis_app/presentation/pages/detiels_prodeuct_page.dart';
import 'package:basis_app/presentation/widget/custom_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ListOfElectronics extends StatelessWidget {
  const ListOfElectronics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      buildWhen: (previous, current) => previous.electronicsProductsState != current.electronicsProductsState,
      builder: (context, state) {
        print('build electronic');
        switch(state.electronicsProductsState) {
          case RequestState.loading:
            return const Center(child: CircularProgressIndicator());
          case RequestState.loaded:
            return FadeInLeft(
              duration: const Duration(microseconds: 600),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return CustomProduct(image: state.electronicsProducts[index].image,
                      onTap: () {
                        Navigator.pushNamed(context, DetailsProductPage.id);
                      },
                      title: state.electronicsProducts[index].title,
                      description: state.electronicsProducts[index].description,
                      price: state.electronicsProducts[index].price,
                    rating: 3,
                  );

                },
                scrollDirection: Axis.vertical,
                itemCount: state.electronicsProducts.length,
              ),
            );
          case RequestState.error:
            return SizedBox(
              height: 200,
                child: Text(state.messageElectronic));
        }
      },
    );
  }
}
