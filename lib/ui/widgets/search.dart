import 'package:ecommerce/domain/bloc/product_bloc.dart';
import 'package:ecommerce/domain/repository/product_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  void initState() {
    context.read<ProductBloc>().add(ProductLoadEvent(name: ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Поиск',
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                ),
                onChanged: (value) {
                  context
                      .read<ProductBloc>()
                      .add(ProductLoadEvent(name: value));
                },
              ),
            ],
          );
          // if (state is ProductLoadingState) {
          //   return const Center(
          //     child: CircularProgressIndicator(),
          //   );
          // }
          // // if (state is ProductLoadedState) {
          // //   return Text('${state.loadedProduct.length}');
          // // }
          // // if (state is ProductErrorState) {
          // //   return const Text('Проверьте подключение к сети');
          // // }
          // return Container();
        },
      ),
    );
  }
}
