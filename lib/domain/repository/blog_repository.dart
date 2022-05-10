import 'dart:convert';
import 'dart:io';

import 'package:ecommerce/configuration/configuration.dart';
import 'package:ecommerce/domain/entity/blog.dart';
import 'package:http/http.dart' as http;

class BlogProvider {
  final client = HttpClient();
  final config = Configuration();

  Future<List<Blog>> getBlog() async {
    final response =
        await http.get(Uri.parse('${config.url}wp-json/wp/v2/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> blogJson = json.decode(response.body);
      return blogJson.map((json) => Blog.fromJson(json)).toList();
    } else {
      throw Exception('Error fetching users');
    }
  }
}

class BlogRepository {
  final BlogProvider _blogProvider = BlogProvider();
  Future<List<Blog>> getAllBlog() => _blogProvider.getBlog();
}
