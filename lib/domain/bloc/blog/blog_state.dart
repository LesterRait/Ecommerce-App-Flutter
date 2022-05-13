part of 'blog_bloc.dart';

abstract class BlogState {}

class BlogInitialState extends BlogState {}

class BlogLoadingState extends BlogState {}

class BlogLoadedState extends BlogState {
  List<dynamic> loadedBlog;
  BlogLoadedState({required this.loadedBlog});
}

class BlogErrorState extends BlogState {}
