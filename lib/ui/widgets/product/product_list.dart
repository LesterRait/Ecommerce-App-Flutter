import 'package:ecommerce/domain/bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if (state is ProductErrorState) {
          return const Center(
            child: Text('Проверьте соединение интернета'),
          );
        } else if (state is ProductLoadedState) {
          return GridView.builder(
            itemCount: state.loadedProduct.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Image.network(
                      state.loadedProduct[index].images[0].src,
                      height: 150,
                      width: 150,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      state.loadedProduct[index].name,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Text(
                      '${state.loadedProduct[index].price} ₸',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 4.3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
