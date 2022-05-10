part of 'blog_bloc.dart';

abstract class BlogEvent {}

class BlogLoadEvent extends BlogEvent {}

class BlogClearEvent extends BlogEvent {}
