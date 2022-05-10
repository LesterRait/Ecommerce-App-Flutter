import 'package:flutter/material.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          children: [
            Container(
              height: 110,
              width: 97,
              child: const Align(
                alignment: FractionalOffset(0.5, 0.9),
                child: Text(
                  'Sonoff.kz',
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
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
