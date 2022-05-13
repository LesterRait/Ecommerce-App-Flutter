import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  final id;
  const ProductDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.id.name}'),
      ),
      body: Column(
        children: [
          Image.network(
            widget.id.images[0].src,
            height: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              widget.id.description,
            ),
          ),
        ],
      ),
    );
  }
}
