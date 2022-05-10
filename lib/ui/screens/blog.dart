import 'package:ecommerce/ui/widgets/blog/blog_list.dart';
import 'package:flutter/material.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key? key}) : super(key: key);
  // final blogRepository = BlogRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Блог'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ActionButtons(),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: const BlogItemWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
