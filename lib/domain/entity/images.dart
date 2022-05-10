import 'package:json_annotation/json_annotation.dart';

part 'images.g.dart';

@JsonSerializable()
class Images {
  final String src;

  Images({required this.src});

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
  Map<String, dynamic> toJson() => _$ImagesToJson((this));
}
