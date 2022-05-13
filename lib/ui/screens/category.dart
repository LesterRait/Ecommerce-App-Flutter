import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            // const SearchWidget(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: const Card(
                color: Colors.black,
                child: Text('sonoff.kz'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
