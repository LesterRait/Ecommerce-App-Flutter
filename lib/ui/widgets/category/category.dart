import 'package:flutter/material.dart';
import 'package:ecommerce/ui/widgets/carousel.dart';
import 'package:ecommerce/ui/widgets/category/category_card.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 130,
          child: const CarouselWidget(),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 100,
          child: const CategoryCardsWidget(),
        ),
      ],
    );
  }
}
