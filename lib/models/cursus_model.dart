import 'package:json_annotation/json_annotation.dart';

part 'cursus_model.g.dart';

@JsonSerializable()
class CursusModel {
  final int id;
  final String name;
  final String slug;
  final String kind;
  CursusModel({
    required this.id,
    required this.name,
    required this.kind,
    required this.slug,
  });

  factory CursusModel.fromJson(Map<String, dynamic> json) =>
      _$CursusModelFromJson(json);

  Map<String, dynamic> toJson() => _$CursusModelToJson(this);
}
