import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce/domain/bloc/product/product_bloc.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _price = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if (state is ProductLoadedState) {
          return Slider(
            // min: 0,
            max: double.parse(state.loadedProduct[1].price),
            divisions: 5,
            value: _price,
            label: _price.round().toString(),
            onChanged: (double filterPrice) {
              setState(() {
                _price = filterPrice;
              });
            },
          );
        }
        return const SizedBox();
      },
    );
  }
}

class CategoryFilterWidget extends StatelessWidget {
  const CategoryFilterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: const [
          SliderWidget(),
          Text('Здесь будут фильтры'),
        ],
      ),
    );
  }
}
