import 'package:ecommerce/ui/widgets/category/category.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/ui/widgets/search.dart';

import '../widgets/product/product_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SearchWidget(),
            CategoryListWidget(),
            SizedBox(height: 20),
            ProductListWidget(),
          ],
        ),
      ),
    );
  }
}
