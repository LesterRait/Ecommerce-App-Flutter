import 'package:json_annotation/json_annotation.dart';

part 'blog.g.dart';

@JsonSerializable()
class Blog {
  final int id;
  final DateTime date;
  final RenderedEntity title;
  final RenderedEntity content;

  Blog({
    required this.id,
    required this.date,
    required this.title,
    required this.content,
  });
  factory Blog.fromJson(Map<String, dynamic> json) => _$BlogFromJson(json);
  Map<String, dynamic> toJson() => _$BlogToJson(this);
}

// Rendered Wordpress API

@JsonSerializable()
class RenderedEntity {
  final String rendered;

  RenderedEntity({
    required this.rendered,
  });
  factory RenderedEntity.fromJson(Map<String, dynamic> json) =>
      _$RenderedEntityFromJson(json);
  Map<String, dynamic> toJson() => _$RenderedEntityToJson(this);
}
