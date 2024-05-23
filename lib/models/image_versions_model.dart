import 'package:json_annotation/json_annotation.dart';

part 'image_versions_model.g.dart';

@JsonSerializable()
class ImageVersionsModel {
  final String large;
  final String medium;
  final String small;
  final String micro;

  ImageVersionsModel({
    required this.large,
    required this.medium,
    required this.micro,
    required this.small,
  });

  factory ImageVersionsModel.fromJson(Map<String, dynamic> json) =>
      _$ImageVersionsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageVersionsModelToJson(this);
}
