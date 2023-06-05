import 'package:basis_app/core/utils/enums.dart';
import 'package:basis_app/presentation/pages/detiels_prodeuct_page.dart';
import 'package:basis_app/presentation/widget/custom_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/product_bloc.dart';

class ListOfJewelery extends StatelessWidget {
   const ListOfJewelery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        switch(state.jeweleryProductsState) {
          case RequestState.loading:
            return const Center(child: CircularProgressIndicator());
          case RequestState.loaded:
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return CustomProduct(image: state.jeweleryProducts[index].image,
                    onTap: () {
                      Navigator.pushNamed(context, DetailsProductPage.id);
                    },
                    title: state.jeweleryProducts[index].title,
                    description: state.jeweleryProducts[index].description,
                    price: state.jeweleryProducts[index].price);
              },
              scrollDirection: Axis.vertical,
              itemCount: state.jeweleryProducts.length,
            );
          case RequestState.error:
            return SizedBox(
                height: 200,
                child: Text(state.messageJewelery));
        }
      },
    );
  }
}
