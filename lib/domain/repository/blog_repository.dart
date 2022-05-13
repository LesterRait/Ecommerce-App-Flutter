import 'package:ecommerce/domain/entity/blog.dart';
import 'package:ecommerce/domain/provider/blog_provider.dart';

class BlogRepository {
  final BlogProvider _blogProvider = BlogProvider();
  Future<List<Blog>> getAllBlog() => _blogProvider.getBlog();
}
