import 'package:flutter/material.dart';

class BlogDetailScreen extends StatefulWidget {
  final blog;
  const BlogDetailScreen({Key? key, required this.blog}) : super(key: key);

  @override
  State<BlogDetailScreen> createState() => _BlogDetailScreenState();
}

class _BlogDetailScreenState extends State<BlogDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.blog.title.rendered}',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          child: Column(
            children: [
              Text('${widget.blog.content.rendered}'),
            ],
          ),
        ),
      ),
    );
  }
}
