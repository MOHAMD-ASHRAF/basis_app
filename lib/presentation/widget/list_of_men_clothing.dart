import 'package:basis_app/core/utils/enums.dart';
import 'package:basis_app/presentation/controller/product_bloc.dart';
import 'package:basis_app/presentation/pages/detiels_prodeuct_page.dart';
import 'package:basis_app/presentation/widget/custom_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfMenClothing extends StatelessWidget {
   ListOfMenClothing({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
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
                    price: state.menClothingProducts[index].price);
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
