import 'package:flutter/material.dart';
import 'package:ecommerce/ui/screens/detail/category_detail.dart';

class CategoryCardsWidget extends StatelessWidget {
  const CategoryCardsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) => const CategoryDetailScreen(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: 80,
                width: 80,
                child: const Align(
                  alignment: FractionalOffset(0.5, 0.9),
                  child: Text(
                    'Sonoff.kz',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                decoration: const BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
          ],
        );
      },
    );
  }
}
