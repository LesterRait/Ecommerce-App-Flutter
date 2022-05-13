import 'package:ecommerce/domain/bloc/product/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce/ui/screens/detail/product_detail.dart';

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
          return SizedBox(
            height: MediaQuery.of(context).size.height + 140,
            child: GridView.builder(
              // scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.loadedProduct.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => ProductDetailScreen(
                          id: state.loadedProduct[index],
                        ),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Image.network(
                        state.loadedProduct[index].images[0].src,
                        height: 100,
                        width: 100,
                        fit: BoxFit.contain,
                      ),
                      Text(
                        state.loadedProduct[index].name,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '${state.loadedProduct[index].price} ₸',
                            textAlign: TextAlign.center,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.shopping_bag),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 4 / 4.3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
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
