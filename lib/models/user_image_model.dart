import 'package:json_annotation/json_annotation.dart';
import 'package:swifty_companion/models/image_versions_model.dart';

part 'user_image_model.g.dart';

@JsonSerializable()
class UserImageModel {
  final String link;
  final ImageVersionsModel versions;
  UserImageModel({
    required this.link,
    required this.versions,
  });

  factory UserImageModel.fromJson(Map<String, dynamic> json) =>
      _$UserImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserImageModelToJson(this);
}
