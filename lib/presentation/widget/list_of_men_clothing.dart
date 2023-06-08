import 'package:basis_app/core/utils/enums.dart';
import 'package:basis_app/presentation/controller/product_bloc.dart';
import 'package:basis_app/presentation/pages/detiels_prodeuct_page.dart';
import 'package:basis_app/presentation/widget/custom_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfMenClothing extends StatelessWidget {
   const ListOfMenClothing({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      buildWhen: (previous, current) => previous.menClothingProductsState != current.menClothingProductsState,
      builder: (context, state) {
        print('build mens');
        switch(state.menClothingProductsState) {
          case RequestState.loading:
            return const Center(child: CircularProgressIndicator());
          case RequestState.loaded:
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return CustomProduct(image: state.menClothingProducts[index].image,
                    onTap: () {
                      Navigator.pushNamed(context, DetailsProductPage.id);
                    },
                    title: state.menClothingProducts[index].title,
                    description: state.menClothingProducts[index].description,
                    price: state.menClothingProducts[index].price, rating: 1,);
              },
              scrollDirection: Axis.vertical,
              itemCount: state.menClothingProducts.length,
            );
          case RequestState.error:
            return SizedBox(
                height: 200,
                child: Text(state.messageMenClothing));
        }
      },
    );
  }
}
