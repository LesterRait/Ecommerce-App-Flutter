// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Blog _$BlogFromJson(Map<String, dynamic> json) => Blog(
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      title: RenderedEntity.fromJson(json['title'] as Map<String, dynamic>),
      content: RenderedEntity.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BlogToJson(Blog instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'title': instance.title,
      'content': instance.content,
    };

RenderedEntity _$RenderedEntityFromJson(Map<String, dynamic> json) =>
    RenderedEntity(
      rendered: json['rendered'] as String,
    );

Map<String, dynamic> _$RenderedEntityToJson(RenderedEntity instance) =>
    <String, dynamic>{
      'rendered': instance.rendered,
    };
