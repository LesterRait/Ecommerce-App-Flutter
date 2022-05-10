import 'package:ecommerce/ui/widgets/category/category_list.dart';
import 'package:ecommerce/ui/widgets/product/product_list.dart';
import 'package:ecommerce/ui/widgets/search.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SearchWidget(),
            SizedBox(
              height: 110,
              child: CategoryListWidget(),
            ),
            Expanded(
              child: SizedBox(
                height: double.infinity,
                child: ProductListWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
