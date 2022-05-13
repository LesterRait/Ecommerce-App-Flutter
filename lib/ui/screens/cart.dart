import 'package:flutter/material.dart';
import 'package:ecommerce/ui/widgets/total_price.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 18.0,
          right: 18.0,
          top: 28.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Ваша корзина пуста'),
            TotalPriceWidget(),
          ],
        ),
      ),
    );
  }
}
